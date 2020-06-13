///@func gjtTestRenderTemplate()

var expected, got;

// Fixtures
var vars = ds_map_create();
var gvars = ds_map_create();

// Basic test
ds_map_clear(vars);
ds_map_clear(gvars);
expected = "Hello world!\r\nHello again!";
got = renderTemplate("Hello world!\r\nHello again!", vars);
assert_equal(got, expected, "renderTemplate() basic");

// Simple replacement test
ds_map_clear(vars);
ds_map_clear(gvars);
vars[? "name"] = "Alice";
vars[? "score"] = 583;
expected = "Hello Alice!\r\nYour score is 583.";
got = renderTemplate("Hello @name@!\r\nYour score is @score@.", vars);
assert_equal(got, expected, "renderTemplate() simple replacement");

// Double replacement test
ds_map_clear(vars);
ds_map_clear(gvars);
vars[? "name"] = "Bob";
vars[? "score"] = 907;
gvars[? "score"] = 583;
expected = "Hello Bob!\r\nYour score is 907.";
got = renderTemplate("Hello @name@!\r\nYour score is @score@.", vars, gvars);
assert_equal(got, expected, "renderTemplate() double replacement");

// Cleanup
ds_map_destroy(vars);
ds_map_destroy(gvars);
