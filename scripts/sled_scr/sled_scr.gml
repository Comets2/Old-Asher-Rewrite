function sled_scr() {
	if(minigamecheck==0){
	minigamecheck=1
	sprite_index=mesled_spr
	mask_index=sprite_index
	image_speed=0
	minispedtotal=2
	minisped=1
	minislow=0.005
	miniextra=0
	ministop=1
	minidead=0
	hsp=0
	animdel=0
	animsecond=0
	with(Control){
	weather=1
	weathertick=1
	weatheron=1
	}}

	//*********{SNOW}**********
	if(animdel>0){
	animdel-=1
	}
	animsecond+=0.15
	extsp=0
	//*********{DEAD}**********
	if(minidead>0){
	sprite_index=mesleddead_spr
	y+=1.5
	minidead-=1
	if(minidead==1){
	with(Control){
	if(weatheron==1){
	weatheron=0
	part_system_destroy(snow)
	snow=0
	}
	}
	hp=0
	}}else{

	//*********{ALIVE}**********
	if(vsp<0){
	image_angle+=0.5
	image_index=2
	sprite_index=mesled_spr
	}else{
	if(vsp>0){
	image_index=1
	sprite_index=mesled_spr
	image_angle-=0.5
	}}

	if(Control.con_p_down||Control.conp_p_down||Control.conp_p_shr||Control.conp_p_shl){
	sprite_index=mesled_duck_spr
	mask_index=sprite_index
	}else{

	sprite_index=mesled_spr
	mask_index=sprite_index
	}

	hit=instance_place(x,y+1,Solid)
	if(hit!=noone){
	//slope up
	if(hit.image_index==2){
	miniextra=-0.035
	image_angle=40
	}else{
	//slope slow up
	if(hit.image_index==4||hit.image_index==5){
	miniextra=-0.015
	image_angle=30
	}else{
	//slope down
	if(hit.image_index==3){
	miniextra=0.05
	image_angle=320
	image_index=1
	}else{
	//slope slow down
	if(hit.image_index==6||hit.image_index==7){
	miniextra=0.025
	image_angle=330
	image_index=1
	}else{
	miniextra=0
	image_index=0
	if(image_angle<60&&image_angle>=5){
	image_angle-=2.5
	}else{
	if(image_angle>300&&image_angle<=355){
	image_angle+=2.5
	}else{
	image_angle=0
	}}
	}}}}}else{
	miniextra=0
	if(vsp==0){
	if(image_angle<60&&image_angle>=5){
	image_angle-=2.5
	}else{
	if(image_angle>300&&image_angle<=355){
	image_angle+=2.5
	}else{
	image_angle=0
	}}}
	}
	hsp+=miniextra

	if(hsp<ministop){
	hsp=ministop
	}else{
	if(hsp>minispedtotal){
	hsp=minispedtotal
	}}

	//SLED CARRY
	if(hsp==ministop){
	if(!Control.con_h_down&&!Control.conp_h_down&&!Control.conp_h_shr&&!Control.conp_h_shl){
	if(image_angle>=0&&image_angle<90&&instance_place(x,y+5,Solid)){
	sprite_index=mesledcarry_spr
	image_index=animsecond
	}else{
	sprite_index=mesled_spr
	}}}

	//jummp/ground
	if (place_meeting(x,y+1,Solid)&&stunned<=0){
	grounded = 1
	wallrtrig=0
	wallltrig=0
	jumptime=0
	if(Control.con_p_space||Control.conp_p_space){
	bjump=1
	vsp-=1.5
	}}

	if(vsp<0){
	if(Control.con_p_down||Control.conp_p_down||Control.conp_p_shr||Control.conp_p_shl){
	vsp=0
	}}

	if(bjump==1||jumptime>0){
	if(!Control.con_h_down&&!Control.conp_h_down&&!Control.conp_h_shr&&!Control.conp_h_shl){
	bjump=0
	vsp-=jumptime
	if(Control.con_h_space||Control.conp_h_space){
	jumptime+=0.2
	}
	if(Control.con_r_space||Control.conp_r_space){
	jumptime=0
	}
	if(vsp<-2.5){
	jumptime=0
	vsp=-2.5
	}
	}else{
	jumptime=0
	bjump=0
	}}

	//DOWN SLOPE Horizontal Collision
	if(grounded==1){
	if(!place_meeting(x+hsp,y+0.5,Solid)){
	yplus=0;
	y=floor(y)
	while(!place_meeting(x+hsp,y+yplus,Solid)&&yplus<=3)yplus+=1;
	if(!place_meeting(x+hsp,y+yplus,Solid)){
	}else{
	y+=yplus
	}}}

	//Horizontal Collision
	if(place_meeting(x+hsp,y,Solid)){
	yplus=0;
	slope=2

	while (place_meeting(x+hsp,y-yplus,Solid)&&yplus<=2)yplus+=1;
	if(place_meeting(x+hsp,y-yplus,Solid)){
	while (!place_meeting(x+sign(hsp),y,Solid))x += sign(hsp+extsp);
	//hsp = ministop
	y-=5
	hit=instance_place(x,y,Solid_noslope)
	if(hit!=noone){
	minidead=30
	}
	extsp=0
	stopped=1
	if(slope>0){
	slope-=1
	}
	}else{
	y-=yplus
	}
	}else{
	if(slope>0){
	slope-=1
	}}

	x += hsp;

	//Vertical Collision
	impact=0
	if (place_meeting(x,y+vsp,Solid)){
	while (!place_meeting(x,y+sign(vsp),Solid)){
	y += sign(vsp);
	}
	impact=vsp
	vsp = 0
	}
	y += vsp;

	if(vsp<3) vsp += grav;

	if(place_meeting(x,y+1,Solid)){
	grounded=1
	kbinair=0
	}else{
	grounded=0
	}


	}





}
