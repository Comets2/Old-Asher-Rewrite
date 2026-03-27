function charselection_scr() {
	//START UP

	//Char Select
	if(startup==1){
	if(con_p_escape){
	game_end()
	option=0
	}
	if(con_p_up){
	//option-=1
	if(option<0){
	option=3
	}
	}
	if(con_p_down){
	//option+=1
	if(option>3){
	option=0
	}
	}

	if(con_p_enter||con_p_e||conp_p_space||conp_p_enter){
	cd=1
	option=0
	story=0
	if(option<=2){
	charcreates_scr(option,deleteopt)
	}else{

	if(option==3){
	if(deleteopt==0){
	deleteopt=1
	option=0
	}else{
	deleteopt=0
	option=0
	}
	}else{
	}}
	}

	}else{
	//Char Creation
	if(startup==2){

	if(keyboard_check_pressed(ord("1"))){
	charArray[charselected,8]=0
	}
	if(keyboard_check_pressed(ord("2"))){
	charArray[charselected,8]=1
	}
	if(keyboard_check_pressed(ord("3"))){
	charArray[charselected,8]=2
	}
	classsetup_scr(charArray[charselected,8])

	if(con_p_escape){
	startup=1
	option=0
	}

	startup=0
	cd=1
	justloaded=1
	charsave_scr(charselected)
	abilcreate_scr(charArray[charselected,8])
	Me.charactercheck=1
	Me.charid=charselected
	option=0

	}
	}



}
