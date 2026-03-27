function worldone_rm5_control_scr() {
	if(Control.pause==0){
	//CHECK
	if(check==1){
	//CHEST LOOTS
	with(Control){
	chestitemone=1
	chestitemtwo=1
	rmcheck=1
	musicchange=music_birthday_theme1
	}
	check=0
	bdcount=0
	extrajump=0
	ballooncheck=0


	//-----------------********{Act 1}********-----------------
	if(Control.actchoose==1){

	with(Control){
	if(cpsave==0){
	Me.y=10
	}
	//Save Book
	created=instance_create(2832,144,Item)
	created.itemtype=5

	//DREAM BOTTLES
	if(levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]]+actchoose-1,5]==0){
	created=instance_create(736,48,Item)
	with(created){
	itemtype=4
	iden=5
	}}
	if(levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]]+actchoose-1,6]==0){
	created=instance_create(3271,0,Item)
	with(created){
	itemtype=4
	iden=6
	}}
	if(levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]]+actchoose-1,7]==0){
	created=instance_create(2016,8,Item)
	with(created){
	itemtype=4
	iden=7
	}}
	}

	travelpresent=instance_create(1168,112,Solid_plat)
	with(travelpresent){
	starty=y
	sprite_index=present_big_spr
	mask_index=sprite_index
	visible=true
	depth=Me.depth+8
	sped=0.3
	image_speed=0
	phase=0
	}}else{

	//-----------------********{Act 2}********-----------------

	with(Control){
	if(cpsave==0){
	Me.x=3760
	Me.y=90
	}

	//Save Book
	created=instance_create(5728,48,Item)
	created.itemtype=5
	//Save Book
	created=instance_create(8224,176,Item)
	created.itemtype=5
	}

	with(Control){
	//DREAM BOTTLES
	if(levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]]+actchoose-1,5]==0){
	created=instance_create(4608,0,Item)
	with(created){
	itemtype=4
	iden=5
	}}
	if(levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]]+actchoose-1,6]==0){
	created=instance_create(6720,224,Item)
	with(created){
	itemtype=4
	iden=6
	}}
	if(levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]]+actchoose-1,7]==0){
	created=instance_create(9328,80,Item)
	with(created){
	itemtype=4
	iden=7
	}}}

	//Me.x=7728
	//Me.y=40
	//Me.x=8656
	ballooncheck=1

	//Gold Present
	goldpresent=instance_create(7728,64,Enemy)
	goldpresent.enemytype=6

	//Boss Present
	bosspresent=instance_create(8768,112,Solid_plat)
	with(bosspresent){
	sprite_index=present_roomboss_spr
	mask_index=sprite_index
	image_index=0
	y+=16
	image_speed=0
	}

	bosspresentboss=instance_create(9792,103,Enemy)
	with(bosspresentboss){
	enemytype=7
	extracheck=1
	}

	created=instance_create(8768,112,Dummy_two_object)
	with(created){
	sprite_index=present_roomboss_spr
	mask_index=sprite_index
	image_index=1
	depth=Me.depth-1
	y+=16
	image_speed=0
	pin=70
	}
	created=instance_create(8768,112,Dummy_two_object)
	with(created){
	sprite_index=present_roomboss_spr
	mask_index=sprite_index
	image_index=2
	depth=Me.depth+10
	y+=16
	image_speed=0
	pin=70
	}

	balloon=instance_create(4112,48,Dummy_two_object)
	with(balloon){
	pin=70
	sprite_index=balloon_spr
	image_speed=0
	dir=0
	movespeed=0.125
	range=4
	looted=0
	depth=Me.depth+1
	starty=y
	check=1
	}}}

	//--------------*********{ALWAYS}*********--------------
	with(Me){
	if(grounded==1){
	other.bdcount=0
	other.extrajump=0
	//Container Ride
	hit=instance_place(x,y+1,Container)
	if(hit!=noone){
	with(hit.creator){
	if(enemytype==4){
	mecheck=1
	selfcreated.y=floor(selfcreated.y)
	if(movingcheck<=0){
	selfcreated.y+=1
	y=selfcreated.y-20
	Me.y+=1
	if(image_index==0){
	movingcheck=2
	}else{
	movingcheck=4
	}}else{
	movingcheck-=1
	}}else{
	if(enemytype==5){
	selfcreated.y=floor(selfcreated.y)
	y=selfcreated.y-16
	mecheck=1
	}}}}}else{
	//Container Break
	hit=instance_place(x,y-2,Container)
	if(hit!=noone){
	hit.hurttick=1
	}}

	hit=instance_place(x+hsp,y+vsp+1,Enemy)
	if(hit!=noone&&grounded==0){
	if(hit.medamage==1){
	if(y<hit.y-8){
	if(other.ballooncheck==0){
	if(other.bdcount<10){
	if(hit.enemytype==1){
	vsp=(1.75+(other.bdcount/8))*-1
	}else{
	vsp=(2.25+(other.bdcount/8))*-1
	}}else{
	vsp=-4.25
	}}else{
	if(other.bdcount<6){
	vsp=(1.5+(other.bdcount/8))*-1
	}else{
	vsp=-2.5
	}}
	if(hit.enemytype>=12||hit.enemytype<7){
	other.bdcount+=1
	with(hit){
	dr+=5+Dummy_obj.bdcount
	drdraw+=5+Dummy_obj.bdcount
	if(hurt<=0){
	hurttick=1
	}}}}
	other.extrajump=1
	}}

	if(other.ballooncheck!=0){
	gravtotal=0.055
	if(vsp>0.5){
	vsp=0.5
	}
	if(other.extrajump<3&&Me.grounded==0){
	if(stunned<=0){
	if(Control.con_p_space&&!instance_place(x,y-1,Solid)&&!Control.con_h_down||Control.conp_p_space&&!instance_place(x,y-1,Solid)&&!Control.conp_h_down){
	other.extrajump+=1
	vsp=-2.5
	for(i=0;i<6;i+=1){
	created=instance_create(x+10-1+i,y+20,Dummy_three_object)
	with(created){
	type=1
	pin=300
	creator=other.id
	sprite_index=me_part1_spr
	depth=Me.depth-1
	spin=0
	image_speed=1
	image_index=irandom(image_number)
	duration=8+irandom(12)
	durationtotal=duration
	speed=random_range(0.05,0.3)
	direction=other.i*40
	hsp=hspeed
	vsp=vspeed
	speed=0
	}}
	}}}

	}else{
	gravtotal=0.095
	}
	//DUMMY OBJECTS
	hit=instance_place(x,y,Dummy_object)
	if(hit!=noone){
	if(hit.pin==73||hit.pin=77||hit.pin==79){
	if(hit.damage==1){
	hit.duration=0
	dr+=hit.damage
	drdraw+=hit.damage
	if(hurt<=0){
	hurttick=1
	}}}}
	}

	//-----------------********{Act 1}********-----------------
	if(Control.actchoose==1){
	//Present
	with(travelpresent){
	if(phase==0){
	if(instance_place(x,y-2,Me)){
	phase=1
	image_speed=0.05
	}}else{
	if(phase==1){
	x+=sped
	if(image_index>=2&&image_index<3){
	if(y!=starty+1){
	y=starty+1
	if(place_meeting(x,y-2,Me)){
	Me.x+=sped
	Me.y+=1
	}}else{
	if(place_meeting(x,y-2,Me)){
	Me.x+=sped
	}}}else{
	if(place_meeting(x,y-2,Me)){
	Me.x+=sped
	}
	y=starty
	}
	if(place_meeting(x,y,Me)){
	Me.y-=1
	}
	if(x>=2688){
	x=2688
	image_speed=0
	phase=2
	}}}}
	//SPIKES
	if(Me.x>1152&&Me.x<2800&&Me.y>186){
	Me.hp=0
	}

	}else{

	//-----------------********{Act 2}********-----------------
	if(Control.actchoose==2){
	//Gold Present

	with(goldpresent){
	if(phase==1){
	//Me Present
	if(delay<=0){
	if(Me.x+10>x+7&&Me.x+10<x+63&&Me.y+10>y+41&&Me.y+10<y+63){
	Me.x=9312
	Me.y=0
	delay=40
	vsp=0
	}
	if(delay<=0){
	if(Me.x+10>9248&&Me.x+10<9408&&Me.y<5){
	delay=40
	Me.vsp=-3
	Me.x=x+sprite_width/2
	Me.y=y+(sprite_height/2)+10
	}}}else{
	delay-=1
	}}}
	//Boss Present
	with(Me){
	if(x+10>8768+8&&x+10<8768+87&&y>112+48){
	x=9840
	y=0
	vsp=0
	__view_set( e__VW.VBorder, 0, 48 )
	}}

	//Balloon
	with(balloon){
	if(other.ballooncheck==0){
	if(instance_place(x,y,Me)){
	other.ballooncheck=1
	}
	//Hover
	if(dir==0){
	if(y<starty+range){
	y+=movespeed
	}else{
	dir=1
	}}else{
	if(y>starty-range){
	y-=movespeed
	}else{
	dir=0
	}}
	}else{

	//ON ME
	if(check==1){
	check=0
	image_index=1
	image_speed=0.1
	}
	if(image_index<1){
	image_index=1
	}
	if(Me.direction==0){
	x=Me.x+6
	image_xscale=-1
	}else{
	x=Me.x+14
	image_xscale=1
	}
	y=Me.y-6

	}}}
	}

	//DUMMY OBJECT
	with(Dummy_object){
	if(pin==73){
	if(speed>0.4){
	speed-=0.005
	//ANGLE ADJUST
	if(image_angle>90&&image_angle<=270){
	tick=0
	if(image_angle<180-8){
	image_angle+=4
	}else{
	if(image_angle>180+4){
	image_angle-=4
	}}
	}else{
	tick=1
	if(image_angle<0-4){
	image_angle+=4
	}else{
	if(image_angle>0+4){
	image_angle-=4
	}}}
	}else{
	if(speed>0.005){
	speed-=0.0025
	}
	//FALL
	y+=0.15
	if(tick==0){
	if(angle>=startangle-10){
	image_angle-=1.5
	angle-=1
	}else{
	tick=1
	}}else{
	if(angle<=startangle+10){
	image_angle+=1.5
	angle+=1
	}else{
	tick=0
	}}}
	if(duration>0){
	duration-=1
	}else{
	instance_destroy()
	}}else{
	if(pin==77){
	if(x>9778-(rangeone*2)){
	x-=sped
	image_angle+=choose(2.25,2.5,2.75,3,3.25)
	}else{
	if(y<192-rangetwo){
	y+=2
	image_angle-=choose(2.25,3)
	}else{
	if(delay>0){
	delay-=1
	}}}
	if(delay<=0){
	instance_destroy()
	}
	if(instance_place(x,y,Me)){
	duration=0
	}}}
	}


	}




}
