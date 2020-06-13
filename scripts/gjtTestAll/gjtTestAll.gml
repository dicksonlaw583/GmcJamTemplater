///@func gjtTestAll()
var timeA, timeB;
timeA = current_time;

/* Tests here >> */
gjtTestParseEntryVariables();
gjtTestRenderTemplate();
gjtTestScanForeach();
/* << Tests here */

timeB = current_time;
show_debug_message("GMC Jam Templater self-test complete in " + string(timeB-timeA) + "ms.");