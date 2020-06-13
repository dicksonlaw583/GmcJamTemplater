///@func gjtTestParseEntryVariables()

var got, source;

// Basic test
got = ds_map_create();
source = json_decode(@'{
	"Title": "Shibboleth",
	"Authors": "FrostyCat",
	"DirectoryName": "Shibboleth by FrostyCat",
	"ExecutablePath": "Shibboleth.exe",
	"PostJamPath": "AFTERJAM.txt",
	"ReadmePath": "README.html",
	"IsEmergencyReadme": false,
	"AfterwordPath": "AFTERWORD.txt",
	"Overall": 1,
	"UpperTheme": 1,
	"LowerTheme": 1,
	"Concept": 1,
	"Presentation": 1,
	"Story": 1,
	"Comment": "Some comment"
	}');
ds_map_copy(got, source);
parseEntryVariables(got, source);
assert_equal(ds_map_size(got), 15, "parseEntryVariables basic test size");
assert_equal(got[? "Comment"], "Some comment", "parseEntryVariables basic test comment");

// Simple test
ds_map_destroy(got);
json_destroy(source);
got = ds_map_create();
source = json_decode(@'{
	"Title": "Shibboleth",
	"Authors": "FrostyCat",
	"DirectoryName": "Shibboleth by FrostyCat",
	"ExecutablePath": "Shibboleth.exe",
	"PostJamPath": "AFTERJAM.txt",
	"ReadmePath": "README.html",
	"IsEmergencyReadme": false,
	"AfterwordPath": "AFTERWORD.txt",
	"Overall": 1,
	"UpperTheme": 1,
	"LowerTheme": 1,
	"Concept": 1,
	"Presentation": 1,
	"Story": 1,
	"Comment": "#foo=5#\r\n#bar=baz#\r\nAnother comment\r\nMore stuff"
	}');
ds_map_copy(got, source);
parseEntryVariables(got, source);
assert_equal(ds_map_size(got), 17, "parseEntryVariables simple test size");
assert_equal(got[? "foo"], 5, "parseEntryVariables simple test foo");
assert_equal(got[? "bar"], "baz", "parseEntryVariables simple test bar");
assert_equal(got[? "Comment"], "Another comment\r\nMore stuff", "parseEntryVariables simple test comment");

// Cleanup
ds_map_destroy(got);
json_destroy(source);
