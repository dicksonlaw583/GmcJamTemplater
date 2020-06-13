///@func scanForeach(currentLine, rankedList, unrankedList)
///@param currentLine The line to look for a foreach directive in
///@param rankedList List of ranked entries
///@param unrankedList List of unranked entries
///@desc Scan for a foreach directive; return array of entries if found; return undefined if not found

// Capture arguments
var currentLine = argument0,
	rankedList = argument1,
	unrankedList = argument2;
var siz, first, last, ellipsisPos, sgn, results, ii;

// #foreach#
if (currentLine == "#foreach#") {
	siz = ds_list_size(rankedList);
	results = array_create(siz);
	for (var i = siz-1; i >= 0; --i) {
		results[i] = rankedList[| i];
	}
	return results;
}
// #foreach unranked#
else if (currentLine == "#foreach unranked#") {
	siz = ds_list_size(unrankedList);
	results = array_create(siz);
	for (var i = siz-1; i >= 0; --i) {
		results[i] = unrankedList[| i];
	}
	return results;
}
// #foreach unranked x...y#
else if (string_pos("#foreach unranked ", currentLine) == 1) {
	siz = ds_list_size(unrankedList);
	ellipsisPos = string_pos("...", currentLine);
	first = real(string_copy(currentLine, 19, ellipsisPos-19));
	last = real(string_copy(currentLine, ellipsisPos+3, string_length(currentLine)-ellipsisPos-3));
	if (first < 0) first = siz+first; else first -= 1;
	if (last < 0) last = siz+last; else last -= 1;
	siz = abs(last-first)+1;
	sgn = sign(last-first);
	results = array_create(siz);
	ii = first;
	for (var i = 0; i < siz; ++i) {
		results[i] = unrankedList[| ii];
		ii += sgn;
	}
	return results;
}
// #foreach x...y#
else if (string_pos("#foreach ", currentLine) == 1) {
	siz = ds_list_size(rankedList);
	ellipsisPos = string_pos("...", currentLine);
	first = real(string_copy(currentLine, 9, ellipsisPos-9));
	last = real(string_copy(currentLine, ellipsisPos+3, string_length(currentLine)-ellipsisPos-3));
	if (first < 0) first = siz+first; else first -= 1;
	if (last < 0) last = siz+last; else last -= 1;
	siz = abs(last-first)+1;
	sgn = sign(last-first);
	results = array_create(siz);
	ii = first;
	for (var i = 0; i < siz; ++i) {
		results[i] = rankedList[| ii];
		ii += sgn;
	}
	return results;
}

// Not a foreach directive
return undefined;
