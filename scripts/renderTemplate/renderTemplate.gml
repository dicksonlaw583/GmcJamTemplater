///@func renderTemplate(template, variables, ...)
///@param template Template string
///@param variables Map containing varname-varval pairings. You can specify additional maps as fallbacks.
///@desc Fill in the template with the given variable values and return the result
var buffer = buffer_create(64, buffer_grow, 1);
var template = argument[0];

// Scan for templates
do {
	var atPos = string_pos("@", template);
	if (atPos > 0) {
		buffer_write(buffer, buffer_text, string_copy(template, 1, atPos-1));
		template = string_delete(template, 1, atPos);
		atPos = string_pos("@", template);
		if (atPos > 0) {
			var varTempName = string_copy(template, 1, atPos-1);
			for (var i = 1; i < argument_count; ++i) {
				if (ds_map_exists(argument[i], varTempName)) {
					buffer_write(buffer, buffer_text, string(ds_map_find_value(argument[i], varTempName)));
					break;
				}
			}
			template = string_delete(template, 1, atPos);
		}
	}
} until (atPos == 0);
buffer_write(buffer, buffer_string, template);

// Read back the result
buffer_seek(buffer, buffer_seek_start, 0);
var rendered = buffer_read(buffer, buffer_string);

// Done
buffer_delete(buffer);
return rendered;
