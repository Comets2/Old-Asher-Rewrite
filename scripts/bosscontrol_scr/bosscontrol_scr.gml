function bosscontrol_scr() {

	if(enemytype==1){

	//******{{SKELL}}******
	if(justhurt==1){
	if(phase!=3){
	check=1
	phase=2
	}}

	if(phase==0){
	if(check==1){
	pillarcheck=0
	pos=0
	option=0
	pillar=0
	created1=instance_create(600,166,Enemy)
	created1.enemytype=2
	created1.subtype=0
	created2=instance_create(706,166,Enemy)
	created2.enemytype=2
	created2.subtype=1
	x=803
	y=192
	image_speed=0.1
	image_index=2
	sprite_index=skell_organ
	check=0
	tick=0
	}

	if(tick==0){
	hitme=instance_place(x,y,Me)
	if(hitme!=noone){
	tick=1
	phase=1
	check=1
	with(created1){
	//check=1
	//phase=1
	}}
	}
	if(!instance_exists(created1)&&tick==1){
	tick=3
	with(created2){
	check=1
	phase=1
	}}
	if(!instance_exists(created2)){
	check=1
	phase=1
	}

	}else{

	//********PHASE 1*******
	if(phase==1){
	if(check==1){
	mask_index=skell_alone
	depth=2
	tick=1
	movespeedtotal=0.5
	image_speed=0.15
	image_index=0
	check=0

	if(pillar==0){
	if(audio_is_playing(Control.music)){
	audio_stop_sound(Control.music)
	}
	Control.music=three_music

	pillar=1
	pillar1=instance_create(832-158,-100,Solid)
	pillar1.sprite_index=pillar_spr
	pillar1.image_index=0
	pillar1.image_speed=0
	pillar1.visible=true
	pillar1.depth=22
	pillar2=instance_create(832+138,-100,Solid)
	pillar2.sprite_index=pillar_spr
	pillar2.image_index=0
	pillar2.image_speed=0
	pillar2.visible=true
	pillar2.depth=22
	pillar3=instance_create(737,272,Solid)
	pillar3.sprite_index=pillar_platform
	pillar3.image_index=0
	pillar3.image_speed=0
	pillar3.visible=true
	pillar3.depth=12
	pillar4=instance_create(909,272,Solid)
	pillar4.sprite_index=pillar_platform
	pillar4.image_index=0
	pillar4.image_speed=0
	pillar4.visible=true
	pillar4.depth=12
	pillar5=instance_create(737,362,Solid)
	pillar5.sprite_index=pillar_platform
	pillar5.image_index=0
	pillar5.image_speed=0
	pillar5.visible=true
	pillar5.depth=12
	pillar6=instance_create(909,362,Solid)
	pillar6.sprite_index=pillar_platform
	pillar6.image_index=0
	pillar6.image_speed=0
	pillar6.visible=true
	pillar6.depth=12
	}}

	if(dir==1){
	if(stopped==1&&stopcd==0){
	dir=0
	stopped=0
	stopcd=5

	key_left=1
	key_right=0

	if(animdel<=0){
	sprite_index=mew
	}
	}
	}else{
	if(stopped==1&&stopcd==0){
	dir=1
	stopped=0
	stopcd=5

	key_left=0
	key_right=-1

	if(animdel<=0){
	sprite_index=mew
	}
	}}

	movespeed=movespeedtotal*movedebuff

	//Input reaction
	hsp = (move * movespeed);

	move = key_left + key_right


	if(stopcd>0){
	stopped=0
	stopcd-=1
	}
	}else{
	//*********PHASE 2**********
	if(phase==2){
	if(check==1){
	mask_index=skell_alone
	depth=2
	hsp=0
	sprite_index=skell_transfer
	image_speed=0.25
	delay=40
	check=0
	image_index=0
	}

	if(delay==10){
	if(pos==0){
	chance=choose(1,2,3,4)
	}else{
	if(pos==1){
	chance=choose(0,2,3,4)
	}else{
	if(pos==2){
	chance=choose(0,1,3,4)
	}else{
	if(pos==3){
	chance=choose(0,1,2,4)
	}else{
	if(pos==4){
	chance=choose(0,1,2,3)
	}}}}}
	pos=chance
	if(pos==0){
	x=833
	y=220
	}else{
	if(pos==1){
	x=pillar3.x-20
	y=pillar3.y-43
	}else{
	if(pos==2){
	x=pillar4.x-20
	y=pillar4.y-43
	}else{
	if(pos==3){
	x=pillar5.x-20
	y=pillar5.y-43
	}else{
	if(pos==4){
	x=pillar6.x-20
	y=pillar6.y-43
	}}}}}
	sprite_index=skell_appear
	image_speed=0.5
	image_index=0
	}
	if(delay<=0){
	if(pos==0){
	if(x>Me.x){
	dir=0
	stopped=0
	stopcd=5
	key_left=1
	key_right=0
	}else{
	dir=1
	stopped=0
	stopcd=5
	key_left=0
	key_right=-1
	}}
	sprite_index=skell_w
	image_index=0
	if(option<=0){
	phase=3
	}else{
	if(pos=0){
	option-=1
	phase=1
	}else{
	option-=1
	phase=4
	}}
	check=1
	}else{
	delay-=1
	}
	}else{

	//*********PHASE 3**********
	if(phase==3){
	mask_index=dummy_spr
	x=634+__view_get( e__VW.XView, 0 )/4
	immune=1
	if(check==1){

	if(pillarcheck==1){
	if(Me.x<833){
	Me.x+=10
	}else{
	Me.x-=10
	}
	pillar1.x+=10
	pillar2.x-=10
	pillar3.x+=10
	pillar4.x-=10
	pillar5.x+=10
	pillar6.x-=10
	Control.screenshake=24
	}else{
	pillarcheck=1
	}

	hsp=0
	sprite_index=skell_hover
	image_speed=0
	delay=0
	check=0
	grav=0
	vsp=0
	y=140
	nograv=1
	depth=22
	timer=120
	}

	if(vsp>0){
	image_index=1
	}else{
	image_index=0
	}

	if(instance_exists(Enemy)&&timer<0){
	enemycheck=0
	with(Enemy){
	if(subtype==4){
	other.enemycheck+=1
	}}
	if(enemycheck==0){
	depth=2
	phase=2
	grav=1
	nograv=0
	check=1
	option=3
	}}

	if(timer==0){
	timer=-1
	chance=4+irandom(2)
	for(i=0;i<chance;i+=1){
	created=instance_create((x+20+((chance/2)*-20))+(i*20),y,Enemy)
	created.enemytype=2
	created.created=0
	created.subtype=4
	created.visible=false
	created.sprite_index=skell_minion
	created.mew=skell_minion
	created.movespeedtotal=random_range(0.65,0.9)
	}
	}else{
	if(timer<=-1&&timer>-12){
	image_index=2
	}else{
	if(timer<=-12&&timer>-24){
	image_index=3
	}}
	timer-=1
	}

	if(delay<=0){
	delay=irandom(30)+60
	if(y>135&&y<145){
	vsp=choose(-0.15,0.15)
	}else{
	if(y>155){
	vsp=-0.15
	}else{
	vsp=0.15
	}
	}}else{
	delay-=1
	}

	y+=vsp

	}else{

	//*********PHASE 4**********
	if(phase==4){
	if(check==1){

	if(pos==1){
	chance=choose(2,2,2,3,4)
	}else{
	if(pos==2){
	chance=choose(1,1,1,3,4)
	}else{
	if(pos==3){
	chance=choose(1,2,4)
	}else{
	if(pos==4){
	chance=choose(1,2,3)
	}}}}

	if(chance==1){
	xpos=pillar3.x-19
	ypos=pillar3.y
	}else{
	if(chance==2){
	xpos=pillar4.x-19
	ypos=pillar4.y
	}else{
	if(chance==3){
	xpos=pillar5.x-19
	ypos=pillar5.y
	}else{
	if(chance==4){
	xpos=pillar6.x-19
	ypos=pillar6.y
	}}}}

	for(i=0;i<10;i+=1){
	created=instance_create(xpos+(pos+i*4)+1+(random(1.5)-.75),ypos-2,ProjEn)
	created.classtype=2
	created.enemy=1
	created.abil=5
	created.creator=id
	}
	mask_index=skell_alone
	depth=2
	hsp=0
	sprite_index=skell_phase4
	image_speed=0
	delay=0
	check=0
	nograv=0
	timer=120
	tick=0
	}

	if(delay<=0){
	checksprite=1
	delay=60+irandom(40)
	if(tick>0){
	image_index=0
	tick-=1
	}else{
	image_index=choose(1,3,5)
	tick=3
	}}else{
	delay-=1
	}

	if(image_index>0&&delay<15&&checksprite==1){
	image_index+=1
	checksprite=0
	}

	if(timer<15){
	image_index=7
	if(timer<7){
	image_index=8
	}}

	if(timer<=0){
	timer=240+irandom(120)
	created=instance_create(x+20,y+20,ProjEn)
	created.classtype=2
	created.enemy=1
	created.abil=4
	created.creator=id
	}else{
	timer-=1
	}

	}}
	}}}


	//Pillar
	if(pillar==1){
	if(pillar1.y<15){
	pillar1.gravity=0.0275
	pillar2.gravity=0.0275
	}else{
	pillar1.gravity=0
	pillar2.gravity=0
	Control.screenshake=16
	pillar=2
	}}else{
	if(pillar==2){
	pillar1.y=13
	pillar2.y=13
	}}
	if(pillar>0){
	if(pillar3.y>120){
	pillar3.y-=1
	pillar4.y-=1
	pillar5.y-=1
	pillar6.y-=1
	}}


	}else{

	//******{{Sun God}}******
	if(enemytype==2){
	if(phase==0){
	if(collision_rectangle(x+72,y+73,x+83,y+82,Me,false,false)){
	phase=1
	audio_play_sound(sunroar_snd1,10,false)
	image_index=1
	check=1
	}}else{
	if(phase==1){
	if(check==1){
	check=0
	timer=0
	}
	if(timer>0){
	timer-=1
	}else{
	phase=2
	check=1
	}}else{
	if(phase==2){
	if(check==1){
	check=0
	timer=40
	option=0
	startx=x
	starty=y
	tick=0
	}
	if(option==0){
	if(y>starty-60){
	y-=1.5
	}else{
	option=99
	}
	if(tick==0){
	if(x>startx-5){
	x-=1.5
	}else{
	tick=1
	}}else{
	if(tick=1){
	if(x<startx+5){
	x+=1.5
	}else{
	tick=0
	}}
	}
	}else{
	}

	}
	}}

	}else{

	//******{{ROBO CLOWN}}******
	if(enemytype==3){
	roboclown_scr()
	}

	}}

	justhurt=0



}
