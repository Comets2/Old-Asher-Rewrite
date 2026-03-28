function pauseoption_scr(argument0) {
	//Pause Menu
	if(argument0==1){
	if(con_p_enter||con_p_e||conp_p_enter||conp_p_space){
	delay=5
	cd=1
	if(option==0){
	pause=0
	option=0
	}else{
	if(option==1){
	mapcheck=1
	}else{
	if(option==2){
	pause=5
	equipopt=0
	}else{
	if(option==3){
	pause=7
	equipopt=0
	equipopttwo=0
	itemselected=0
	}else{
	if(option==4){
	pause=9
	settings_tab=0
	settings_row=-1
	}else{
	if(option==5){
	charsave_scr(charselected)
	game_end()
	}}}}}}}
	}else{
	//Inventory
	if(argument0==2){

	if(con_p_enter||conp_p_enter){
	cd=1
	if(option=0){

	}else{
	if(option==1){

	}else{
	if(option==4){


	}}}}
	}else{
	//Talents
	if(argument0==3){
	if(con_p_enter||con_p_e||conp_p_enter||conp_p_space){
	cd=1
	if(option=0){

	}else{
	if(option==1){

	}else{
	if(option==4){

	}}}}
	}else{

	}
	}
	}



}
