function chararray_add(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10, argument11, argument12, argument13) {
	// ARGUMENTS:
	/*
	//OLD
	0 - Skin
	1 - Eyes
	2 - Hair
	3 - Beard
	4 - Brow
	5 - Hair Color
	6 - Grid x
	7 - Grid Y
	8 - Mask Name
	9 - Kills
	10 - Deaths
	11 - Candy
	12 - Candy Collected
	//NEW
	0 - Empty
	1 - Empty
	2 - Empty
	3 - Save Spot x
	4 - Save Spot Y
	5 - Last Walked
	6 - Grid x
	7 - Grid Y
	8 - Mask Name
	9 - Kills
	10 - Deaths
	11 - Candy
	12 - Candy Collected
	*/
	//CharArray_add(charslot,Hair,Skin,Beard,Brow,Eye,Haircolor,Extra,Extra,Mask Name,Kills,Deaths,Candy,Candy Collected)

	charArray[argument0,0] = argument1
	charArray[argument0,1] = argument2
	charArray[argument0,2] = argument3
	charArray[argument0,3] = argument4
	charArray[argument0,4] = argument5
	charArray[argument0,5] = argument6
	charArray[argument0,6] = argument7
	charArray[argument0,7] = argument8
	charArray[argument0,8] = argument9
	charArray[argument0,9] = argument10
	charArray[argument0,10] = argument11
	charArray[argument0,11] = argument12
	charArray[argument0,12] = argument13
	/*
	global.charArray[argument0,7] = argument8
	global.charArray[argument0,8] = argument9
	global.charArray[argument0,9] = argument10
	global.charArray[argument0,10] = argument11
	global.charArray[argument0,11] = argument12
	global.charArray[argument0,12] = argument13
	global.charArray[argument0,13] = argument14
	global.charArray[argument0,14] = argument15


/* end chararray_add */
}
