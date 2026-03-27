function lighting_scr() {
	//light

	if(lightcheck==1){
	surf=surface_create(room_width*2,room_height*4)
	surfscale=1
	lightcheck=0
	}

	time+=0.00065
	if(time>24){
	time=0
	}

	if(time>=3&&time<5){
	cycle-=0.00003
	}else{
	if(time>=5&&time<7){
	cycle-=0.00025
	}else{
	if(time>=15&&time<17){
	cycle+=0.00003
	}else{
	if(time>=17&&time<19){
	cycle+=0.00025
	}}}}

	if(cycle>1){
	cycle=1
	}
	if(cycle<0){
	cycle=0
	}

	if(instance_exists(Obj_light)){
	surface_set_target(surf)

	draw_clear(c_black)
	with(Obj_light){

	if(type==1){
	draw_set_blend_mode(bm_src_colour)
	draw_sprite_ext(light_spr,0,x*other.surfscale,y*other.surfscale,lightsize*other.surfscale,lightsize*other.surfscale,0,c_white,lightstrength/1.6)
	draw_set_blend_mode(bm_normal)

	draw_set_blend_mode(bm_src_colour)
	draw_sprite_ext(light_spr,0,x*other.surfscale,y*other.surfscale,(lightsize*other.surfscale)/2,(lightsize*other.surfscale)/2,0,c_white,lightstrength)
	draw_set_blend_mode(bm_normal)

	draw_set_blend_mode(bm_add)
	draw_sprite_ext(light_spr,0,x*other.surfscale,y*other.surfscale, lightsize*other.surfscale, lightsize*other.surfscale,0,c_maroon,0.2)
	draw_set_blend_mode(bm_normal)

	draw_set_blend_mode(bm_add)
	draw_sprite_ext(light_spr,0,x*other.surfscale,y*other.surfscale,(lightsize*other.surfscale)/3,(lightsize*other.surfscale)/3,0,textcolgold,0.1)
	draw_set_blend_mode(bm_normal)

	}else{
	if(type==2){
	draw_set_blend_mode(bm_src_colour)
	draw_sprite_ext(effect_spr,-1,x*other.surfscale,y*other.surfscale, image_xscale, image_yscale,0,c_white,.15)
	draw_set_blend_mode(bm_normal)

	draw_set_blend_mode(bm_add)
	draw_sprite_ext(effect_spr,-1,x*other.surfscale,y*other.surfscale, image_xscale, image_yscale,0,c_blue,.1)
	draw_set_blend_mode(bm_normal)

	}
	}}


	surface_reset_target()

	draw_surface_ext(surf,0,0,1/surfscale,1/surfscale,0,c_white,cycle)

	}



}
