function grab_scr() {
	if(keyboard_check_pressed(ord("R"))){
	if(grab==0){
	if(direction==0){
	xpos=4
	}else{
	xpos=-4
	}


	if(instance_place(x+xpos,y,Box)){
	grabbing=instance_place(x+xpos,y,Box)
	grabbing.mask_index=conempty
	grab=1
	}}else{
	if(direction==0){
	xpos=13
	ypos=5
	xpos2=23
	ypos2=16
	}else{
	xpos=-3
	ypos=5
	xpos2=-13
	ypos2=16
	}
	if(!collision_rectangle(x+xpos,y+ypos,x+xpos2,y+ypos2,Solid,true,true)){
	grab=0
	if(direction==0){
	grabbing.x=x+13
	grabbing.y=y+5
	}else{
	grabbing.x=x-3
	grabbing.y=y+5
	}
	grabbing.mask_index=container_spr
	grabbing.hsp=hsp
	grabbing.vsp=vsp
	grabbing=0
	}}}

	if(grab==1){
	grabbing.image_mask=noone
	if(direction==0){
	grabbing.x=x+12
	grabbing.y=y+7
	}else{
	grabbing.x=x-2
	grabbing.y=y+7
	}}



}
