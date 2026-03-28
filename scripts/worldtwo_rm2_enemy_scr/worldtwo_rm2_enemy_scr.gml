function worldtwo_rm2_enemy_scr() {
	//*****************{SHIELD KNIGHT}*****************
	if(enemytype==1){
	if(check==1){
	y+=1
	hp=6
	check=0
	tick=0
	startx=x 
	image_speed=0.3
	sped=0.5
	range=8
	sprite_index=retro_knight_spr
	mask_index=sprite_index
	selfcreated=instance_create(x+11,y+11,Solid_plat)
	with(selfcreated){
	type=70
	sprite_index=retro_knight_shield_spr
	visible=true

	}
	}

	if(tick==0){
	if(x<startx+range){
	with(selfcreated){
	if(instance_place(x+other.sped,y,Me)){
	while(instance_place(x+other.sped,y,Me)){
	Me.x+=1
	}}
	x+=other.sped
	}
	x+=sped
	}else{
	tick=1
	dir=1
	with(selfcreated){
	image_xscale=-1
	x=other.x+3
	}
	}}else{
	if(x>startx-range){
	with(selfcreated){
	if(instance_place(x-other.sped,y,Me)){
	while(instance_place(x-other.sped,y,Me)){
	Me.x-=1
	}}
	x-=other.sped
	}
	x-=sped
	}else{
	tick=0
	dir=0
	with(selfcreated){
	image_xscale=1
	x=other.x+13
	}
	}}
	}else{

	//*****************{ARCHER}*****************
	if(enemytype==2){
	//Walk Phase
	if(phase==0){
	if(check==1){
	check=0
	y+=1
	hp=6
	tick=0
	startx=x 
	image_speed=0.3
	sped=0.5
	range=16
	sprite_index=retro_knight_spr
	mask_index=sprite_index
	attcd=120
	phase=0
	}

	if(attcd>0){
	attcd-=1
	if(tick==0){
	if(x<startx+range){
	x+=sped
	}else{
	tick=1
	dir=1
	}}else{
	if(x>startx-range){
	x-=sped
	}else{
	tick=0
	dir=0
	}}
	}else{
	phase=1
	check=1
	}

	}else{
	//Shoot Phase
	if(phase==1){
	if(check==1){
	check=0
	sprite_index=retro_archer_spr
	image_speed=0
	image_index=0
	attcd=30
	if(Me.x>x){
	dir=0
	}else{
	dir=1
	}}
	if(attcd>0){
	attcd-=1
	if(attcd==20){
	image_index=1
	}else{
	if(attcd==10){
	for(i=0;i<3;i+=1){
	created=instance_create(x+8,y+8,Dummy_object)
	with(created){
	pin=70
	damage=1
	sprite_index=retro_archer_arrow_spr
	visible=true
	gravity=0.05
	speed=3.1-(other.i*0.1)
	duration=120+(other.i*20)
	if(other.dir==0){
	direction=25+(other.i*20)
	}else{
	direction=155-(other.i*20)
	}
	image_angle=direction
	}}
	image_index=2
	}}
	}else{
	attcd=120
	phase=0
	dir=tick
	image_speed=0.3
	sprite_index=retro_knight_spr
	image_index=0
	}
	}}



	}else{
	//________________________________________________________________________________------------------<<***{KING}***>>------------------<________________________________________________________________________________
	//*****************{KING}*****************
	if(enemytype==3){
	//PHASE 0
	if(phase==0){
	if(check==1){
	x-=16
	ending=1
	Control.enemytarget=id
	name="Retro King"
	hpbuffer=0

	endingx=8080
	endingy=224-16
	extragold=40
	extraxp=17

	with(Control){
	rmcheck=1
	musicchange=music_boss_theme6
	}

	attdelay=60
	chairpause=0
	lastattack=2
	bobtickmax=24
	bobtick=bobtickmax
	ysave=y
	colorcheck=0
	y-=16

	projonespr=retro_king_proj_1_spr
	projtwospr=retro_king_slampart_1

	hp=500
	hptotal=hp
	blinkoption=choose(0,0,0,0,1)
	blink=irandom_range(45,60)
	chair=instance_create(x,y,Dummy_two_object)
	with(chair){
	sprite_index=retro_king_thronenc_spr
	image_speed=0
	extrax=45
	extray=-15
	pin=50
	depth=10
	}
	chairysave=chair.y

	projonespr=retro_king_proj_1_spr
	projtwospr=retro_king_slampart_1

	selfcreated=instance_create(x,y,Enemy)
	with(selfcreated){
	enemytype=30
	image_speed=0.2
	sprite_index=retro_king_thronenc_spr
	extrax=45
	extray=-15
	depth=20
	}
	y-=8
	x+=45
	sprite_index=retro_king_charnoncolor_spr
	mask_index=sprite_index

	head=instance_create(x,y,Dummy_two_object)
	with(head){
	depth=other.depth-1
	sprite_index=retro_king_charnoncolor_spr
	image_speed=0
	image_index=1
	pin=52
	imgsave=1
	hurt=0
	}

	image_speed=0
	check=0
	movespeed=0.3
	startx=x
	starty=y
	range=64
	dir=0
	turn=0
	phase=1

	}

	}else{

	//--------------------------<<*********{PHASE 1}*********>>--------------------------
	//movement blink attack find
	if(phase==1){

	//ATTACK CHOOSE
	if(attdelay>0){
	attdelay-=1
	}else{

	if(hp<hptotal/3){
	if(lastattack==0){
	phase=choose(2,3,4)
	lastattack=phase
	}else{
	if(lastattack==2){
	phase=choose(3,4)
	lastattack=phase
	}else{
	if(lastattack==3){
	phase=choose(2,4)
	lastattack=phase
	}else{
	if(lastattack==4){
	phase=choose(2,3)
	lastattack=phase
	}}}
	}
	}else{

	if(hp<hptotal/1.5){
	if(lastattack==0){
	phase=choose(2,3)
	lastattack=phase
	}else{
	if(lastattack==2){
	phase=choose(2,3)
	lastattack=phase
	}else{
	if(lastattack==3){
	phase=2
	lastattack=phase
	}}
	}
	}else{

	if(lastattack==0){
	phase=choose(2,3)
	lastattack=phase
	}else{
	if(lastattack==2){
	phase=3
	lastattack=phase
	}else{
	if(lastattack==3){
	phase=2
	lastattack=phase
	}}}}
	}

	head.visible=true
	head.image_index=head.imgsave
	blinkoption=choose(0,0,0,1,2)
	blink=irandom_range(70,90)
	image_index=0
	check=1
	attdelay=60
	}

	if(Me.x+10>(x+sprite_width/2)-32&&Me.x+10<(x+sprite_width/2)+32){
	head.imgsave=1
	if(blink>12){
	head.image_index=head.imgsave+head.hurt
	}
	}else{
	if(Me.x+10>(x+sprite_width/2)){
	head.imgsave=6
	if(blink>12){
	head.image_index=head.imgsave+head.hurt
	}
	}else{
	head.imgsave=11
	if(blink>12){
	head.image_index=head.imgsave+head.hurt
	}
	}}
	if(blink>0){
	blink-=1
	//shortblink
	if(blinkoption==0){
	if(blink==6){
	head.image_index=head.imgsave+3
	}}else{
	//longer blink
	if(blinkoption==1){
	if(blink==12){
	head.image_index=head.imgsave+3
	}else{
	if(blink==9){
	head.image_index=head.imgsave+4
	}else{
	if(blink==3){
	head.image_index=head.imgsave+3
	}}}}else{

	//Yawn
	if(blinkoption==2){
	if(blink==50){
	head.visible=false
	image_index=23
	}else{
	if(blink==45||blink==40||blink==32){
	image_index+=1
	}else{
	if(blink==20||blink==10||blink==5){
	image_index-=1
	}}}}}}
	}else{
	head.visible=true
	head.image_index=head.imgsave
	blinkoption=choose(0,0,0,1,2)
	blink=irandom_range(70,90)
	}

	if(bobtick>0){
	bobtick-=1
	if(bobtick==bobtickmax/4){
	y+=1
	chair.y+=1
	}else{
	if(bobtick==bobtickmax/6){
	y+=1
	}else{
	if(bobtick==2){
	y-=1
	}}}
	}else{
	bobtick=bobtickmax
	y-=1
	chair.y-=1
	}

	//Move
	if(turn==0){
	if(x<startx+range){
	x+=movespeed
	selfcreated.x+=movespeed
	chair.x+=movespeed
	}else{
	turn=1
	}}else{
	if(x>startx-range){
	x-=movespeed
	selfcreated.x-=movespeed
	chair.x-=movespeed
	}else{
	turn=0
	}}
	}else{

	//________________________________________________________________________________------------------<<***{Turkey Leg}***>>------------------<________________________________________________________________________________
	if(phase==2){
	if(check==1){
	check=0
	attdelay=30
	meat=instance_create(x,y,Dummy_object)
	with(meat){
	image_index=irandom(image_number)
	image_speed=0
	sprite_index=other.projonespr
	pin=61
	}
	throwtick=choose(0,1)
	if(throwtick==0){
	image_index=16
	meat.x=x+28
	meat.y=y+34
	meat.image_angle=330
	}else{
	image_index=19
	meat.x=x+2
	meat.y=y+34
	meat.image_angle=30
	}}

	if(attdelay>0){
	attdelay-=1
	if(attdelay==10){
	if(throwtick==0){
	image_index=18
	}else{
	image_index=21
	}
	}else{
	if(attdelay==20){
	meat.image_angle=0
	if(throwtick==0){
	image_index=17
	meat.x=x+26
	meat.y=y+24
	}else{
	image_index=20
	meat.x=x+4
	meat.y=y+24
	}}
	}
	if(attdelay==10){

	for(i=1;i<16;i+=1){
	created=instance_create(meat.x,meat.y,Dummy_object)
	with(created){
	if(other.i mod 2==0){
	sped=0.2
	}else{
	sped=0
	}
	damage=1
	num=other.i
	tick=0
	image_index=irandom(image_number)
	image_speed=0
	sprite_index=other.projonespr
	pin=60
	}}
	with(meat){
	instance_destroy()
	}
	}}else{
	phase=1
	attdelay=75
	if(hp<hptotal/2){
	attdelay=35
	}
	image_index=0
	}

	}else{
	//________________________________________________________________________________------------------<<***{Slam}***>>------------------<________________________________________________________________________________
	if(phase==3){
	if(check==1){
	check=0
	image_index=23
	attdelay=74
	head.visible=false
	chairysave=chair.y
	ysave=y
	}
	if(attdelay>0){
	if(attdelay mod 4==0&&attdelay>10){
	image_index+=1
	}
	if(attdelay>70){

	}else{
	if(attdelay>40){
	y-=3
	}else{
	if(attdelay>10){
	y+=3
	}else{
	selfcreated.image_index=4
	if(attdelay==10){
	for(i=0;i<28;i+=1){
	created=instance_create(7872+i*16,256,Dummy_object)
	with(created){
	sprite_index=other.projtwospr
	image_index=1
	image_speed=0
	pin=62
	tick=0
	sped=0.35
	damage=2
	}}
	chairpause=1
	chair.y+=6
	y+=4
	}else{
	if(attdelay mod 3==0){
	chair.y-=2
	y-=2
	}}}}
	}

	attdelay-=1

	}else{
	chairpause=0
	y=ysave
	chair.y=chairysave
	Control.screenshake=14
	phase=1
	attdelay=75
	if(hp<hptotal/2){
	attdelay=35
	}
	image_index=0
	head.visible=true
	}

	}else{
	//________________________________________________________________________________------------------<<***{Sword Attack}***>>------------------<________________________________________________________________________________
	if(phase==4){
	if(check==1){
	check=0
	image_index=42
	attanim=40
	atopts=0
	head.visible=false
	}

	if(attdelay>0){
	if(atopts==0){
	//Move
	if(x<=startx+3&&x>=startx-3){
	atopts=1
	attdelay=0
	}else{

	if(x<startx){
	x+=movespeed*2
	selfcreated.x+=movespeed*2
	chair.x+=movespeed*2
	}else{
	if(x>startx){
	x-=movespeed*2
	selfcreated.x-=movespeed*2
	chair.x-=movespeed*2
	}}}

	}else{
	//PREP
	if(atopts==1){
	if(attdelay mod 5==0){
	if(image_index==42){
	image_index=43
	}else{
	image_index=42
	}}}else{
	//Sword Create
	if(atopts==2){
	if(attdelay==60){
	image_index=44
	for(i=0;i<6;i+=1){
	created=instance_create(7904+(i*64)+16,64,Enemy)
	with(created){
	hp=25
	depth=95
	sprite_index=retro_king_projc_2_spr
	mask_index=sprite_index
	image_speed=0
	image_index=other.i
	if(other.i<=6){
	type=0
	}else{
	type=1
	}
	enemytype=33
	}}
	}
	if(attdelay mod 10==0){
	if(image_index<47){
	image_index+=1
	}}
	with(Enemy){
	if(enemytype==33){
	if(y<160){
	y+=2
	if(other.attdelay<9){
	other.attdelay=9
	}
	}else{
	other.attdelay=0
	}}}
	}else{

	//Sword Move
	if(atopts==3){
	if(attdelay==60){
	image_index=0
	image_index=48
	swordtick=choose(0,1)
	swordtimer=0
	swordtimes=0
	}
	attdelay=5
	image_index=0


	if(swordtimes<3){
	if(swordtick==0){
	if(swordtimer<64){
	swordtimer+=1
	with(Enemy){
	if(enemytype==33){
	x+=1.1
	}}
	}else{
	swordtick=1
	swordtimer=0
	}}else{

	if(swordtimer<64){
	swordtimer+=1
	with(Enemy){
	if(enemytype==33){
	x-=1.1
	}}
	}else{
	swordtick=0
	swordtimes+=1
	swordtimer=0
	}
	}}else{
	with(Enemy){
	if(enemytype==33){
	if(y>64){
	y-=2
	}else{
	other.attdelay=0
	}}}
	}


	}
	}}}
	attdelay-=1
	}else{
	//DONE
	if(atopts>=4){
	with(Enemy){
	if(enemytype==33){
	instance_destroy()
	}}
	immune=0
	chairpause=0
	phase=1
	attdelay=60
	image_index=0
	head.visible=true
	//RESET
	}else{
	atopts+=1
	attdelay=60
	if(atopts>=4){
	with(Enemy){
	if(enemytype==33){
	instance_destroy()
	}}
	immune=0
	chairpause=0
	phase=1
	attdelay=60
	image_index=0
	head.visible=true
	//RESET
	}

	}}

	}else{

	}}
	}

	}

	//ALWAYS

	if(colorcheck==0){
	if(hp<=hptotal-100){
	sprite_index=retro_king_charcolor_spr
	projonespr=retro_king_projc_1_spr
	projtwospr=retro_king_slampartc_1
	head.sprite_index=retro_king_charcolor_spr
	selfcreated.sprite_index=retro_king_throne_spr
	chair.sprite_index=retro_king_throne_spr

	__background_set( e__BG.Index, 0, w2_rm2_bk4_2 )
	__background_set( e__BG.Index, 1, w2_rm2_bk3_2 )
	__background_set( e__BG.Index, 2, w2_rm2_bk2_2 )
	__background_set( e__BG.Index, 5, w2_rm2_bk1_2 )

	created=instance_create(7792,80,Dummy_two_object)
	with(created){
	sprite_index=retro_king_castle_spr
	image_speed=0
	image_index=2
	depth=100
	pin=51
	}
	//DEL
	created=instance_create(7792,80,Dummy_two_object)
	with(created){
	sprite_index=retro_king_castle_spr
	image_speed=0
	image_index=1
	depth=90
	pin=51
	}
	colorcheck=1
	}}

	if(hurt>0){
	head.hurt=2
	head.image_blend=c_maroon
	}else{
	head.hurt=0
	head.image_blend=c_white
	}
	if(chairpause==0){
	with(selfcreated){
	if(other.phase==1){
	if(image_index>=4||image_index<1){
	image_index=1
	}}else{
	image_index=1
	}}}

	}

	//ALWAYS 
	head.x=x
	head.y=y+1
	}}

	}



}
