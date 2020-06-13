///@func scanForeachTemplate(f)
///@param f The file handle to keep searching for a foreach template fragment in
///@desc Continue scanning the file until #endforeach# is found, then return all lines found in between as a single string

// Setup
var f = argument0;
var buffer = buffer_create(64, buffer_grow, 1);
var currentLine = "";

// Scan until #endforeach# is found
while (!file_text_eof(f) && currentLine != "#endforeach#") {
	currentLine = file_text_read_string(f);
	file_text_readln(f);
	if (currentLine == "#endforeach#") {
		buffer_write(buffer, buffer_u8, 0);
	} else {
		buffer_write(buffer, buffer_text, currentLine);
		buffer_write(buffer, buffer_text, "\r\n");
	}
}

// Done
buffer_seek(buffer, buffer_seek_start, 0);
var template = buffer_read(buffer, buffer_string);
buffer_delete(buffer);
return template;
