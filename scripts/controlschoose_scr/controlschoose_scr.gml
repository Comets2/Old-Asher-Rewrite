function controlschoose_scr(argument0) {
	if(argument0==0){
	//DEFAULT
	//up
	consave_up=vk_up
	//down
	consave_down=vk_down
	//right
	consave_right=vk_right
	//left
	consave_left=vk_left
	//space
	consave_space=vk_space
	//enter
	consave_enter=vk_enter
	//shift
	consave_shift=vk_shift
	//escapeE
	consave_escape=vk_escape
	//E
	consave_e=ord("E")
	//W
	consave_w=ord("W")
	//Q
	consave_q=ord("Q")

	}else{

	if(con_p_e){
	keyoption=1
	}else{
	if(con_p_e){
	keyoption=1
	}else{
	if(con_p_e){
	keyoption=1
	}else{
	if(con_p_e){
	keyoption=1
	}else{
	if(con_p_e){
	keyoption=1
	}else{
	if(con_p_e){
	keyoption=1
	}else{

	}}}}}}

	//CHANGE
	if(keyboard_lastchar==-1){

	if(keyboard_lastchar!=con_p_escape&&keyboard_lastchar!=con_p_enter){
	//UP
	if(keyoption==1){
	consave_up=keyboard_lastchar
	}else{
	//DOWN
	consave_down=keyboard_lastchar
	if(keyoption==2){
	//RIGHT
	consave_right=keyboard_lastchar
	}else{
	//LEFT
	if(keyoption==3){
	consave_p_left=keyboard_lastchar
	}else{
	//SPACE 
	if(keyoption==4){
	con_space=keyboard_lastchar
	}else{
	//E
	if(keyoption==5){
	con_e=keyboard_lastchar
	}else{
	//W
	if(keyoption==6){
	con_w=keyboard_lastchar
	}else{
	//Q
	if(keyoption==7){
	con_q=keyboard_lastchar
	}else{

	}}}}}}}}
	}}



}
