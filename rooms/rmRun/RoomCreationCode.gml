gjtTestAll();
var jamdataFilename = get_open_filename("GMC Jam Player Data|jamdata.json", "jamdata.json");
if (jamdataFilename != "") { 
	gjtRun(working_directory + "template.txt", jamdataFilename);
}
game_end();
