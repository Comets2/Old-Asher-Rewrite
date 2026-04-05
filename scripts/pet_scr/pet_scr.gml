function pet_scr(argument0) {

	if(abilpassive==1){
	pet=instance_create(x,y-20,Dummy_two_object)
	with(pet){

	attacktype=0
	delaytotal=15
	delaytwo=60

	if(argument0==3||argument0==8){

	if(argument0==3){
	//Bee
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=pet_bee_spr
	normalspr=pet_bee_spr
	cdspr=pet_bee_cd_spr
	attspr=pet_bee_attack_spr

	snd1=snd_bee_stinger1
	snd2=snd_bee_stinger1
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=pet_scare_spr
	normalspr=pet_scare_cd_spr
	cdspr=pet_scare_spr
	attspr=pet_scare_attack_spr

	snd1=snd_burger_fries_hit1
	snd2=snd_burger_fries_hit2
	}else{
	sprite_index=pet_bee_spr
	normalspr=pet_bee_spr
	cdspr=pet_bee_cd_spr
	attspr=pet_bee_attack_spr
	}}
	}else{

	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=pet_ginger_spr
	normalspr=pet_ginger_spr
	cdspr=pet_ginger_spr
	attspr=pet_ginger_attack_spr

	snd1=snd_christmas_bell1
	snd2=snd_christmas_bell2
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=pet_ginger_spr1
	normalspr=pet_ginger_spr1
	cdspr=pet_ginger_spr1
	attspr=pet_ginger_spr11

	snd1=snd_christmas_bell1
	snd2=snd_christmas_bell2
	}
	}}

	sped=2.2
	aura=0
	auratick=0
	aura_spr=0
	attacktype=1
	attacktick=0
	flytick=1
	image_speed=0.2
	}else{
	
	if(argument0==1){
	//Bat
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
		disspr=pet_dove_dis_spr
	sprite_index=pet_dove1_spr
	normalspr=pet_dove1_spr
	attspr=pet_dove1_attack_spr
	cdspr=abil_witch3_alt1
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	disspr=abil_witch_part1_alt1
	sprite_index=pet_bat1_spr
	normalspr=pet_bat1_spr
	attspr=pet_bat1_spr
	cdspr=abil_witch3
	}}

	snd1=snd_bat1
	snd2=snd_bat2
	sped=2.5
	aura=1
	auratick=1

	//Bat
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	aura_spr=abil_witch_part1_alt1
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	aura_spr=abil_witch_part1
	}}
	attacktype=2
	attacktick=1
	flytick=1
	image_speed=0.2
	}else{
	
	if(keyboard_check_pressed(ord("3"))){
	//Mushroom
	attacktype=0
	sprite_index=mushroomproj_spr
	normalspr=pet_mushroom_spr
	cdspr=pet_mushroom_cd_spr
	attspr=pet_mushroom_spr
	snd1=snd_bee_stinger1
	snd2=snd_bee_stinger1
	sped=3
	aura=0
	auratick=0
	aura_spr=0
	attacktype=20
	attacktick=0
	flytick=0
	image_speed=0.1
	}else{
	
	if(argument0==0||argument0==7){
	leash=0

	if(argument0==0){
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=pet_totem_spr
	normalspr=pet_totem_spr
	cdspr=pet_totem_spr
	attspr=pet_totem_spr
	snd1=pump_abil1_snd1
	snd2=pump_abil1_snd2
	aura_spr=pet_totem_dis_spr
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=pet_pumpkin_spr
	normalspr=pet_pumpkin_spr
	cdspr=pet_pumpkin_spr
	attspr=pet_pumpkin_spr
	snd1=pump_abil1_snd1
	snd2=pump_abil1_snd2
	aura_spr=pet_bat_dis_spr
	}}}else{

	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	//Present
	attacktype=0
	sprite_index=pet_present_spr
	normalspr=pet_present_spr
	cdspr=pet_present_spr
	attspr=pet_present_spr
	snd1=pump_abil1_snd1
	snd2=pump_abil1_snd2
	aura_spr=abil_santa_slam_dis
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=abil_king_crown
	normalspr=abil_king_crown
	cdspr=abil_king_crown
	attspr=abil_king_crown
	snd1=pump_abil1_snd1
	snd2=pump_abil1_snd2
	aura_spr=abil_king_slam_dis
	}}
	}

	sped=2
	aura=2
	auratick=0
	attacktype=3
	attacktick=1
	flytick=1
	image_index=irandom(image_number)
	image_speed=0
	created=instance_create(x,y+4,Dummy_three_object)
	with(created){
	pin=1000
	sprite_index=pet_balloon_spr
	if(argument0==0){
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=pet_totem_back_spr
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=pet_pumpkin_back_spr
	}}
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=pet_balloon_spr
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=dummy_spr
	}}
	}
	image_speed=0.03
	depth=5
	}
	}else{

	if(argument0==4||argument0==5){
	
	//TREE PIRATE
	if(argument0==4){
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	//Parrot
	sprite_index=pet_owl_spr
	normalspr=pet_owl_spr
	cdspr=pet_owl_spr
	attspr=pet_owl_attack_spr
	snd1=snd_burger_fries_hit1
	snd2=snd_burger_fries_hit2
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	//Parrot
	sprite_index=pet_parrot_spr
	normalspr=pet_parrot_spr
	cdspr=pet_parrot_spr1
	attspr=pet_parrot_attack_spr
	snd1=snd_burger_fries_hit1
	snd2=snd_burger_fries_hit2
	}}
	}else{
	//BURGER BAKER
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	//Parrot
	sprite_index=pet_burger_spr
	normalspr=pet_burger_spr
	cdspr=pet_burger_spr
	attspr=pet_burger_attack_spr
	snd1=snd_burger_fries_hit1
	snd2=snd_burger_fries_hit2
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	//Parrot
	sprite_index=pet_cupcake_spr
	normalspr=pet_cupcake_spr
	cdspr=pet_cupcake_spr
	attspr=pet_cupcake_attack_spr
	snd1=snd_burger_fries_hit1
	snd2=snd_burger_fries_hit2
	}}
	}

	sped=2.6
	aura=0
	auratick=0
	aura_spr=0
	attacktype=1
	attacktick=1
	attackdelaytotal=30
	delaytotal=25
	flytick=1
	image_speed=0.25
	}else{

	if(argument0==2||argument0==6||argument0==7||argument0==8){
	
	
		image_speed=0.2
	//Ghost
	sprite_index=pet_ghost_spr
	normalspr=pet_ghost_spr
	cdspr=pet_ghost_spr
	attspr=pet_ghost_attack_spr
	snd1=snd_burger_fries_hit1
	snd2=snd_burger_fries_hit2
	if(argument0==2){
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=pet_skull_spr
	normalspr=pet_skull_spr
	cdspr=pet_skull_spr
	attspr=pet_skull_spr
	snd1=snd_burger_fries_hit1
	snd2=snd_burger_fries_hit2
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=pet_yeti_spr
	normalspr=pet_yeti_spr
	cdspr=pet_yeti_spr
	attspr=pet_yeti_spr
	snd1=snd_burger_fries_hit1
	snd2=snd_burger_fries_hit2
	}}
	}else{

	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
		image_speed=0.8
	sprite_index=pet_mech_spr
	normalspr=pet_mech_spr
	cdspr=pet_mech_spr
	attspr=pet_mech_spr
	snd1=snd_burger_fries_hit1
	snd2=snd_burger_fries_hit2
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=pet_ghost_spr
	normalspr=pet_ghost_spr
	cdspr=pet_ghost_spr
	attspr=pet_ghost_attack_spr
	snd1=snd_burger_fries_hit1
	snd2=snd_burger_fries_hit2
	}}
	}

	sped=2.2
	aura=0
	auratick=0
	aura_spr=0
	attacktype=1
	attacktick=10
	flytick=1
	tick=0
	}else{

	}}}}}
	}

	phase=1
	movetick=0

	target=Me
	targeted=0
	pin=650
	delay=0
	damage=1
	float=1
	floatrange=1
	floatspeed=0.05
	yextra=0
	attdel=0
	attackdir=0
	attackdurationtotal=15
	attackduration=0
	diddmg=0
	timer=0
	spedtotal=sped
	depth=4
	}
	}


	//--------------------------------------------<<<******Always Script******>>>--------------------------------------------
	if(pet!=0){
	if(instance_exists(pet)){
	with(pet){
	timer+=1

	//-----------------------------<<<**Movement**>>>-----------------------------
	if(flytick==1){

	//Constant
	if(attacktype==1){
	//Parrot Feather
	if(attacktick==1){
	if(delaytwo>0){
	delaytwo-=1
	}else{
	created=instance_create(x,y+4,Dummy_two_object)
	with(created){
	pin=654
	sfx_play_at(choose(other.snd1,other.snd2),x,y+4, 0, 110, 150, 0.2, false, 1) 

	if(argument0==4){
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=pet_owl_bullet_spr
	disspr=pet_owl_dis_spr
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=pet_parrot_bullet_spr
	disspr=pet_parrot_dis_spr
	}}
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=pet_burger_bullet_spr
	disspr=abil_burger_pieces_spr
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=pet_cupcake_bullet_spr
	disspr=abil_burger_pieces_alt1_spr
	}}
	}

	tick=0
	phase=0

	duration=400
	image_speed=0
	image_index=irandom(image_number)
	}
	delaytwo=60
	}}else{

	//Ghost Attack Hands
	if(attacktick==10){
	if(tick<4&&delaytwo<=0){
	//Ghost Bolt
	tick+=1
	delaytwo=45
	created=instance_create(x,y+4,Dummy_two_object)
	with(created){
	pin=655
	target=0
	creator=other.id
	num=other.tick
	floattick=0
	floatextra=0
	if(num==2){
	xtrax=7
	xtray=-7
	image_angle=250
	imgturn=5
	image_xscale=-1
	}else{
	if(num==1){
	xtrax=-7
	xtray=-7
	image_angle=290
	imgturn=-5
	}else{
	if(num==4){
	xtrax=-7
	xtray=7
	image_angle=290
	imgturn=-5
	}else{
	if(num==3){
	xtrax=7
	xtray=7
	image_angle=250
	imgturn=5
	image_xscale=-1
	}
	}}}
	phase=0
	depth=6
	image_speed=0.15
	sfx_play_at(choose(other.snd1,other.snd2),x,y+4, 0, 110, 150, 0.2, false, 1) 

	if(argument0==2){
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=pet_skuller_part_spr
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
		sprite_index=pet_yeti_part_spr
	//sprite_index=pet_ghost_part_spr
	}}}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=pet_mech_bullet_spr
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
		sprite_index=pet_ghost_part1_spr
	//disspr=pet_ghost_part1_spr
	}}
	}
	if(Me.direction==0){
	xsped=1.5
	}else{
	xsped=-1.5
	}
	startdel=0

	if(argument0==2){
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	disspr=pet_skuller2_part_spr
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
		disspr=pet_yeti_dis_spr
	//disspr=pet_ghost_part1_spr
	}}
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	disspr=abil_robo_plasmashot_pieces_spr
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
		disspr=pet_ghost_part1_spr
	//disspr=pet_ghost_part1_spr
	}}
	}

	ysped=0
	phase=0
	duration=45
	damage=0.75
	}
	}else{
	delaytwo-=1
	}
	}
	}}

	if(aura!=0){
	if(aura==1){
	for(i=0;i<1;i+=1){
	created=instance_create(x+random(3)*choose(1,-1),y+random(3)*choose(1,-1),Dummy_two_object)
	with(created){
	damage=0.01
	diddmg=1
	direction=other.i*40+random(5)
	pin=653
	depth=4

	sprite_index=other.aura_spr

	image_index=irandom(image_number)
	image_speed=0
	image_angle=irandom(360)
	hsp=hspeed
	vsp=random_range(0.4,1.2)
	duration=irandom_range(3,6)
	}}
	}else{
	if(timer mod 2==0){
	for(i=0;i<1;i+=1){
	createdtwo=instance_create(x+random(3)*choose(1,-1),y+random(3)*choose(1,-1),Dummy_two_object)
	with(createdtwo){
	damage=0.01
	diddmg=1
	direction=other.i*40+random(5)
	pin=653
	depth=4

	sprite_index=other.aura_spr

	image_index=irandom(image_number)
	image_speed=0
	image_angle=irandom(360)
	hsp=hspeed
	vsp=random_range(0.2,0.6)
	duration=irandom_range(5,8)
	}}}}
	}

	if(target==Me){
	if(x<Me.x+10-sped-15){
	x+=sped
	image_xscale=1
	dir=0
	}else{
	if(x>Me.x+10+sped+15){
	x-=sped
	image_xscale=-1
	dir=1
	}}
	if(y<Me.y+7-sped-1+yextra){
	y+=sped
	}else{
	if(y>Me.y+7+sped+1+yextra){
	y-=sped
	}}
	}else{


	//OTHER TARGET
	if(target!=0){
	if(instance_exists(target)){
	if(x<target.x+target.xmid+2-sped){
	x+=sped
	image_xscale=1
	dir=0
	}else{
	if(x>target.x+target.xmid+2+sped){
	x-=sped
	image_xscale=-1
	dir=1
	}}
	if(y<target.y+target.ymid+2-sped){
	y+=sped
	}else{
	if(y>target.y+target.ymid+2+sped){
	y-=sped
	}}}else{
	target=Me
	sped=spedtotal
	}}
	}
	//Idle
	if(float!=0){
	if(float==1){
	if(yextra<floatrange){
	yextra+=floatspeed
	y+=floatspeed
	}else{
	float=2
	}}else{
	if(yextra>-floatrange){
	yextra-=floatspeed
	y-=floatspeed
	}else{
	float=1
	}}}
	}else{

	//-----------------------------<<<**Jump Pad Turret**>>>-----------------------------
	if(flytick==0){
	if(phase==1){
	x=Me.x+10
	y=Me.y+12
	phase=2
	}else{
	//Falling
	if(phase==2){
	hit=instance_place(x,y+4,Solid)
	if(hit!=noone){
	y=hit.y-16
	x=hit.x
	if(instance_place(x,y-1,Solid)){
	instance_destroy()
	}else{
	phase=3
	sprite_index=normalspr
	startx=x
	starty=y
	if(attacktype==20){
	solidcreate=instance_create(x,y,Dummy_solid)
	with(solidcreate){
	sprite_index=solid_spr
	image_speed=0
	visible=false
	solidtype=650
	}}
	if(hit.image_index!=0){
	instance_destroy()
	}
	}}else{
	y+=sped
	}}else{

	//Turret Phase
	if(phase==3){
	//springboard
	if(attacktype==20){
	if(image_index>=0&&image_index<1){
	y=starty+1
	}else{
	y=starty
	}
	if(attacktick==1){
	attacktick=2
	if(sprite_index!=cdspr){
	sprite_index=cdspr
	image_index=0
	image_speed=0.4
	}
	}else{
	if(attacktick==2){
	if(image_index>=3){
	sprite_index=normalspr
	image_index=0
	image_speed=0.1
	}
	}}
	//Gumdrop
	with(Me){
	hit=instance_place(x,y+1,Solid)
	if(vsp>0){
	hit=instance_place(x+hsp,y+vsp,Dummy_solid)
	if(hit!=noone){
	if(hit.solidtype==650){
	hittwo=instance_place(x,y,Dummy_solid)
	if(hittwo!=noone){
	if(!instance_place(x,y-20,Solid)){
	y=hittwo.y-20
	}else{
	other.phase=4
	}
	}

	for(i=0;i<6;i+=1){
	created=instance_create(hit.x+8,hit.y+10,Dummy_two_object)
	with(created){
	pin=652
	sprite_index=mushroomproj_spr1
	disspr=pet_mushroom_dis_spr
	ysped=0
	startdel=4
	if(other.i==1){
	xsped=3
	}else{
	if(other.i==2){
	xsped=-3
	}else{
	if(other.i==3){
	xsped=-3
	ysped=-1
	}else{
	if(other.i==4){
	xsped=3
	ysped=-1
	}else{
	if(other.i==5){
	xsped=-3.5
	ysped=-0.5
	}else{
	xsped=3.5
	ysped=-0.5
	}}}}}
	phase=0
	duration=15
	damage=0.4
	}}

	sfx_play(choose(snd_christmas_block1,snd_christmas_block2),1, false)
	sfx_play_at(choose(snd_christmas_sound1,snd_christmas_sound2),x,y, 0, 90, 150, 0.5, false, 1)
	abilopttwo=1
	if(Control.con_p_space||Control.conp_p_space||Control.con_h_space||Control.conp_h_space){
	vsp=-6.5
	}else{
	vsp=-6
	}
	other.attacktick=1
	}}}}
	}
	}else{
	with(solidcreate){
	instance_destroy()
	}
	instance_destroy()

	}}}}
	}



	//-----------------------------<<<**Attack**>>>-----------------------------
	if(attacktype>0&&attacktype<20){

	//Constant check

	//Targeted Attack
	if(attacktype==3){
	if(target!=Me){
	if(leash<120){
	leash+=1
	}else{
	leash=0
	target=Me
	}
	}
	if(delay>0){
	created.y-=2.5
	}else{
	if(image_xscale==1){
	created.x=x
	}else{
	created.x=x-1
	}
	created.y=y
	}
	if(attacktick==1){
	if(target==Me){
	with(Enemy){
	if(point_distance(Me.x+10,Me.y+10,x+sprite_width/2,y+sprite_height/2)<merange){
	if(hurttick>0){
	other.target=id
	other.sped=4
	}}}
	}else{
	if(instance_place(x,y,target)){
	attacktick=2
	delay=60
	image_index=irandom(image_number)
	sped=1.8
	with(target){
	dr+=2.5*Control.itemsArray[0,4]+((Control.maskArray[Control.charArray[Control.charselected,8],0]-8)*0.01)
	drdraw+=2.5*Control.itemsArray[0,4]+((Control.maskArray[Control.charArray[Control.charselected,8],0]-8)*0.01)

	if(hurt<=0){
	hurttick=1
	}}

	for(i=0;i<32;i+=1){
	createdtwo=instance_create(x,y,Dummy_two_object)
	with(createdtwo){
	damage=0.01
	diddmg=1
	direction=other.i*20+random(5)
	pin=653
	depth=4

	sprite_index=pet_fetti_spr
	if(argument0==0){
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=pet_totem_dis_spr
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=pet_pumpkin_dis_spr
	}}
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=abil_santa_slam_dis
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=abil_king_slam_dis
	}}
	}

	image_index=irandom(image_number)
	image_speed=0
	image_angle=irandom(360)
	speed=random_range(0.2,0.8)
	hsp=hspeed
	vsp=vspeed
	speed=0
	duration=irandom_range(7,15)
	}}
	for(i=0;i<4;i+=1){
	createdtwo=instance_create(x,y,Dummy_two_object)
	with(createdtwo){
	diddmg=0
	direction=other.i*90+45
	depth=5
	pin=653
	damage=0.01
	//sprite_index=abil_santa_present_dis
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=abil_witch_part1_alt1
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=abil_witch_part1
	}}

	if(other.image_index==0){
	image_index=0
	}else{
	if(other.image_index==1){
	image_index=4
	}else{
	image_index=8
	}}
	image_index+=other.i

	image_speed=0
	image_angle=irandom(360)
	speed=random_range(0.5,0.6)
	hsp=hspeed
	vsp=vspeed
	speed=0
	duration=irandom_range(20,22)
	}}
	y=-300
	target=0
	}
	}}else{
	if(attacktick==2){
	x=Me.x
	y=Me.y-300
	target=Me
	attacktick=0
	}else{
	if(attacktick==0){
	if(point_distance(x,y,Me.x+10,Me.y+10)<32){
	attacktick=1
	sped=2
	}
	}}}}

	if(delay>0){
	if(delay<=delaytotal-5&&delay>=delaytotal-7){
	sprite_index=cdspr
	}
	delay-=1
	}else{
	if(attackduration<=0){
	if(auratick==1){
	aura=1
	}
	sprite_index=normalspr
	if(Control.con_p_e||Control.conp_p_e){

	//STINGER ATTACK
	if(attacktype==1){
	delay=delaytotal
	sprite_index=attspr
	image_index=0
	if(Me.direction==0){
	image_xscale=1
	}else{
	image_xscale=-1
	}
	if(attacktick==1){

	for(i=0;i<5;i+=1){
	created=instance_create(x,y+4,Dummy_two_object)
	with(created){
	pin=652
	sfx_play_at(choose(other.snd1,other.snd2),x,y+4, 0, 110, 150, 0.2, false, 1) 

	if(argument0==4){
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=pet_owl_bullet_spr
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=pet_parrot_bullet_spr
	}}
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=pet_burger_bullet_spr
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=pet_cupcake_bullet_spr
	}}
	}


	ysped=choose(random_range(0,0.5),random_range(0,-0.5))
	if(Me.direction==0){
	xsped=random_range(2.8,3.9)
	image_angle-=ysped*10
	}else{
	xsped=-random_range(2.8,3.9)
	image_angle+=ysped*10
	}
	startdel=0

	if(argument0==4){
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	disspr=pet_owl_dis_spr
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	disspr=pet_parrot_dis_spr
	}}
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	disspr=abil_bee2_part2
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	disspr=pet_parrot_dis_spr
	}}
	}

	image_xscale=other.image_xscale
	phase=0
	duration=15+random(4)
	damage=0.3
	image_speed=0
	image_index=irandom(image_number)
	}}}else{
	if(attacktick==0){
	created=instance_create(x,y+4,Dummy_two_object)
	with(created){
	pin=652
	sfx_play_at(choose(other.snd1,other.snd2),x,y+4, 0, 110, 150, 0.2, false, 1) 

	if(argument0==3){
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=abil_bee1
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=abil_bee1_witch
	}}
	}else{
	sprite_index=abil_ginger_turret_proj
	}
	if(Me.direction==0){
	xsped=6
	}else{
	xsped=-6
	}
	startdel=0

	if(argument0==3){
	disspr=abil_bee2_part2
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	disspr=abil_bee2_part2
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	disspr=pet_bat_dis_spr
	}}
	}else{
	disspr=abil_santa_slam_dis
	}


	image_xscale=other.image_xscale
	ysped=0
	phase=0
	duration=15
	damage=other.damage
	}
	}else{

	//Ghost Bolt


	}}}else{

	//CHARGE ATTACK
	if(attacktype==2){
	delay=delaytotal

	sfx_play_at(choose(snd1,snd2),x,y+4, 0, 110, 150, 0.2, false, 1) 

	//Bat
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=pet_dove1_attack_spr
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=pet_bat1_attack_spr
	}}
	target=0
	x+=sped
	if(Me.direction==0){
	attackdir=0
	}else{
	attackdir=1
	}
	attackduration=attackdurationtotal
	}else{

	}}}}
	}

	//PROLONGED ATTACK
	if(attackduration>0){
	attackduration-=1
	if(attacktype==2){
	if(attacktick==1){
	if(attackdir==0){
	x+=sped*3
	}else{
	x-=sped*3
	}

	for(i=0;i<10;i+=1){
	created=instance_create(x+random(3)*choose(1,-1),y+random(3)*choose(1,-1),Dummy_two_object)
	with(created){
	damage=0.01
	diddmg=1
	direction=other.i*40+random(5)
	pin=653
	depth=4

	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=choose(abil_witch_part1_alt1,pet_dove_dis_spr)
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=choose(abil_witch_part1,pet_bat_dis_spr)
	}}

	image_index=irandom(image_number)
	image_speed=0
	image_angle=irandom(360)
	if(other.attackdir==0){
	hsp=random_range(-2,-1)
	}else{
	hsp=random_range(2,1)
	}
	vsp=0
	duration=irandom_range(3,5)
	}}

	hit=instance_place(x,y,Enemy)
	if(hit!=noone){
	with(hit){
	dr+=other.damage*Control.itemsArray[0,4]+((Control.maskArray[Control.charArray[Control.charselected,8],0]-8)*0.01)
	drdraw+=other.damage*Control.itemsArray[0,4]+((Control.maskArray[Control.charArray[Control.charselected,8],0]-8)*0.01)

	if(hurt<=0){
	hurttick=1
	}}
	diddmg=1
	attackduration=0
	}
	if(attackduration==0||instance_place(x,y,Solid)){
	attackduration=2
	attacktick=2

	aura=0

	for(i=0;i<18;i+=1){
	created=instance_create(x,y,Dummy_two_object)
	with(created){
	damage=0.01
	diddmg=0
	direction=other.i*40+random(5)
	pin=653
	depth=4

	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=choose(abil_witch_part1_alt1,pet_dove_dis_spr)
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=choose(abil_witch_part1,pet_bat_dis_spr)
	}}

	image_index=irandom(image_number)
	image_speed=0
	image_angle=irandom(360)
	speed=random_range(0.05,0.5)
	hsp=hspeed
	vsp=vspeed
	speed=0
	duration=irandom_range(12,16)
	}}

	//Bat
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=abil_witch3_alt1
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=abil_witch3
	}}

	}}else{

	//RETURN
	if(y<Me.y+7-sped-1+yextra){
	y+=sped
	}else{
	if(y>Me.y+7+sped+1+yextra){
	y-=sped
	}}
	//ITEM
	with(Item){
	if(point_distance(x,y,other.x,other.y)<16){
	if(hsp>0){
	x=other.x+1
	}else{
	x=other.x-1
	}
	y=other.y
	}}
	attackduration=2
	if(attackdir==0){
	if(x>Me.x+10+15){
	x-=sped
	image_xscale=-1
	dir=1
	}else{
	target=Me
	attackduration=0
	attacktick=1
	}}else{
	if(x<Me.x+10-15){
	x+=sped
	image_xscale=1
	dir=0
	}else{
	target=Me
	attackduration=0
	attacktick=1
	}}

	if(attackduration==0){
	//Bat
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=pet_dove1_spr
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=pet_bat1_spr
	}}
	delay=0
	target=Me
	if(Me.direction==0){
	image_xscale=1
	dir=0
	}else{
	image_xscale=-1
	dir=1
	}
	}
	}}

	}}

	}}


	//-----------------------------<<<**Projectile**>>>-----------------------------
	if(instance_exists(Dummy_two_object)){
	with(Dummy_two_object){
	if(pin==652){
	x+=xsped
	y+=ysped
	if(duration>0){
	duration-=1
	}else{
	phase=-1
	}

	if(startdel<=0){
	if(instance_place(x,y,Solid)){
	phase=-1
	}}else{
	startdel-=1
	}
	hit=instance_place(x,y,Enemy)
	if(hit!=noone){
	phase=-1
	hit.dr+=damage*Control.itemsArray[0,4]+((Control.maskArray[Control.charArray[Control.charselected,8],0]-8)*0.01)
	hit.drdraw+=damage*Control.itemsArray[0,4]+((Control.maskArray[Control.charArray[Control.charselected,8],0]-8)*0.01)
	if(hit.hurt<=0){
	hit.hurttick=1
	}
	}

	if(phase==-1){
	for(i=0;i<18;i+=1){
	created=instance_create(x,y,Dummy_two_object)
	with(created){
	damage=0.01
	diddmg=0
	direction=other.i*40+random(5)
	pin=653
	depth=4

	sprite_index=other.disspr

	image_index=choose(0,1,2)
	image_speed=0
	image_angle=irandom(360)
	speed=random_range(0.05,0.6)
	hsp=hspeed
	vsp=vspeed
	speed=0
	duration=irandom_range(4,6)
	}}
	instance_destroy()
	}
	}else{

	//Confetti disperse
	if(pin==653){
	x+=hsp
	y+=vsp
	if(duration>0){
	duration-=1
	if(diddmg==0){
	hit=instance_place(x,y,Enemy)
	if(hit!=noone){
	with(hit){
	dr+=other.damage*Control.itemsArray[0,4]+((Control.maskArray[Control.charArray[Control.charselected,8],0]-8)*0.01)
	drdraw+=other.damage*Control.itemsArray[0,4]+((Control.maskArray[Control.charArray[Control.charselected,8],0]-8)*0.01)

	if(hurt<=0){
	hurttick=1
	}}
	diddmg=1
	}}
	}else{
	instance_destroy()
	}}else{
	//Feather
	if(pin==654){
	if(phase==0){

	if(!instance_place(x,y,Solid)){
	y+=0.2
	if(tick==1){
	if(image_angle>0-15){
	x+=0.15
	image_angle-=1
	}else{
	tick=2
	}}else{
	if(image_angle<15){
	x-=0.15
	image_angle+=1
	}else{
	tick=1
	}}
	}
	if(instance_place(x,y,Me)){
	if(!Me.slow==0){
	instance_destroy()
	}
	phase=1
	tick=1
	duration=16
	visible=false
	}
	if(duration>0){
	duration-=1
	}else{
	instance_destroy()
	}}else{
	//Speed Me Phase
	if(phase==1){
	with(Me){
	slowamount=1.75
	slow=1

	sldcheck=instance_place(x,y,Solid)
	if(sldcheck!=noone){
	y-=1
	}

	//Part
	created=instance_create(x+10+random(3)*choose(1,-1),y+15+random(3)*choose(1,-1),Dummy_two_object)
	with(created){
	damage=0
	diddmg=1
	direction=other.i*40+random(5)
	pin=653
	depth=4

	if(argument0==4){
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=pet_owl_dis_spr
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=pet_parrot_dis_spr
	}}
	}else{
	
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=abil_burger_pieces_spr
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=abil_burger_pieces_alt1_spr
	}}
	}

	image_index=irandom(image_number)
	image_speed=0
	image_angle=irandom(360)
	hsp=hspeed
	vsp=random_range(0.4,1.2)
	duration=irandom_range(3,6)
	}}
	if(duration>0){
	duration-=1
	}else{
	phase=2
	}}else{
	if(phase==2){
	with(Me){
	slowamount=1
	slow=0
	}
	instance_destroy()
	}}}}else{

	//Ghost Part
	if(pin==655){

	if(target==0){
	//x+=xsped
	//y+=ysped

	if(phase==0){
	image_angle+=imgturn
	if(x<creator.x+xtrax-creator.sped-1){
	x+=creator.sped+0.1
	}else{
	if(x>creator.x+xtrax+creator.sped+1){
	x-=creator.sped+0.1
	}}
	if(y-floatextra<creator.y+xtray-creator.sped-1){
	y+=creator.sped+0.1
	}else{
	if(y-floatextra>creator.y+xtray+creator.sped+1){
	y-=creator.sped+0.1
	}}
	if(floattick==0){
	if(floatextra<0.8){
	floatextra+=0.1
	y+=0.1
	}else{
	floattick=1
	}}else{
	if(floatextra>-0.8){
	floatextra-=0.1
	y-=0.1
	}else{
	floattick=0
	}}}
	with(Enemy){
	if(point_distance(Me.x+10,Me.y+10,x+sprite_width/2,y+sprite_height/2)<merange){
	if(hurttick>0){
	other.target=id
	other.sped=4
	}}}
	if(target!=0){
	creator.tick-=1
	creator.delaytwo=60
	}
	}else{

	for(i=0;i<2;i+=1){
	created=instance_create(x+random(1.2)*choose(1,-1),y+random(1.2)*choose(1,-1),Dummy_two_object)
	with(created){
	damage=0.01
	diddmg=0
	direction=other.i*40+random(5)
	pin=653
	depth=3


	if(argument0==2){
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=pet_bat_dis_spr
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=pet_yeti_dis_spr
	//sprite_index=pet_ghost_part2_spr
	}}
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=abil_robo_plasmashot_pieces_spr
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
		sprite_index=pet_ghost_part1_spr
	//disspr=pet_ghost_part1_spr
	}}
	}

	image_index=irandom(image_number)
	image_speed=0
	image_angle=irandom(360)
	hsp=0
	vsp=0
	duration=irandom_range(2,3)
	}}

	startdel=200
	if(instance_exists(target)){
	move_towards_point(target.x+target.xmid,target.y+target.ymid,5)
	image_angle=direction

	}else{
	duration=0
	}
	if(duration>0){
	duration-=1
	}else{
	phase=-1
	}

	if(startdel<=0){
	if(instance_place(x,y,Solid)){
	phase=-1
	}}else{
	startdel-=1
	}
	hit=instance_place(x,y,Enemy)
	if(hit!=noone){
	phase=-1
	hit.dr+=damage*Control.itemsArray[0,4]+((Control.maskArray[Control.charArray[Control.charselected,8],0]-8)*0.01)
	hit.drdraw+=damage*Control.itemsArray[0,4]+((Control.maskArray[Control.charArray[Control.charselected,8],0]-8)*0.01)
	if(hit.hurt<=0){
	hit.hurttick=1
	}
	}

	if(phase==-1){
	for(i=0;i<18;i+=1){
	created=instance_create(x,y,Dummy_two_object)
	with(created){
	damage=0.01
	diddmg=0
	direction=other.i*40+random(5)
	pin=653
	depth=4

	sprite_index=other.disspr

	image_index=choose(0,1,2)
	image_speed=0
	image_angle=irandom(360)
	speed=random_range(0.5,1.5)
	hsp=hspeed
	vsp=vspeed
	speed=0
	duration=irandom_range(4,6)
	}}


	instance_destroy()
	}
	}}}}}}}
	}


}
