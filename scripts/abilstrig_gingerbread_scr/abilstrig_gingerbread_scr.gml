function abilstrig_gingerbread_scr(argument0) {
	//-------------------------------------------------<<**********<<{Gingerbread cookie}>>**********>>-------------------------------------------------
	if(abil==0){
	if(check==1){
	check=0
	reboundcd=0
	gumspr=-1
	damage=3
	y-=1
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=abil_ginger_cookie
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=abil_snowman_snowball
	}}
	image_index=irandom(image_number)
	image_speed=0
	times=3
	if(Me.direction==0){
	hsp=1.7
	}else{
	hsp=-1.7
	}
	vsp=-0
	if(option==1){
	vsp=0.65
	}else{
	if(option==2){
	vsp=-0.65
	}}
	delay=80
	gv=0
	}

	delay-=1
	x+=hsp
	vsp+=gv
	y+=vsp
	image_angle+=5

	if(phase>-1){
	if(reboundcd>0){
	reboundcd-=1
	}

	if(duration mod 6 ==0){
	if(gumspr!=-1){
	created=instance_create(x+random_range(1,-1),y+random_range(1,-1),Dummy_two_object)
	with(created){
	diddmg=0
	direction=(other.i*10)+random(5)
	pin=50
	depth=4

	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=abil_ginger_block_dis
	image_index=other.gumspr+irandom(1)
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=abil_snowman_block_dis
	image_index=irandom(image_number)
	}}

	image_speed=0
	image_angle=irandom(360)
	hsp=0
	vsp=0
	duration=irandom_range(8,16)
	}}}

	hit=instance_place(x,y,Enemy)
	if(hit!=noone){

	with(hit){
	dr+=other.damage*Control.itemsArray[0,4]
	drdraw+=other.damage*Control.itemsArray[0,4]

	if(hurt<=0){
	hurttick=1
	}}

	phase=-1
	}
	hit=instance_place(x,y,Solid)
	if(hit!=noone){
	if(hit.solidtype==3){
	hit.hurttick=1
	}
	if(hit.solidtype!=50){
	phase=-1
	hsp=0
	vsp=0
	}else{

	if(hit.hp>0){
	duration+=100
	hit.image_index+=1
	hit.jumpdel=20
	hit.hp=0
	damage+=4
	sfx_play_at(choose(snd_christmas_hit1,snd_christmas_hit2),x,y, 0, 90, 150, 0.5, false, 1)
	sfx_play_at(choose(snd_christmas_block1,snd_christmas_block2),x,y, 0, 90, 150, 0.5, false, 1)

	chance=floor(hit.image_index/8)
	for(i=0;i<36;i+=1){
	created=instance_create(hit.x+4,hit.y+4,Dummy_two_object)
	with(created){
	diddmg=0
	direction=(other.i*10)+random(5)
	pin=50
	depth=4

	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=abil_ginger_block_dis
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=abil_snowman_block_distwo
	}}

	image_index=(other.chance*2)+irandom(1)
	image_speed=0
	image_angle=irandom(360)
	other.gumspr=(other.chance*2)
	speed=random_range(0.05,0.75)
	hsp=hspeed
	vsp=vspeed
	speed=0
	duration=irandom_range(16,24)
	}}
	hsp=hsp*-1.1
	//vsp=vsp*-1.2

	}}
	}}


	if(phase==-1){
	phase=-2
	sfx_play_at(choose(snd_christmas_hit1,snd_christmas_hit2),x,y, 0, 90, 150, 0.5, false, 1)

	for(i=0;i<9;i+=1){
	created=instance_create(x,y,Dummy_two_object)
	with(created){
	diddmg=0
	direction=other.i*40
	pin=50
	depth=4

	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=abil_ginger_distwo
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=abil_snowman_block_distwo
	}}

	image_index=irandom(image_number)
	image_speed=0
	image_angle=irandom(360)
	speed=random_range(0.4,0.6)
	hsp=hspeed
	vsp=vspeed
	speed=0
	duration=irandom_range(8,16)
	}}

	}else{
	if(phase==-2){
	instance_destroy()
	}}

	}else{
	//-------------------------------------------------<<**********<<{Gingerbread Turret}>>**********>>-------------------------------------------------
	if(abil==1){
	if(y<room_height){
	if(phase==0){
	if(check==1){
	check=0
	safety=8
	y-=2
	Me.abiloptfour=id
	if(Me.abiloptthree==0){
	destroybuffer=0
	Me.abiloptthree=1
	dmgtotal=8
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=abil_ginger_cookiesmall
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=abil_snowman_snowman_small
	}}
	image_speed=0
	if(Me.direction==0){
	while(instance_place(x,y,Solid)){
	safety-=1
	x-=1
	y-=0.5
	if(safety<=0){
	Control.charcdArray[Me.charid,1]=0
	Me.abiloptthree=0
	instance_destroy()
	}}
	}else{
	while(instance_place(x,y,Solid)){
	safety-=1
	x+=1
	y-=0.5
	if(safety<=0){
	Control.charcdArray[Me.charid,1]=0
	Me.abiloptthree=0
	instance_destroy()
	}}
	}
	hsp=0
	vsp=1
	duration=1200
	}else{

	//Already Active
	Me.abiloptthree=2
	instance_destroy()
	hsp=0
	vsp=1
	}
	}
	Control.charcdArray[Me.charid,1]=120
	//COOKIE PHASE
	hit=instance_place(x,y+vsp,Solid)
	if(hit==noone){
	y+=vsp
	}else{
	phase=1
	check=1
	y=hit.y-8
	}
	mask_index=sprite_index
	}else{

	//DESTROY CHECK
	if(instance_place(x,y,Dummy_object)||instance_place(x,y,Enemy)){
	Me.abiloptthree=0
	for(i=0;i<9;i+=1){
	created=instance_create(x,y+8,Dummy_two_object)
	with(created){
	diddmg=0
	direction=other.i*40+random(5)
	pin=50
	depth=4

	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=abil_santa_slam_dis
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=abil_snowman_dis
	}}

	image_index=irandom(image_number)
	image_speed=0
	image_angle=irandom(360)
	speed=random_range(0.25,0.5)
	hsp=hspeed
	vsp=vspeed
	speed=0
	duration=irandom_range(18,32)
	}}
	/*
	with(Me){
	if(dmgsafety<=0){
	dmgsafety=3
	//DAMAGE
	dr+=1
	drdraw+=1
	if(hurt<=0){
	hurttick=1
	}}}
	*/
	instance_destroy()
	}

	if(!instance_place(x,y+0.5,Solid)){
	y+=0.5
	}else{
	if(instance_place(x,y,Solid)){
	y-=0.5
	}}

	//TURRET PHASE
	if(check==1){
	check=0
	attcd=0
	y-=2
	image_speed=0.05

	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=abil_ginger_breadman
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=abil_snowman_snowman
	}}
	mask_index=sprite_index
	}

	if(attcd<24){
	if(image_index>=2){
	image_index=0
	}}

	if(attcd<=0){
	if(Control.charcdArray[Me.charid,0]==50){
	attcd=50
	image_speed=0
	image_index=2
	if(Me.direction==0){
	dir=0
	}else{
	dir=1
	image_xscale=-1
	}}}else{
	attcd-=1
	if(attcd==50||attcd==44||attcd==30){
	image_index+=1
	}else{
	if(attcd==36){
	//Turret Attack
	sfx_play_at(choose(snd_christmas_throw1,snd_christmas_throw2),x,y, 0, 90, 150, 0.5, false, 1)
	for(i=0;i<3;i+=1){
	created=instance_create(x,y+9,Dummy_two_object)
	with(created){
	pin=52
	duration=70
	damage=1.5
	phase=0
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=abil_ginger_turret_proj
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=abil_ginger_turret_proj
	}}
	image_index=irandom(image_number)
	image_speed=0
	times=3
	if(other.dir==0){
	if(other.i==1){
	hsp=1.5
	}else{
	hsp=1.25
	}}else{
	if(other.i==1){
	hsp=-1.5
	}else{
	hsp=-1.25
	}}
	vsp=(other.i*0.25)-0.25
	if(Control.con_h_down||Control.conp_h_down){
	vsp=0.6+(other.i*0.25)-0.25
	}else{
	if(Control.con_h_up||Control.conp_h_up){
	vsp=-0.6+(other.i*0.25)-0.25
	}}}
	}
	}else{
	if(attcd==24){
	image_index=0
	image_xscale=1
	image_speed=0.05
	}}}}

	duration=40

	if(Me.abiloptthree==2){
	Me.abiloptthree=0
	for(i=0;i<9;i+=1){
	created=instance_create(x,y+8,Dummy_two_object)
	with(created){
	diddmg=0
	direction=other.i*40+random(5)
	pin=50
	depth=4

	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=abil_santa_slam_dis
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=abil_santa_slam_dis
	}}

	image_index=irandom(image_number)
	image_speed=0
	image_angle=irandom(360)
	speed=random_range(0.25,0.5)
	hsp=hspeed
	vsp=vspeed
	speed=0
	duration=irandom_range(18,32)
	}}
	savex=Me.x+8+4
	savey=Me.y+4
	Me.x=x-8-4
	Me.y=y-4
	Me.hsp=0
	Me.vsp=0
	x=savex
	y=savey
	phase=0
	check=1
	sfx_play_at(choose(snd_christmas_throw1,snd_christmas_throw2),x,y, 0, 90, 150, 0.5, false, 1)
	//Death burst
	for(i=0;i<9;i+=1){
	created=instance_create(x,y+9,Dummy_two_object)
	with(created){
	pin=52
	duration=30
	damage=1
	phase=0
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=abil_ginger_turret_proj
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=abil_ginger_turret_proj
	}}
	image_index=irandom(image_number)
	image_speed=0
	times=3
	direction=180-42*other.i
	speed=1
	hsp=hspeed
	vsp=vspeed
	speed=0
	}}
	}

	if(x<__view_get( e__VW.XView, 0 )-6||x>__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+6||y<__view_get( e__VW.YView, 0 )-6||y>__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )+6){
	if(destroybuffer<40){
	destroybuffer+=1
	}else{
	Me.abiloptthree=0
	instance_destroy()
	}}else{
	destroybuffer=0
	}

	}}else{
	Me.abiloptthree=0
	instance_destroy()
	}


	}else{
	//-------------------------------------------------<<**********<<{Gum drop}>>**********>>-------------------------------------------------
	if(abil==2){
	if(check==1){
	check=0
	Me.vsp=-2
	abilworks=0
	ycheck=Me.y+20
	Me.abilopttwo=3
	with(Me){
	if(instance_place(x,y-16,Solid)){
	other.abilworks=1
	}else{

	y=other.ycheck-16
	}}


	if(abilworks==0){
	if(Me.grounded==1){
	ycheck-=8
	Me.y-=8
	}
	sfx_play_at(choose(snd_christmas_sound1,snd_christmas_sound2),x,y, 0, 90, 150, 0.5, false, 1)
	sfx_play_at(choose(snd_christmas_block1,snd_christmas_block2),x,y, 0, 90, 150, 0.5, false, 1)
	created=instance_create(Me.x+4,ycheck+4,Dummy_solid)
	with(created){
	hurttick=0
	jumpdel=0
	duration=1

	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=abil_ginger_block
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=abil_snowman_block
	}}
	image_index=Me.abilopt*8
	Me.abilopt+=1
	if(Me.abilopt==5){
	Me.abilopt=0
	}
	image_speed=0
	hp=5
	imgsave=image_index
	visible=true
	solidtype=50
	}}}
	instance_destroy()

	}}}



}
