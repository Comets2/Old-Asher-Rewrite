function controls_scr() {
	//if(controlopt==0){
	//Keyboard
	//up
	con_p_up=keyboard_check_pressed(consave_up)
	con_h_up=keyboard_check(consave_up)
	//down
	con_p_down=keyboard_check_pressed(consave_down)
	con_h_down=keyboard_check(consave_down)
	//right
	con_p_right=keyboard_check_pressed(consave_right)
	con_h_right=keyboard_check(consave_right)
	//left
	con_p_left=keyboard_check_pressed(consave_left)
	con_h_left=keyboard_check(consave_left)
	//space
	con_p_space=keyboard_check_pressed(consave_space)
	con_h_space=keyboard_check(consave_space)
	con_r_space=keyboard_check_released(consave_space)
	//enter
	con_p_enter=keyboard_check_pressed(consave_enter)
	//shift
	con_h_shift=keyboard_check(consave_shift)
	//escape
	con_p_escape=keyboard_check_pressed(consave_escape)
	//E
	con_p_e=keyboard_check_pressed(consave_e)
	con_h_e=keyboard_check(consave_e)
	//W
	con_p_w=keyboard_check_pressed(consave_w)
	con_h_w=keyboard_check(consave_w)
	//Q
	con_p_q=keyboard_check_pressed(consave_q)
	con_h_q=keyboard_check(consave_q)

	    gamep1=-1
	    var _pad_count=gamepad_get_device_count()
	    for(var _i=0;_i<_pad_count;_i++){
	        if(gamepad_is_connected(_i)){
	            gamep1=_i
	            break
	        }
	    }
	//up
	if(gamepad_button_check_pressed(gamep1,gp_padu)){
	conp_p_up=gamepad_button_check_pressed(gamep1,gp_padu)
	}else{
	if(conp_h_up==0){
	if(round(gamepad_axis_value(gamep1, gp_axislv))==-1){
	conp_p_up=1
	}}else{
	conp_p_up=0
	}}

	if(gamepad_button_check(gamep1,gp_padu)){
	conp_h_up=gamepad_button_check(gamep1,gp_padu)
	}else{
	if(round(gamepad_axis_value(gamep1, gp_axislv))==-1){
	conp_h_up=1
	}else{
	conp_h_up=0
	}}

	//down
	if(gamepad_button_check_pressed(gamep1,gp_padd)){
	conp_p_down=gamepad_button_check_pressed(gamep1,gp_padd)
	}else{
	if(conp_h_down==0){
	if(round(gamepad_axis_value(gamep1, gp_axislv))==1){
	conp_p_down=1
	}}else{
	conp_p_down=0
	}}

	if(gamepad_button_check(gamep1,gp_padd)){
	conp_h_down=gamepad_button_check(gamep1,gp_padd)
	}else{
	if(round(gamepad_axis_value(gamep1, gp_axislv))==1){
	conp_h_down=1
	}else{
	conp_h_down=0
	}}

	//right
	if(gamepad_button_check_pressed(gamep1,gp_padr)){
	conp_p_right=gamepad_button_check_pressed(gamep1,gp_padr)
	}else{
	if(conp_h_right==0){
	if(round(gamepad_axis_value(gamep1, gp_axislh))==1){
	conp_p_right=1
	}}else{
	conp_p_right=0
	}}

	if(gamepad_button_check(gamep1,gp_padr)){
	conp_h_right=gamepad_button_check(gamep1,gp_padr)
	}else{
	if(round(gamepad_axis_value(gamep1, gp_axislh))==1){
	conp_h_right=1
	}else{
	conp_h_right=0
	}}

	//left
	if(gamepad_button_check_pressed(gamep1,gp_padl)){
	conp_p_left=gamepad_button_check_pressed(gamep1,gp_padl)
	}else{
	if(conp_h_left==0){
	if(round(gamepad_axis_value(gamep1, gp_axislh))==-1){
	conp_p_left=1
	}}else{
	conp_p_left=0
	}}

	if(gamepad_button_check(gamep1,gp_padl)){
	conp_h_left=gamepad_button_check(gamep1,gp_padl)
	}else{
	if(round(gamepad_axis_value(gamep1, gp_axislh))==-1){
	conp_h_left=1
	}else{
	conp_h_left=0
	}}

	//space
	conp_p_space=gamepad_button_check_pressed(gamep1,gp_face1)
	conp_h_space=gamepad_button_check(gamep1,gp_face1)
	conp_r_space=gamepad_button_check_released(gamep1,gp_face1)
	//enter
	conp_p_enter=gamepad_button_check_pressed(gamep1,gp_start)
	//shift
	conp_h_shift=gamepad_button_check(gamep1,gp_shoulderr)
	//escape
	conp_p_escape=gamepad_button_check_pressed(gamep1,gp_select)
	//E
	conp_p_e=gamepad_button_check_pressed(gamep1,gp_face3)
	conp_h_e=gamepad_button_check(gamep1,gp_face3)
	//W
	conp_p_w=gamepad_button_check_pressed(gamep1,gp_face4)
	conp_h_w=gamepad_button_check(gamep1,gp_face4)
	//Q
	conp_p_q=gamepad_button_check_pressed(gamep1,gp_face2)
	conp_h_q=gamepad_button_check(gamep1,gp_face2)
	//Triggers
	conp_p_shr=gamepad_button_check_pressed(gamep1,gp_shoulderr)
	conp_p_shl=gamepad_button_check_pressed(gamep1,gp_shoulderl)
	conp_h_shr=gamepad_button_check(gamep1,gp_shoulderr)
	conp_h_shl=gamepad_button_check(gamep1,gp_shoulderl)
	/*
	}else{
	//GamePad
	if(gamepad_is_supported()){
	if(gamepad_is_connected(0)){

	    gamep1=gamepad_is_connected(gamepad_get_device_count()-1)
	//up
	conp_p_up=gamepad_button_check_pressed(gamep1,gp_padu)
	conp_h_up=gamepad_button_check(gamep1,gp_padu)
	//down
	conp_p_down=gamepad_button_check_pressed(gamep1,gp_padd)
	conp_h_down=gamepad_button_check(gamep1,gp_padd)
	//right
	conp_p_right=gamepad_button_check_pressed(gamep1,gp_padr)
	conp_h_right=gamepad_button_check(gamep1,gp_padr)
	//left
	conp_p_left=gamepad_button_check_pressed(gamep1,gp_padl)
	conp_h_left=gamepad_button_check(gamep1,gp_padl)
	//space
	conp_p_space=gamepad_button_check_pressed(gamep1,gp_face1)
	conp_h_space=gamepad_button_check(gamep1,gp_face1)
	conp_r_space=gamepad_button_check_released(gamep1,gp_face1)
	//enter
	conp_p_enter=gamepad_button_check_pressed(gamep1,gp_start)
	//shift
	conp_h_shift=gamepad_button_check(gamep1,gp_shoulderr)
	//escape
	conp_p_escape=gamepad_button_check_pressed(gamep1,gp_select)
	//E
	conp_p_e=gamepad_button_check_pressed(gamep1,gp_face2)
	conp_h_e=gamepad_button_check(gamep1,gp_face2)
	//W
	conp_p_w=gamepad_button_check_pressed(gamep1,gp_face3)
	conp_h_w=gamepad_button_check(gamep1,gp_face4)
	//Q
	conp_p_q=gamepad_button_check_pressed(gamep1,gp_face3)
	conp_h_q=gamepad_button_check(gamep1,gp_face2)

	}else{
	//game_end()
	}
	}else{
	//game_end()

	}
	}


/* end controls_scr */
}
