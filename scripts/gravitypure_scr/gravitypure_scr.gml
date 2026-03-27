function gravitypure_scr() {
	//Horizontal Collision
	if(place_meeting(x+hsp,y,Solid)){
	while (!place_meeting(x+sign(hsp),y,Solid))x += sign(hsp);
	hsp = 0
	stopped=1
	}
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

	if (vsp < 4) vsp += grav;

	grounding = instance_place(x,y+1,Solid)
	if(grounding!=noone){
	grounded = 1
	kbinair=0
	}else{
	grounded = 0
	}



}
