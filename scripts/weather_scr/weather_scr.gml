function weather_scr() {
	if(keyboard_check_pressed(ord("P"))){
	weather=0
	weathertick=0
	part_system_destroy(snow)
	}

	if(weather==1){
	}else{
	part_system_destroy(snow)
	}

	if(weather==1&&weathertick==1){
	weathertick=0
	//Particle
	//Snow
	snow=part_system_create()
	part_system_depth(snow,1)

	//Snowflake
	snowflake=part_type_create()
	//part_type_shape(snowflake,pt_shape_pixel)
	part_type_sprite(snowflake,snow1_spr,0,0,true)
	part_type_orientation(snowflake,0,0,0,0,1)
	part_type_size(snowflake,0.8,1.5,0,0)
	part_type_speed(snowflake,6,7,0.01,0)
	part_type_direction(snowflake,0,270,0,5)
	part_type_life(snowflake,70,90)

	//Making weather
	snow_emitter=part_emitter_create(snow)
	//part_emitter_region(snow,snow_emitter,0-100,room_width+100,-10,-5,ps_shape_ellipse,ps_distr_linear)
	part_emitter_stream(snow,snow_emitter,snowflake,70)

	}
	part_emitter_region(snow,snow_emitter,__view_get( e__VW.XView, 0 )+Me.hsp,__view_get( e__VW.XView, 0 )+(__view_get( e__VW.WView, 0 )*3)+Me.hsp,(y<4)-10,(y<4)-5,ps_shape_ellipse,ps_distr_linear)




}
