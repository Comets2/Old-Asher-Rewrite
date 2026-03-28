function menuui_scr(argument0) {
	//__________________________________________________________------------------<<<<<****{START MENU}****>>>>>------------------__________________________________________________________
	drawxpos= __view_get( e__VW.XView, 0 )
	drawypos= __view_get( e__VW.YView, 0 )
	textcolgold=c_white
	if(argument0==0){
	pause=0
	option=0
	draw_text_ext_transformed_colour(drawxpos+109,drawypos+28,"Adventure",1,1000,0.5,0.5,0,textcolgold,textcolgold,textcolgold,textcolgold,1)
	draw_text_ext_transformed_colour(drawxpos+109,drawypos+28+20,"Arcade",1,1000,0.5,0.5,0,textcolgold,textcolgold,textcolgold,textcolgold,1)
	draw_text_ext_transformed_colour(drawxpos+109,drawypos+28+20*2,"Options",1,1000,0.5,0.5,0,textcolgold,textcolgold,textcolgold,textcolgold,1)
	draw_text_ext_transformed_colour(drawxpos+109,drawypos+28+20*3,"Quit",1,1000,0.5,0.5,0,textcolgold,textcolgold,textcolgold,textcolgold,1)

	if(option==0){
	draw_text_ext_transformed_colour(drawxpos+109,drawypos+28,"Adventure",1,1000,0.5,0.5,0,textcolgoldtwo,textcolgoldtwo,textcolgoldtwo,textcolgoldtwo,1)
	}else{
	if(option==1){
	draw_text_ext_transformed_colour(drawxpos+109,drawypos+28+20,"Arcade",1,1000,0.5,0.5,0,textcolgoldtwo,textcolgoldtwo,textcolgoldtwo,textcolgoldtwo,1)
	}else{
	if(option==2){
	draw_text_ext_transformed_colour(drawxpos+109,drawypos+28+20*2,"Options",1,1000,0.5,0.5,0,textcolgoldtwo,textcolgoldtwo,textcolgoldtwo,textcolgoldtwo,1)
	}else{
	if(option==3){
	draw_text_ext_transformed_colour(drawxpos+109,drawypos+28+20*3,"Quit",1,1000,0.5,0.5,0,textcolgoldtwo,textcolgoldtwo,textcolgoldtwo,textcolgoldtwo,1)
	}else{
	}}}}


	}else{

	//__________________________________________________________------------------<<<<<****{PAUSE MENU}****>>>>>------------------__________________________________________________________
	if(argument0==1){

	draw_text_ext_transformed_colour(drawxpos+109,drawypos+28,"Resume",1,1000,0.5,0.5,0,textcolgold,textcolgold,textcolgold,textcolgold,1)
	draw_text_ext_transformed_colour(drawxpos+109,drawypos+28+16,"To Map",1,1000,0.5,0.5,0,textcolgold,textcolgold,textcolgold,textcolgold,1)
	draw_text_ext_transformed_colour(drawxpos+109,drawypos+28+16*2,"Equipment",1,1000,0.5,0.5,0,textcolgold,textcolgold,textcolgold,textcolgold,1)
	draw_text_ext_transformed_colour(drawxpos+109,drawypos+28+16*3,"Store",1,1000,0.5,0.5,0,textcolgold,textcolgold,textcolgold,textcolgold,1)
	draw_text_ext_transformed_colour(drawxpos+109,drawypos+28+16*4,"Settings",1,1000,0.5,0.5,0,textcolgold,textcolgold,textcolgold,textcolgold,1)
	draw_text_ext_transformed_colour(drawxpos+109,drawypos+28+16*5,"Quit",1,1000,0.5,0.5,0,textcolgold,textcolgold,textcolgold,textcolgold,1)

	if(option==0){
	draw_text_ext_transformed_colour(drawxpos+109,drawypos+28,"Resume",1,1000,0.5,0.5,0,textcolgoldtwo,textcolgoldtwo,textcolgoldtwo,textcolgoldtwo,1)
	}else{
	if(option==1){
	draw_text_ext_transformed_colour(drawxpos+109,drawypos+28+16,"To Map",1,1000,0.5,0.5,0,textcolgoldtwo,textcolgoldtwo,textcolgoldtwo,textcolgoldtwo,1)
	}else{
	if(option==2){
	draw_text_ext_transformed_colour(drawxpos+109,drawypos+28+16*2,"Equipment",1,1000,0.5,0.5,0,textcolgoldtwo,textcolgoldtwo,textcolgoldtwo,textcolgoldtwo,1)
	}else{
	if(option==3){
	draw_text_ext_transformed_colour(drawxpos+109,drawypos+28+16*3,"Store",1,1000,0.5,0.5,0,textcolgoldtwo,textcolgoldtwo,textcolgoldtwo,textcolgoldtwo,1)
	}else{
	if(option==4){
	draw_text_ext_transformed_colour(drawxpos+109,drawypos+28+16*4,"Settings",1,1000,0.5,0.5,0,textcolgoldtwo,textcolgoldtwo,textcolgoldtwo,textcolgoldtwo,1)
	}else{
	if(option==5){
	draw_text_ext_transformed_colour(drawxpos+109,drawypos+28+16*5,"Quit",1,1000,0.5,0.5,0,textcolgoldtwo,textcolgoldtwo,textcolgoldtwo,textcolgoldtwo,1)
	}else{
	}}}}}}

	}else{
	}}


}
