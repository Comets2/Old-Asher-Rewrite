function projchecken_scr(argument0) {
	//******************Skell******************
	if(argument0==2){
	//**Brick**
	if(abil==0){
	duration=200
	y=__view_get( e__VW.YView, 0 )-50
	image_speed=0
	image_index=irandom(4)
	sprite_index=skell_brick
	image_angle=random(360)
	grav=0
	if(image_index>0){
	vsp=random((image_index/2))+2+(image_index/2)
	}else{
	vsp=random(0.25)+2
	}
	damage=1+image_index
	hsp=0
	grounded=0
	}else{

	//**Fire**
	if(abil==1){
	startanimspr=abil_witch_dis1
	startanimdur=12
	startanim=1
	duration=200
	gravity=0.025
	image_index=irandom(4)
	sprite_index=skell_fire
	image_speed=0.5
	speed=2.5
	x=creator.x+creator.hsp
	y=creator.y+creator.vsp+6
	startx=x
	starty=y
	if(Me.hsp==0){
	direction=220+num*20
	}else{
	if(x<Me.x){
	direction=point_direction(x,y,Me.x+(num-1)*40,Me.y)
	}else{
	direction=point_direction(x,y,Me.x-(num-1)*40,Me.y)
	}}
	image_angle=direction
	grav=0
	vsp=0
	hsp=0
	damage=1
	grounded=0
	option=1
	}else{

	//**Bone**
	if(abil==2){
	damage=1
	sprite_index=skell_bone
	image_speed=0
	image_index=0
	duration=360
	option=0
	dir1=num*60

	}else{

	//**WARP**
	if(abil==3){
	if(option==0){
	sprite_index=skell_warp
	}else{
	sprite_index=skell_warp2
	}
	image_speed=0.6
	image_index=0
	duration=7
	option=0
	}else{

	//**Skullfly**
	if(abil==4){
	sprite_index=skell_butterfly
	sped=1.8+random(0.5)
	image_speed=0.5
	duration=150
	}else{

	//**SkellFire**
	if(abil==5){
	depth=25
	image_index=irandom(4)
	sprite_index=skell_fire
	image_speed=0.3+random(0.2)
	image_angle=270
	}else{

	//**PotionforMinion**
	if(abil==6){
	depth=25
	sprite_index=skell_minion_potion
	image_speed=0
	}
	}

	}}}}}

	}else{

	//******************Forest******************
	if(argument0==3){
	//SPORES
	if(abil==0){
	delay=0
	sprite_index=mush_spore
	image_speed=0
	image_index=irandom(6)
	duration=220+irandom(20)


	direction=(num*2.5)+45

	}else{

	//SHROOM PROJ
	if(abil==1){
	delay=0
	damage=2
	sprite_index=mushroomproj_spr
	image_speed=0
	image_index=0
	duration=120
	speed=(point_distance(x,y,Me.x+10,Me.y)*0.1)
	if(speed>10){
	speed=10
	}
	gravity=0.1
	direction=point_direction(x,y,Me.x+10,Me.y)
	direction-=25
	direction+=num*25

	}

	}}else{

	//******************Desert******************
	if(argument0==4){
	//Spear
	if(abil==0){
	gravity=0.0025
	sprite_index=enemyweps_spr
	duration=260
	diddmg=0
	damage=2
	speed=6
	image_angle=direction

	}
	}

	}}



}
