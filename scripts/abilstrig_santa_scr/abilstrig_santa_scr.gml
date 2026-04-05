function abilstrig_santa_scr(argument0) {
	//-------------------------------------------------<<**********<<{Present}>>**********>>-------------------------------------------------
	if(abil==0){
	if(check==1){
	check=0
	y-=1
	Me.abilopt-=1
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=abil_santa_present
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=abil_king_meat
	}}
	image_index=irandom(image_number)
	image_speed=0
	times=3
	if(Me.direction==0){
	hsp=1.25
	}else{
	hsp=-1.25
	}
	vsp=-0.45
	if(option==1){
	vsp=0.15
	}else{
	if(option==2){
	vsp=-1.35
	}}
	delay=80
	gv=0.025
	}

	delay-=1
	x+=hsp
	vsp+=gv
	y+=vsp
	image_angle+=5

	if(phase>-1){
	hit=instance_place(x,y,Enemy)
	if(hit!=noone){

	with(hit){
	dr+=3.15*Control.itemsArray[0,4]
	drdraw+=3.15*Control.itemsArray[0,4]

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
	phase=-1
	hsp=0
	vsp=0
	}}


	if(phase==-1){
	if(times>0){
	times-=1
	}else{
	phase=-2
	sfx_play_at(choose(snd_christmas_hit1,snd_christmas_hit2),x,y, 0, 90, 150, 0.5, false, 1)
	}
	if(times==2){
	for(i=0;i<3;i+=1){
	created=instance_create(x,y,Dummy_two_object)
	with(created){
	diddmg=0
	direction=other.i*120+45
	depth=5
	pin=50
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=abil_santa_present_dis
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=abil_king_meat_dis
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
	speed=random_range(0.25,0.3)
	hsp=hspeed
	vsp=vspeed
	speed=0
	duration=irandom_range(28,31)
	}}
	}


	for(i=0;i<8;i+=1){
	created=instance_create(x,y,Dummy_two_object)
	with(created){
	diddmg=0
	direction=other.i*45
	pin=50
	depth=4

	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	
	if(other.image_index==0){
	sprite_index=abil_santa_dis_blue
	}else{
	if(other.image_index==1){
	sprite_index=abil_santa_dis_green
	}else{
	sprite_index=abil_santa_dis_yellow
	}}
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=abil_king_meat_dis
	}}

	image_index=irandom(image_number)
	image_speed=0
	image_angle=irandom(360)
	speed=random_range(0.25,0.05)
	hsp=hspeed
	vsp=vspeed
	speed=0
	duration=irandom_range(11,17)
	}}


	}else{
	if(phase==-2){
	instance_destroy()
	}}

	}else{
	//-------------------------------------------------<<**********<<{Wreath}>>**********>>-------------------------------------------------
	if(abil==1){
	if(check==1){
	check=0
	motiontick=0
	Me.abilopt-=1
	y-=4
	dir=0
	damagetotal=12
	damagedone=0
	useaudio=1
	spellsnd=audio_emitter_create()
	sfx_play_on(spellsnd,choose(snd_christmas_wreath1,snd_christmas_wreath2),false,8)
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=abil_santa_wreath
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=abil_king_crown
	}}
	image_index=irandom(image_number)
	image_speed=0.05
	times=6
	if(Me.direction==0){
	hsp=0.5
	flipspeed=5
	dir=0
	}else{
	dir=1
	hsp=-0.5
	flipspeed=-5
	}
	vsp=0
	if(option==1){
	vsp=0.5
	hsp=0
	}else{
	if(option==2){
	vsp=-0.5
	hsp=0
	}}
	delay=80
	duration=160
	}else{

	if(motiontick==0){
	if(Control.con_h_q||Control.conp_h_e){
	if(hsp!=0){
	if(dir==0){
	hsp=1.5
	}else{
	hsp=-1.5
	}}
	duration-=3
	Me.vsp=other.vsp-6
	with(Me){
	debuff=1
	stun=1
	debufftimer=2
	debuffopt=other.hsp
	vsp=other.vsp
	}}else{
	Me.stun=0
	if(dir==0){
	hsp=0.5
	}else{
	hsp=-0.5
	}
	motiontick=1
	}}}

	if(irandom(1)==0){
	created=instance_create(x+(random_range(-5,5)),y+(random_range(-5,5)),Dummy_two_object)
	with(created){
	diddmg=0
	pin=50
	depth=5

	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=abil_santa_wreath_dis
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=abil_king_slam_dis
	}}
	image_speed=0
	image_index=irandom(image_number)
	image_angle=irandom(360)
	speed=random_range(0.05,0.25)
	hsp=0
	vsp=0
	duration=irandom_range(11,25)
	}}

	delay-=1
	x+=hsp
	y+=vsp
	image_angle+=flipspeed

	if(phase>-1){

	if(damagedone<damagetotal){
	hit=instance_place(x,y,Enemy)
	if(hit!=noone){

	with(hit){
	dr+=0.5*Control.itemsArray[0,4]
	drdraw+=0.5*Control.itemsArray[0,4]
	other.damagedone+=0.5*Control.itemsArray[0,4]

	if(hurt<=0){
	hurttick=1
	}}}
	}else{
	phase=-1
	}
	hit=instance_place(x,y,Solid)
	if(hit!=noone){
	if(hit.solidtype==3){
	hit.hurttick=1
	}
	phase=-1
	}}


	if(phase==-1){
	if(times>0){
	times-=1
	}else{
	phase=-2
	}
	for(i=0;i<8;i+=1){
	created=instance_create(x,y,Dummy_two_object)
	with(created){
	diddmg=0
	direction=other.i*45+choose(-3,-1.5,0,1.5,3)+other.times
	pin=50
	depth=5
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=abil_santa_wreath_dis
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=abil_king_slam_dis
	}}
	image_index=irandom(image_number)
	image_speed=0
	image_angle=irandom(360)
	speed=random_range(0.1,0.15)
	hsp=hspeed
	vsp=vspeed
	speed=0
	duration=irandom_range(14,28)
	}}

	}else{
	if(phase==-2){
	Me.stun=0
	instance_destroy()
	}}

	}else{
	//-------------------------------------------------<<**********<<{Santa Slam}>>**********>>-------------------------------------------------
	if(abil==2){
	if(check==1){
	check=0
	extracheck=0
	Me.vsp=-2.5
	delay=6
	useaudio=1
	spellsnd=audio_emitter_create()
	sfx_play_on(spellsnd,choose(snd_christmas_sound1,snd_christmas_sound2),false,8)
	}

	for(i=0;i<2;i+=1){
	created=instance_create(Me.x+10+(random_range(-2,2)),Me.y+14+(random_range(-2,2)),Dummy_two_object)
	with(created){
	diddmg=0
	pin=50
	depth=5
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=abil_santa_slam_dis
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=abil_king_slam_dis
	}}
	image_speed=0
	image_index=irandom(image_number)
	image_angle=irandom(360)
	speed=random_range(0.05,0.25)
	hsp=Me.hsp*-1
	vsp=Me.vsp*-1
	hsp=0
	vsp=0
	duration=irandom_range(14,21)
	}}

	duration=20
	with(Me){
	if(vsp>0){
	vsp=4
	slamcd=4
	if(direction==0){
	moveaction=12
	}else{
	moveaction=13
	}}

	hit=instance_place(x+hsp,y+vsp,Enemy)
	if(hit!=noone){
	other.extracheck=1
	vsp=-2.5
	}}


	if(delay<=0){
	if(Me.grounded==1||extracheck==1){
	Control.screenshake=24
	sfx_play(choose(snd_yeti_slam_1,snd_yeti_slam_2,snd_yeti_slam_3),2,false)
	for(i=0;i<5;i+=1){
	//TREE SLAM
	created=instance_create(Me.x+10+(i*4-8),Me.y+20,Dummy_two_object)
	with(created){

	if(other.extracheck==1){
	y+=20
	}
	vsp=-1.15
	duration=60
	if(other.i mod 2==0){
	y+=1
	vsp=-1
	duration=70
	}

	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=santa_tree_spr
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=abil_king_slam
	}}
	image_index=irandom(image_number)
	image_speed=0
	pin=51
	visible=false
	timer=0
	hsp=0
	//effect
	for(i=0;i<13;i+=1){
	created=instance_create(x+choose(-3,-1.5,0,1.5,3),y-4+choose(-3,-1.5,0,1.5,3),Dummy_two_object)
	with(created){
	diddmg=0
	direction=other.i*28+choose(-3,-1.5,0,1.5,3)+other.i
	pin=50
	depth=5
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=abil_santa_slam_dis
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=abil_king_slam_dis
	}}
	image_index=irandom(image_number)
	image_speed=0
	image_angle=irandom(360)
	speed=random_range(0.05,0.1)
	hsp=hspeed
	vsp=vspeed
	speed=0
	duration=irandom_range(21,42)
	}}
	}}
	instance_destroy()
	}}else{
	delay-=1
	}


	}}}



}
