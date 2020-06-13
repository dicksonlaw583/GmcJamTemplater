///@func labelFromRating(rating)
///@param rating The numeric 1-5 rating from the Jam Player
///@desc Return N/A-Poor-OK-Good-Great for the range 1-5
switch (argument0) {
	case 2: return "Poor";
	case 3: return "OK";
	case 4: return "Good";
	case 5: return "Great";
}
return "N/A";
