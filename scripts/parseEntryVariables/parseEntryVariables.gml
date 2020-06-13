///@func parseEntryVariables(@targetWithLocals, original)
///@param @targetWithLocals Target map to copy the original entry into and also add variables found in the comment
///@param original Original entry's JSON map
///@desc Parse variable directives in the original JSON map, and add the found variables to the target map. Also strips the directives when done.

var targetWithLocals = argument0,
	original = argument1;

// Parse the comment
var comment = original[? "Comment"];
var buffer = buffer_create(1024, buffer_grow, 1);

// Split into lines
do {
	var crlfPos = string_pos("\r\n", comment);
	if (crlfPos > 0) {
		var currentLine = string_copy(comment, 1, crlfPos-1);
		// See if it's a #var=value# line (first and last characters are #, contains a =)
		// If it is, set the variable's entry in the target map
		var equalPos = string_pos("=", currentLine);
		if (string_char_at(currentLine, 1) == "#" && string_char_at(currentLine, crlfPos-1) == "#" && equalPos > 0) {
			var varname = string_copy(currentLine, 2, equalPos-2);
			var varval = string_copy(currentLine, equalPos+1, crlfPos-2-equalPos);
			targetWithLocals[? varname] = valueIsReal(varval) ? real(varval) : varval;
		}
		// If not, write the line to buffer
		else {
			buffer_write(buffer, buffer_text, currentLine);
			buffer_write(buffer, buffer_text, "\r\n");
		}
		// Clip off processed portion of the line
		comment = string_delete(comment, 1, crlfPos+1);
	}
} until (crlfPos == 0)
buffer_write(buffer, buffer_string, comment);

// Overwrite the comment in the target
buffer_seek(buffer, buffer_seek_start, 0);
targetWithLocals[? "Comment"] = buffer_read(buffer, buffer_string);

// Cleanup
buffer_delete(buffer);
