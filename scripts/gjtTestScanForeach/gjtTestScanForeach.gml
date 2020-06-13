///@func gjtTestScanForeach()

// Fixtures
var ranked, unranked;
ranked = ds_list_create();
ds_list_add(ranked, "1", "2", "3", "4", "5");
unranked = ds_list_create();
ds_list_add(unranked, "11", "22", "33", "44", "55");

// Tests
assert_equal(scanForeach("Nothing", ranked, unranked), undefined, "scanForeach nothing");
assert_equal(scanForeach("#foreach#", ranked, unranked), ["1", "2", "3", "4", "5"], "scanForeach #foreach#");
assert_equal(scanForeach("#foreach unranked#", ranked, unranked), ["11", "22", "33", "44", "55"], "scanForeach #foreach unranked#");
assert_equal(scanForeach("#foreach 1...3#", ranked, unranked), ["1", "2", "3"], "scanForeach #foreach 1...3#");
assert_equal(scanForeach("#foreach -1...-3#", ranked, unranked), ["5", "4", "3"], "scanForeach #foreach -1...-3#");
assert_equal(scanForeach("#foreach unranked 1...3#", ranked, unranked), ["11", "22", "33"], "scanForeach #foreach unranked 1...3#");
assert_equal(scanForeach("#foreach unranked -1...-3#", ranked, unranked), ["55", "44", "33"], "scanForeach #foreach unranked -1...-3#");

// Cleanup
ds_list_destroy(ranked);
ds_list_destroy(unranked);
