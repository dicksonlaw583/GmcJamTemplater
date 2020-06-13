///@func gjtRun(templateFile, jamJsonFile)
///@param templateFile The template file to use
///@param jamJsonFile The jamdata.json from the Jam Player
///@desc Render the given template and Jam JSON data files to the clipboard

// Load the Jam JSON file
var jamJsonData = json_load(argument1);

// Global variables
var globalVariables = ds_map_create();
globalVariables[? "JamTitle"] = jamJsonData[? "Title"];
globalVariables[? "JamTheme"] = jamJsonData[? "LowerTheme"];
var nRankedEntries = ds_list_size(jamJsonData[? "Ranking"]);
globalVariables[? "RankedEntries"] = nRankedEntries;
globalVariables[? "UnrankedEntries"] = ds_list_size(jamJsonData[? "Unranked"]);
globalVariables[? "BestThemeName"] = jamJsonData[? "BestLowerThemeName"];
globalVariables[? "BestConceptName"] = jamJsonData[? "BestConceptName"];
globalVariables[? "BestPresentationName"] = jamJsonData[? "BestPresentationName"];
globalVariables[? "BestStoryName"] = jamJsonData[? "BestStoryName"];
globalVariables[? "BestDevlogName"] = jamJsonData[? "BestDevlogName"];

// Entry variables
var entryVariables = ds_list_create();
for (var i = 0; i < nRankedEntries; ++i) {
	var entry = ds_map_create();
	var originalEntry = json_get(jamJsonData, "Ranking", i);
	ds_map_copy(entry, originalEntry);
	entry[? "Theme"] = entry[? "LowerTheme"];
	entry[? "OverallLabel"] = labelFromRating(entry[? "Overall"]);
	entry[? "ThemeLabel"] = labelFromRating(entry[? "Theme"]);
	entry[? "ConceptLabel"] = labelFromRating(entry[? "Concept"]);
	entry[? "PresentationLabel"] = labelFromRating(entry[? "Presentation"]);
	entry[? "StoryLabel"] = labelFromRating(entry[? "Story"]);
	entry[? "Rank"] = i+1;
	parseEntryVariables(entry, originalEntry);
	ds_list_add(entryVariables, entry);
	ds_list_mark_as_map(entryVariables, i);
}

// Preprocess trigger
__JAM_PREPROCESS__(entryVariables, globalVariables);

// Per-entry processing
for (var i = 0; i < nRankedEntries; ++i) {
	__JAM_PER_ENTRY__(entryVariables[| i], globalVariables);
}

// Sort ranked entries and save (if applicable)
if (ds_map_exists(globalVariables, "SortByScore") && globalVariables[? "SortByScore"]) {
	// Capture entry variables in the sorting grid
	// Column 0: Original map
	// Column 1: Map with additional parsed variables
	// Column 2: Ranking score (if enabled)
	var sortingGrid = ds_grid_create(3, nRankedEntries);
	for (var i = nRankedEntries-1; i >= 0; --i) {
		sortingGrid[# 0, i] = json_get(jamJsonData, "Ranking", i);
		sortingGrid[# 1, i] = entryVariables[| i];
		sortingGrid[# 2, i] = ds_map_find_value(sortingGrid[# 1, i], "Score");
	}
	// Sort
	ds_grid_sort(sortingGrid, 2, false);
	// Bring results back to original jam entry data and loaded entry data
	for (var i = nRankedEntries-1; i >= 0; --i) {
		ds_list_replace(jamJsonData[? "Ranking"], i, sortingGrid[# 0, i]);
		ds_list_mark_as_map(jamJsonData[? "Ranking"], i);
		ds_list_replace(entryVariables, i, sortingGrid[# 1, i]);
		ds_list_mark_as_map(entryVariables, i);
		ds_map_set(entryVariables[| i], "Rank", i+1);
	}
	// Done sorting
	ds_grid_destroy(sortingGrid);
}

// Post-processing
__JAM_POSTPROCESS__(entryVariables, globalVariables);

// Render main template
var finalBuffer = buffer_create(4096, buffer_grow, 1);
var f = file_text_open_read(argument0);
// For each line in the main template
while (!file_text_eof(f)) {
	var currentLine = file_text_read_string(f);
	file_text_readln(f);
	// Current line is a #foreach# directive
	var foundForeach = scanForeach(currentLine, entryVariables, jamJsonData[? "Unranked"]);
	if (is_array(foundForeach)) {
		var foreachTemplate = scanForeachTemplate(f);
		var foundForeachCount = array_length_1d(foundForeach);
		for (var i = 0; i < foundForeachCount; ++i) {
			var doneLine = renderTemplate(foreachTemplate, foundForeach[i], globalVariables);
			buffer_write(finalBuffer, buffer_text, doneLine);
		}
	}
	// Normal line
	else {
		var doneLine = renderTemplate(currentLine, globalVariables);
		buffer_write(finalBuffer, buffer_text, doneLine);
		buffer_write(finalBuffer, buffer_text, "\r\n");
	}
}
file_text_close(f);

// Copy to clipboard
buffer_write(finalBuffer, buffer_u8, 0);
buffer_seek(finalBuffer, buffer_seek_start, 1);
clipboard_set_text(buffer_read(finalBuffer, buffer_string));

// Cleanup
json_destroy(jamJsonData);
ds_map_destroy(globalVariables);
ds_list_destroy(entryVariables);
buffer_delete(finalBuffer);
