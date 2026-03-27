function megravity_scr() {
	if(grounded==1){
	//Horizontal Collision
	if(!place_meeting(x+hsp,y+0.5,Solid)){
	yplus=0;
	while(!place_meeting(x+hsp,y+yplus,Solid)&&yplus<=3)yplus+=1;
	if(!place_meeting(x+hsp,y+yplus,Solid)){
	}else{
	y+=yplus
	}}}

	//Horizontal Collision
	if (place_meeting(x+hsp+extsp,y,Solid)){

	yplus=0;
	slope=2
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
	if (vsp < 3) vsp += grav

	grounding = instance_place(x,y+1,Solid)

	if(grounding!=noone){

	//Land puff
	if(grounded==0){
	for(i=0;i<3;i+=1){
	created=instance_create(x+10-2+i*2,y+20+1,Dummy_three_object)
	with(created){
	type=1
	pin=300
	creator=other.id
	sprite_index=me_part1_spr
	depth=Me.depth-1

	image_speed=1
	image_index=irandom(image_number)
	duration=8+irandom(12)
	durationtotal=duration
	speed=random_range(0.05,0.3)
	direction=other.i*40
	hsp=hspeed
	vsp=vspeed
	speed=0
	}}}

	grounded = 1
	kbinair=0
	}else{
	grounded = 0
	}

	with(Dummy_three_object){
	if(pin==300){
	if(duration>0){
	duration-=1
	}else{
	instance_destroy()
	}

	}}


}
