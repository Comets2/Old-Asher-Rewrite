function lighting_scr() {
	//light

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
	var _vx=__view_get( e__VW.XView, 0 )
	var _vy=__view_get( e__VW.YView, 0 )
	var _vw=__view_get( e__VW.WView, 0 )
	var _vh=__view_get( e__VW.HView, 0 )

	// View-sized surface instead of room-sized (saves massive VRAM)
	if(!surface_exists(surf)){
	surf=surface_create(_vw,_vh)
	}

	surface_set_target(surf)
	draw_clear(c_black)

	with(Obj_light){
	// Cull off-screen lights (256px margin for light radius)
	if(x<_vx-256||x>_vx+_vw+256||y<_vy-256||y>_vy+_vh+256) continue

	var _dx=x-_vx
	var _dy=y-_vy

	if(type==1){
	// Batch blend modes: both src_colour draws, then both add draws
	draw_set_blend_mode(bm_src_colour)
	draw_sprite_ext(light_spr,0,_dx,_dy,lightsize,lightsize,0,c_white,lightstrength/1.6)
	draw_sprite_ext(light_spr,0,_dx,_dy,lightsize/2,lightsize/2,0,c_white,lightstrength)
	draw_set_blend_mode(bm_add)
	draw_sprite_ext(light_spr,0,_dx,_dy,lightsize,lightsize,0,c_maroon,0.2)
	draw_sprite_ext(light_spr,0,_dx,_dy,lightsize/3,lightsize/3,0,textcolgold,0.1)
	draw_set_blend_mode(bm_normal)
	}else{
	if(type==2){
	draw_set_blend_mode(bm_src_colour)
	draw_sprite_ext(effect_spr,-1,_dx,_dy,image_xscale,image_yscale,0,c_white,.15)
	draw_set_blend_mode(bm_add)
	draw_sprite_ext(effect_spr,-1,_dx,_dy,image_xscale,image_yscale,0,c_blue,.1)
	draw_set_blend_mode(bm_normal)
	}
	}}

	surface_reset_target()
	draw_surface_ext(surf,_vx,_vy,1,1,0,c_white,cycle)
	}

}
