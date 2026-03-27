function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = 2; // Me
	global.__objectDepths[1] = 0; // Solid_noslope
	global.__objectDepths[2] = 0; // Solid_w
	global.__objectDepths[3] = 0; // Solid_w_noslope
	global.__objectDepths[4] = 2; // Box
	global.__objectDepths[5] = 0; // Control
	global.__objectDepths[6] = 1; // Item
	global.__objectDepths[7] = 0; // Lightsource
	global.__objectDepths[8] = 1; // Obj_light
	global.__objectDepths[9] = 0; // Spawner
	global.__objectDepths[10] = 10; // Boss
	global.__objectDepths[11] = 0; // object17
	global.__objectDepths[12] = 0; // Dummy_solid
	global.__objectDepths[13] = 5; // Poop
	global.__objectDepths[14] = 0; // Dummy_obj
	global.__objectDepths[15] = 0; // Solid_plat
	global.__objectDepths[16] = 1; // Goal
	global.__objectDepths[17] = 0; // Dummy_four_object
	global.__objectDepths[18] = 2; // Enemy
	global.__objectDepths[19] = 0; // Dummy_two_object
	global.__objectDepths[20] = 1; // Part
	global.__objectDepths[21] = 4; // Door_obj
	global.__objectDepths[22] = 4; // Container
	global.__objectDepths[23] = 1; // Projectile
	global.__objectDepths[24] = 0; // Other_Solid_obj
	global.__objectDepths[25] = 1; // ProjEn
	global.__objectDepths[26] = 0; // Dummy_object
	global.__objectDepths[27] = 100; // Overworld_obj
	global.__objectDepths[28] = 100; // Elevator_obj
	global.__objectDepths[29] = 0; // Solid_moveable
	global.__objectDepths[30] = 0; // Arcade_control
	global.__objectDepths[31] = 0; // Dummy_three_object
	global.__objectDepths[32] = 5; // Arcade_dummy_object
	global.__objectDepths[33] = 0; // Solid
	global.__objectDepths[34] = 0; // Title_obj


	global.__objectNames[0] = "Me";
	global.__objectNames[1] = "Solid_noslope";
	global.__objectNames[2] = "Solid_w";
	global.__objectNames[3] = "Solid_w_noslope";
	global.__objectNames[4] = "Box";
	global.__objectNames[5] = "Control";
	global.__objectNames[6] = "Item";
	global.__objectNames[7] = "Lightsource";
	global.__objectNames[8] = "Obj_light";
	global.__objectNames[9] = "Spawner";
	global.__objectNames[10] = "Boss";
	global.__objectNames[11] = "object17";
	global.__objectNames[12] = "Dummy_solid";
	global.__objectNames[13] = "Poop";
	global.__objectNames[14] = "Dummy_obj";
	global.__objectNames[15] = "Solid_plat";
	global.__objectNames[16] = "Goal";
	global.__objectNames[17] = "Dummy_four_object";
	global.__objectNames[18] = "Enemy";
	global.__objectNames[19] = "Dummy_two_object";
	global.__objectNames[20] = "Part";
	global.__objectNames[21] = "Door_obj";
	global.__objectNames[22] = "Container";
	global.__objectNames[23] = "Projectile";
	global.__objectNames[24] = "Other_Solid_obj";
	global.__objectNames[25] = "ProjEn";
	global.__objectNames[26] = "Dummy_object";
	global.__objectNames[27] = "Overworld_obj";
	global.__objectNames[28] = "Elevator_obj";
	global.__objectNames[29] = "Solid_moveable";
	global.__objectNames[30] = "Arcade_control";
	global.__objectNames[31] = "Dummy_three_object";
	global.__objectNames[32] = "Arcade_dummy_object";
	global.__objectNames[33] = "Solid";
	global.__objectNames[34] = "Title_obj";


	// create another array that has the correct entries
	var len = array_length(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
