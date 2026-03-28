function worldtwo_rm3_enemy_scr() {
	//*****************{Grave}*****************
	if(enemytype==1){
	if(check==1){
	y+=1
	hp=120
	dir=0
	check=0
	heart=0
	sprite_index=grave_stone_spr
	mask_index=sprite_index
	image_speed=0
	imgsave=image_index
	selfcreated=instance_create(x,y,Solid_noslope)
	with(selfcreated){
	sprite_index=other.sprite_index
	image_index=other.image_index
	image_speed=0
	}}
	if(hp<=115&&hp>110){
	image_index=imgsave+1
	}else{
	if(hp<=110&&hp>105){
	image_index=imgsave+2
	}else{
	if(hp<=105&&hp>100){
	image_index=imgsave+3
	}else{
	if(hp<=100){
	if(heart==1){
	created=instance_create(x,y,Item)
	created.itemtype=3
	}
	if(metox!=0){
	Me.x=metox
	Me.y=metoy
	}
	hp=0
	}}}}

	with(selfcreated){
	image_index=other.image_index
	}

	}else{

	//*****************{Zombie}*****************
	if(enemytype==2){
	if(point_distance(x+sprite_width/2,y+sprite_height/2,Me.x+10,Me.y+10)<128){
	if(phase==0){
	if(check==1){
	check=0
	sprite_index=zombie_raise_spr
	mask_index=sprite_index
	startx=x
	movespeed=0.6
	range=32
	hp=15
	tick=0
	extraxp=1
	}
	if(image_index>=image_number-1){
	phase=1
	sprite_index=zombie_spr
	mask_index=sprite_index
	}}else{
	//PHASE 1
	if(phase==1){
	if(justhurt==1){
	justhurt=0
	if(Me.x+10<x+10&&dir==0){
	dir=1
	}else{
	if(Me.x+10>x+10&&dir==1){
	dir=0
	}}}

	if(point_distance(x+10,y+10,Me.x+10,Me.y+10)<75){
	if(Me.x+10<x+10&&dir==1||Me.x+10>x+10&&dir==0){
	movespeed=1.2
	}else{
	movespeed=0.6
	}}else{
	movespeed=0.6
	}

	simplemove_scr(0)

	}}}

	}else{

	//*****************{Ghost}*****************
	if(enemytype==3){
	if(check==1){
	atttotal=140
	attdelay=60
	att=0
	hp=116
	check=0
	delay=0
	startx=x
	starty=y-30
	tick=0
	movespeed=0.2
	range=16
	extraxp=1
	sprite_index=ghost_1_2
	mask_index=sprite_index
	arm1=instance_create(x+12,y+8,Dummy_object)
	arm1.pin=70
	arm2=instance_create(x+12,y+8,Dummy_object)
	arm2.pin=70
	with(Dummy_object){
	if(pin==70){
	damage=1
	phase=0
	sprite_index=ghost_arm1
	image_speed=0
	}}
	}

	if(attdelay>0){
	attdelay-=1
	}else{
	if(att==0){
	arm1.phase=1
	arm1.check=1
	att=1
	}else{
	arm2.phase=1
	arm2.check=1
	att=0
	}
	attdelay=atttotal
	}

	if(justhurt==1){
	justhurt=0
	delay=22
	}
	if(image_alpha<1){
	image_alpha+=0.008
	if(arm1.phase==0){
	arm1.image_alpha=image_alpha
	}
	if(arm2.phase==0){
	arm2.image_alpha=image_alpha
	}}
	if(delay>0){
	delay-=1
	if(delay==19){
	image_alpha=0
	if(arm1.phase==0){
	arm1.image_alpha=image_alpha
	}
	if(arm2.phase==0){
	arm2.image_alpha=image_alpha
	}
	wasx=x
	wasy=y
	while(wasx==x&&wasy==y){
	x+=choose(-32,0,32)
	y+=choose(-32,-16)
	}
	}else{
	if(delay==0){
	//image_alpha=1
	//arm1.image_alpha=image_alpha
	//arm2.image_alpha=image_alpha
	}}}

	simplemove_scr(1)
	simplemove_scr(0)

	with(Dummy_object){
	if(id==other.arm2||id==other.arm1){
	if(phase==0){
	y=other.y+5
	if(id==other.arm1){
	x=other.x+16
	}else{
	x=other.x-1
	}
	}else{
	if(check==1){
	check=0
	sped=3
	move_towards_point(Me.x+10,Me.y+10,sped)
	hsp=hspeed
	vsp=vspeed
	speed=0
	delay=30
	tick=0
	image_alpha=1
	}
	if(tick==1){
	move_towards_point(other.x+10,other.y+10,sped)
	hsp=hspeed
	vsp=vspeed
	speed=0
	}
	x+=hsp
	y+=vsp
	if(delay>0){
	delay-=1
	if(delay==0){
	if(tick==0){
	tick=1
	delay=25
	}else{
	phase=0
	}}}}}}
	if(hp<=100){
	with(arm1){
	instance_destroy()
	}
	with(arm2){
	instance_destroy()
	}
	hp=0
	}}else{

	//________________________________________________________________________________------------------<<***{GHOST BOSS}***>>------------------<________________________________________________________________________________
	if(enemytype==4){
	if(phase==0){
	if(check==1){
	check=0
	invistimer=0
	tick=1
	yrange=16
	ysped=0.2
	attdelay=60
	attchoose=3
	y-=32
	ysave=y
	ending=1

	with(Control){
	rmcheck=1
	musicchange=music_boss_theme1
	}

	Control.enemytarget=id
	name="Restless Spirit"
	hpbuffer=0

	endingx=1294
	endingy=607-16
	extragold=50
	extraxp=19

	sprite_index=boss_ghost_spr
	mask_index=sprite_index
	image_speed=0.2
	hp=250
	hptotal=hp
	blinkdelay=irandom_range(50,80)
	savex=x
	savey=y
	}

	phase=1
	}else{

	//_____________________________________________<<<************************{PHASE 1}************************>>>_____________________________________________
	if(phase==1){

	//levitate
	if(tick==0){
	if(y<ysave+yrange){
	y+=ysped
	}else{
	tick=1
	}
	}else{
	if(y>ysave-yrange){
	y-=ysped
	}else{
	tick=0
	}}

	//ATTACK CHOOSE
	if(attdelay>0){
	attdelay-=1

	}else{
	attdelay=60
	if(hp>=hptotal/2){
	if(attchoose==2){
	attchoose=3
	}else{
	attchoose=2
	}}else{
	if(attchoose==2){
	attchoose=3
	}else{
	if(attchoose==3){
	attchoose=4
	}else{
	attchoose=2
	}}
	}
	phase=attchoose

	attdelay=60
	check=1
	proc=0
	}

	}else{

	//_____________________________________________<<<************************{PHASE 2: AttOne}************************>>>_____________________________________________
	if(phase==2){
	if(check==1){
	check=0
	proc=0
	delay=120
	with(Dummy_object){
	if(pin==41){
	instance_destroy()
	}}
	}

	if(proc==0){
	//RELOCATE MID
	if(delay<=0){
	proc=1
	x=savex
	y=savey
	}else{
	delay-=1
	}
	if(x>savex-2&&x<savex+2&&y>savey-2&&y<savey+2){
	proc=1
	x=savex
	y=savey

	}else{
	if(x<savex-2){
	x+=2
	}else{
	if(x>savex+2){
	x-=2
	}}
	if(y<savey-2){
	y+=2
	}else{
	if(y>savey+2){
	y-=2
	}}}
	}else{

	//levitate
	if(tick==0){
	if(y<ysave+yrange){
	y+=ysped
	}else{
	tick=1
	}
	}else{
	if(y>ysave-yrange){
	y-=ysped
	}else{
	tick=0
	}}

	if(proc<=180){
	proc+=1
	if(proc==30||proc==60||proc==90||proc==120||proc==150||proc==180){
	//PROJ CREATE
	for(a=0;a<7;a+=1){
	for(b=0;b<2;b+=1){
	created=instance_create(1088-48,528+a*24,Dummy_object)
	with(created){
	damage=1
	tick=choose(0,1)
	starty=y
	sprite_index=boss_ghost_proj1_spr
	image_speed=0.2
	pin=40
	if(other.b==1){
	sped=-1
	endx=1088-48
	x=1520+48
	image_xscale=-1
	if(other.a mod 2==0){
	x+=8
	}
	}else{
	sped=1
	endx=1520+48
	if(other.a mod 2==0){
	x-=8
	}
	}}}}}}else{
	if(attdelay>0){
	attdelay-=1
	}else{
	phase=1
	attdelay=300
	check=1
	}}
	}

	}else{
	//_____________________________________________<<<************************{PHASE 3: AttTwo}************************>>>_____________________________________________
	if(phase==3){
	if(check==1){
	times=3
	check=0
	xsped=1
	ticktwo=choose(0,1)
	xrangetwo=160+24
	xsave=x
	movedel=20
	for(i=0;i<2;i+=1){
	xpos=1136+8
	xpostwo=1280-16+8
	ypos=640+8
	ypostwo=704-16+8
	if(i==1){
	xpos+=16*12
	xpostwo+=16*12
	}
	created=instance_create(xpos,ypos,Dummy_object)
	with(created){
	damage=1
	tick=0
	starty=y
	sprite_index=boss_ghost_proj2_part2_spr
	image_speed=0.15
	pin=41
	xpos=other.xpos
	ypos=other.ypos
	xpostwo=other.xpostwo
	ypostwo=other.ypostwo
	sped=1
	}}}

	//levitate
	if(tick==0){
	if(y<ysave+yrange){
	y+=ysped
	}else{
	tick=1
	}
	}else{
	if(y>ysave-yrange){
	y-=ysped
	}else{
	tick=0
	}}

	//movetick
	if(movedel>0){
	movedel-=1
	if(movedel==150||movedel==50||movedel==250){
	for(i=0;i<14;i+=1){
	created=instance_create(x+40,y+40,Dummy_object)
	with(created){
	sprite_index=boss_ghost_proj2_spr
	image_speed=0.2
	speed=1.2
	if(other.i mod 2==0){
	speed=1
	}
	if(x>other.xsave){
	direction=110+other.i*11
	image_yscale=-1
	}else{
	direction=290+other.i*11
	}
	pin=42
	image_angle=direction
	xsped=hspeed
	ysped=vspeed
	speed=0
	damage=1
	}}
	}
	if(movedel==0){
	if(times>0){
	times-=1
	}else{
	attdelay=60
	phase=1
	check=1
	}}
	}else{
	if(ticktwo==0){
	if(x<xsave+xrangetwo){
	x+=xsped
	}else{
	ticktwo=1
	movedel=300
	}
	}else{
	if(x>xsave-xrangetwo){
	x-=xsped
	}else{
	ticktwo=0
	movedel=300
	}}

	}}

	}}}


	//ALWAYS
	if(hurttick>0){
	hurttick=0
	image_alpha=0
	invistimer=30
	}

	if(invistimer>0){
	invistimer-=1
	if(invistimer<=40){
	if(image_alpha<1){
	image_alpha+=0.025
	}}
	}else{
	image_alpha=1
	}

	//ALWAYS
	if(blinkdelay>0){
	blinkdelay-=1
	if(blinkdelay==20){
	sprite_index=boss_ghost_blink_spr
	image_index=0
	image_speed=0
	}else{
	if(blinkdelay==15||blinkdelay==10){
	image_index+=1
	}else{
	if(blinkdelay==5){
	image_index-=1
	}}}
	}else{
	blinkdelay=irandom_range(120,150)
	sprite_index=boss_ghost_spr
	image_index=0
	image_speed=0.2
	}

	}else{

	//*****************{ghost ball}*****************
	if(enemytype==5){
	if(point_distance(x+sprite_width/2,y+sprite_height/2,Me.x+10,Me.y+10)<128){
	if(phase==0){
	if(check==1){
	check=0
	sprite_index=grave_ghostball_spr
	mask_index=sprite_index
	startx=x
	movespeed=1
	range=80
	hp=8
	tick=0
	phase=1
	}}else{
	//PHASE 1
	if(phase==1){
	if(justhurt==1){
	justhurt=0
	if(Me.x+10<x+10&&dir==0){
	dir=1
	}else{
	if(Me.x+10>x+10&&dir==1){
	dir=0
	}}}


	simplemove_scr(0)

	}}}

	}else{

	}}}

	}}




}
