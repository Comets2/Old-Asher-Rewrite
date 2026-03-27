function gravity_scr() {
	if(grounded==1){
	slope=0
	//Horizontal Collision
	if(!place_meeting(x+hsp,y+0.5,Solid)){
	yplus=0;
	while(!place_meeting(x+hsp,y+yplus,Solid)&&yplus<=3)yplus+=1;
	if(!place_meeting(x+hsp,y+yplus,Solid)){
	}else{
	y+=yplus
	slope=1
	}}}

	//Horizontal Collision
	if (place_meeting(x+hsp+extsp,y,Solid)){

	yplus=0;
	if(extsp>1){
	extsp=1
	}
	if(extsp<-1){
	extsp=-1
	}
	if(hsp>1){
	hsp=1
	}
	if(hsp<-1){
	hsp=-1
	}

	while (place_meeting(x+hsp+extsp,y-yplus,Solid)&&yplus<=2)yplus+=1;
	if(place_meeting(x+hsp+extsp,y-yplus,Solid)){
	while (!place_meeting(x+sign(hsp+extsp),y,Solid))x += sign(hsp+extsp);
	hsp = 0
	extsp=0
	stopped=1
	}else{
	y-=yplus
	slope=-1
	}}

	x += hsp+extsp;

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

	if (vsp < 3) vsp += grav;

	grounding = instance_place(x,y+1,Solid)

	if(grounding!=noone){
	grounded = 1
	kbinair=0
	}else{
	grounded = 0
	}



}
