function abilstrig_tree_scr(argument0) {
	//-------------------------------------------------<<**********<<{Auto: CHARGE LEAF}>>**********>>-------------------------------------------------
	if(argument0==0){
	if(check==1){
	check=10
	charge=1
	ringsize=12
	ringrange=15
	ringsizetotal=ringsize
	ringtick=0
	chargetype=1
	version=1

	if(Me.hp>=Me.hptotal/2){
	version=1
	cap=20
	capspeed=12
	damage=0.7
	range=14
	}else{
	version=2
	cap=6
	capspeed=40
	cap=40
	capspeed=6
	damage=0.5
	range=7
	}

	if(!Control.con_h_e&&!Control.conp_h_e){
	check=2
	}
	}else{
	if(check>=10){
	x=Me.x+10
	y=Me.y+10
	if(charge<124){
	charge+=1
	}

	if(Control.con_p_w||Control.conp_p_w){
	//ringtick=1
	}

	if(charge mod capspeed==0&&charge<cap*capspeed+2){
	chargetype=2
	audio_play_sound_at(choose(snd_tree_abil1_tick1,snd_tree_abil1_tick2),x,y, 0, 90, 150, 0.5, false, 1) 
	//CREATE LEAF
	created=instance_create(x+choose(irandom_range(-2,2)),y+choose(irandom_range(-2,2)),Dummy_two_object)
	with(created){
	creator=other.id
	delay=200
	zonex=irandom_range(-2,2)
	zoney=random_range(0.5,1.25)*choose(1,-1)
	range=other.range
	option=0
	version=other.version

	imgsped=random_range(2.5,10)
	image_angle=irandom(360)
	dir1=0
	ringtype=0
	ringsize=12
	ringtick=0
	ringrange=8
	ringstart=8
	ringsped=0.1

	sped=2
	damage=other.damage
	duration=24

	vsp=0
	hsp=sped
	diedelay=0

	//useaudio=1
	image_speed=0
	pin=107
	phase=0

	//OVER HALF HP
	if(version==1){
	image_index=choose(0,1)
	}else{
	image_index=choose(2,3)
	}
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=abil_tree1
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=abil_tree1_pirate
	}else{
	sprite_index=abil_tree1
	}}
	}
	}

	//leaf rotate
	if(instance_exists(Dummy_two_object)){
	with(Dummy_two_object){
	if(pin==107){
	if(creator=other.id){
	image_angle+=imgsped
	dir2=(dir1+3+360)mod(360)
	dir1=dir2

	x=lengthdir_x(other.ringsize,dir2)+Me.x+10
	y=lengthdir_y(other.ringsize,dir2)+Me.y+12

	xspot=other.x
	yspot=other.y
	}

	if(phase==0){
	hitenemy=instance_place(x,y,Enemy)
	if(hitenemy!=noone){
	hitenemy.dr+=0.04*Control.itemsArray[0,4]
	hitenemy.drdraw+=0.04*Control.itemsArray[0,4]
	if(hitenemy.hurt<=0){
	hitenemy.hurttick=1
	}
	}}}}}

	//RELEASE
	if(Control.con_p_e||ringtick==1||Control.conp_p_e){
	check=2
	duration=10
	with(Me){
	animdel=Control.abilArray[other.abil,7]
	if(direction==0){
	moveaction=Control.abilArray[other.abil,6]
	}else{
	moveaction=Control.abilArray[other.abil,6]+1
	}}
	if(chargetype==1){
	//CREATE LEAF
	created=instance_create(x+choose(irandom_range(-2,2)),y+3,Dummy_two_object)
	with(created){
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	audio_play_sound_at(choose(snd_bossproj_tree_3,snd_bossproj_tree_4),x,y, 0, 90, 150, 0.5, false, 1) 
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	audio_play_sound_at(choose(snd_tree_abil1_shot1_pirate,snd_tree_abil1_shot2_pirate),x,y, 0, 90, 150, 0.5, false, 1) 
	}else{
	audio_play_sound_at(choose(snd_bossproj_tree_3,snd_bossproj_tree_4),x,y, 0, 90, 150, 0.5, false, 1) 
	}}
	creator=other.id
	delay=0
	zonex=random_range(-2,2)
	zoney=random_range(0.75,1.5)*choose(1,-1)

	imgsped=random_range(2.5,10)
	image_angle=irandom(360)
	dir1=0
	ringtype=0
	ringsize=12
	ringtick=0
	ringrange=8
	ringstart=8
	ringsped=0.1
	version=other.version

	sped=2.5
	//damage=1.5
	duration=24

	vsp=0
	hsp=sped
	diedelay=0

	//useaudio=1
	image_speed=0
	pin=107
	//OVER HALF HP
	if(version==1){
	image_index=choose(0,1)
	}else{
	image_index=choose(2,3)
	}

	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=abil_tree1
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=abil_tree1_pirate
	}else{
	sprite_index=abil_tree1
	}}}}}
	}else{

	//CAST CHECKS
	if(check==2){
	charge-=5
	chargedelay=0
	charge=charge/2
	if(charge<=0){
	charge=1
	}

	chargetype=0
	if(charge==1){
	chargetype=1
	}
	check=0
	direction=Me.direction
	x=Me.x+10
	y=Me.y+14
	visible=false
	if(Control.con_h_up||Control.conp_h_up){
	option=1
	}else{
	if(Control.con_h_down||Control.conp_h_down){
	option=2
	}}

	if(instance_exists(Dummy_two_object)){
	with(Dummy_two_object){
	if(pin==107){
	phase=1
	if(creator=other.id){
	if(ringtick==0){
	if(other.direction==0){
	hsp=sped
	image_xscale=1
	}else{
	hsp=-sped
	image_xscale=-1
	}
	if(!Control.con_h_up&&!Control.conp_h_up&&!Control.con_h_down&&!Control.conp_h_down){
	other.option=0
	}
	if(other.option==1){
	vsp=-sped/2
	if(other.direction==0){
	image_angle+=45
	}else{
	image_angle-=45
	}}else{
	if(other.option=2){
	vsp=sped/2
	if(direction==0){
	image_angle-=45
	}else{
	image_angle+=45
	}}else{
	option=0
	vsp=0
	}}}else{
	move_towards_point(Me.x+10,Me.y+12,sped)
	hsp=hspeed*-1
	vsp=vspeed*-1
	speed=0
	delay=0
	}}}}

	}}

	if(duration<=0){
	instance_destroy()
	}

	if(chargedelay==0){
	if(charge>0){
	charge-=1
	chargedelay=1

	x=Me.x+10
	y=Me.y+14

	//spellsnd=audio_emitter_create()
	//audio_play_sound_on(spellsnd,choose(witch_abil1_snd1,witch_abil1_snd2),false,8)

	}}else{
	chargedelay-=1
	}


	//LEAF PROJECTILE
	if(instance_exists(Dummy_two_object)){
	with(Dummy_two_object){
	if(pin==107){
	if(creator=other.id){
	other.duration=4
	image_angle+=imgsped
	if(delay>0){

	//leaf rotate
	dir2=(dir1+(range*2)+360)mod(360)
	dir1=dir2

	x=lengthdir_x(other.ringsize,dir2)+Me.x+10
	y=lengthdir_y(other.ringsize,dir2)+Me.y+12

	xspot=other.x
	yspot=other.y

	hitenemy=instance_place(x,y,Enemy)
	if(hitenemy!=noone){
	hitenemy.dr+=(damage/2)*Control.itemsArray[0,4]
	hitenemy.drdraw+=(damage/2)*Control.itemsArray[0,4]
	if(hitenemy.hurt<=0){
	hitenemy.hurttick=1
	}
	instance_destroy()
	}
	if(hsp>0){
	if(dir1<=0+range||dir1>=360-range){
	delay=0
	y+=zoney
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	audio_play_sound_at(choose(snd_bossproj_tree_3,snd_bossproj_tree_4),x,y, 0, 90, 150, 0.5, false, 1) 
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	audio_stop_sound(snd_tree_abil1_shot1_pirate)
	audio_stop_sound(snd_tree_abil1_shot2_pirate)
	audio_play_sound_at(choose(snd_tree_abil1_shot1_pirate,snd_tree_abil1_shot2_pirate),x,y, 0, 90, 150, 0.5, false, 1) 
	}else{
	audio_play_sound_at(choose(snd_bossproj_tree_3,snd_bossproj_tree_4),x,y, 0, 90, 150, 0.5, false, 1) 
	}}
	}}else{
	if(dir1>=180-range&&dir1<=180+range){
	delay=0
	y+=zoney
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	audio_play_sound_at(choose(snd_bossproj_tree_3,snd_bossproj_tree_4),x,y, 0, 90, 150, 0.5, false, 1) 
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	audio_stop_sound(snd_tree_abil1_shot1_pirate)
	audio_stop_sound(snd_tree_abil1_shot2_pirate)
	audio_play_sound_at(choose(snd_tree_abil1_shot1_pirate,snd_tree_abil1_shot2_pirate),x,y, 0, 90, 150, 0.5, false, 1) 
	}else{
	audio_play_sound_at(choose(snd_bossproj_tree_3,snd_bossproj_tree_4),x,y, 0, 90, 150, 0.5, false, 1) 
	}}
	}}

	}else{
	creator.duration=6
	if(duration>0&&diedelay==0&&!instance_place(x,y,Solid)){
	x+=hsp
	y+=vsp
	duration-=1
	}else{
	if(diedelay==0){
	diedelay=20
	}}

	//DEATH
	if(diedelay>0){
	if(diedelay>4){
	if(diedelay==20){
	//OVER HALF HP
	if(version==1){
	image_index=0
	}else{
	image_index=6
	}
	image_speed=0.3
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=abil_tree1_dis1
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=abil_tree1_dis1_pirate
	}else{
	sprite_index=abil_tree1_dis1
	}}}
	}else{
	instance_destroy()
	}
	diedelay-=1
	}else{

	//Leaf Trail
	if(duration mod 10==0){
	created=instance_create(x+irandom(3)*choose(1,-1),y+irandom(3)*choose(1,-1),Dummy_two_object)
	with(created){
	pin=108
	creator=other.creator
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=abil_tree1_trail_1
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	instance_destroy()
	}else{
	sprite_index=abil_tree1_trail_1
	}}
	image_speed=0

	//OVER HALF HP
	if(other.version==1){
	image_index=choose(0,1)
	}else{
	image_index=choose(2,3)
	}
	hsp=other.hsp*-1/8
	vsp=other.vsp*-1/8
	duration=20+irandom(10)
	}}

	//Hit Enemy
	hit=instance_place(x,y,ProjEn)
	if(hit!=noone){
	if(hit.abil==2){
	hit.phase=-1
	deathphase=1
	diedelay=20
	}}
	hit=instance_place(x,y,Enemy)
	if(hit!=noone){
	with(hit){
	dr+=(other.damage)*Control.itemsArray[0,4]
	drdraw+=(other.damage)*Control.itemsArray[0,4]
	if(hurt<=0){
	hurttick=1
	}}
	diedelay=20
	phase=-1
	}
	hit=instance_place(x,y,Solid)
	if(hit!=noone){
	if(hit.solidtype==3){
	hit.hurttick=1
	}
	diedelay=20
	phase=-1
	}

	}}}}else{

	//LEAF SHARDS ACTIVE
	if(pin==108){
	if(creator=other.id){
	if(duration>0){
	duration-=1
	}else{
	instance_destroy()
	}
	x+=hsp
	y+=vsp
	image_angle-=7.5
	other.duration=4
	}}}}}
	}}

	}else{
	//-------------------------------------------------<<**********<<{Movement}>>**********>>-------------------------------------------------
	if(argument0==1){
	if(check==1){
	check=0
	audio_play_sound_at(choose(snd_tree_abil2_shoot1,snd_tree_abil2_shoot2),x,y, 0, 90, 150, 0.5, false, 1) 
	imgsped=random_range(2.5,10)
	sped=5
	damage=1
	duration=60
	vsp=0
	hsp=sped
	diedelay=0
	activated=0
	startanim=-2

	direction=Me.direction
	if(direction!=0){
	hsp=hsp*-1
	}
	x=Me.x+10
	y=Me.y+14
	if(Control.con_h_up||Control.conp_h_up){
	option=1
	}else{
	if(Control.con_h_down||Control.conp_h_down){
	option=2
	}}

	//useaudio=1
	image_speed=0
	if(Me.hp>=Me.hptotal/2){
	image_index=choose(0,1)
	version=1
	}else{
	image_index=choose(2,3)
	version=2
	}

	if(direction==0){

	}else{
	image_xscale=-1
	}

	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=abil_tree2_vinehook
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=abil_tree2_vinehook_pirate
	}else{
	sprite_index=abil_tree2_vinehook
	}}
	if(option==1){
	vsp=-sped/2
	if(direction==0){
	image_angle+=45
	}else{
	image_angle-=45
	}}else{
	if(option=2){
	vsp=sped/2
	if(direction==0){
	image_angle-=45
	}else{
	image_angle+=45
	}}else{
	option=0
	vsp=0
	}}

	}

	creator.duration=6
	if(duration>0&&diedelay==0&&!instance_place(x,y,Solid)){
	x+=hsp
	y+=vsp
	duration-=1
	}else{
	if(diedelay==0){
	diedelay=10
	}}

	if(instance_place(x,y,Solid)){
	activated=1
	}

	//DEATH
	if(diedelay>0){
	if(diedelay>4){
	if(diedelay==10){

	if(Me.y+16>y){
	dury=(y-(Me.y+16))/8
	if(dury<-1.4){
	dury=-1.4
	}}else{
	dury=0
	}
	if(Me.x+10<x){
	durx=(x-(Me.x+10))/3.5
	}else{
	durx=((Me.x+10)-x)/3.5
	}
	extsped=durx
	distx=1.6+(extsped/24)
	if(distx>2.5){
	distx=2.5
	}

	if(activated==1){

	audio_play_sound_at(snd_tree_abil2,x,y, 0, 90, 150, 0.5, false, 1) 

	with(Me){
	vsp=-1.25+other.dury
	debuff=1
	debufftimer=other.durx
	if(x+10<other.x){
	debuffopt=other.distx
	}else{
	debuffopt=-other.distx
	}}}}
	}else{
	instance_destroy()
	}
	diedelay-=1
	}else{

	//Hit Enemy
	hit=instance_place(x,y,ProjEn)
	if(hit!=noone){
	if(hit.abil==2){
	hit.phase=-1
	deathphase=1
	diedelay=10
	}}
	hit=instance_place(x,y,Solid)
	if(hit!=noone){
	if(hit.solidtype==3){
	hit.hurttick=1
	}
	diedelay=10
	activated=1
	phase=-1
	}
	hit=instance_place(x,y,Enemy)
	if(hit!=noone){
	with(hit){
	dr+=(other.damage)*Control.itemsArray[0,4]
	drdraw+=(other.damage)*Control.itemsArray[0,4]
	if(hurt<=0){
	hurttick=1
	}}
	diedelay=10
	activated=1
	phase=-1
	}}

	}else{
	//-------------------------------------------------<<**********<<{THREE: Acorn bounce}>>**********>>-------------------------------------------------
	if(argument0==2){
	if(check==1){
	check=0

	for(i=0;i<3;i+=1){
	created=instance_create(x,y,Dummy_two_object)
	with(created){
	damage=3
	bounce=8
	duration=300+irandom(20)
	grav=0.025
	gravamount=0
	pin=110
	delay=0
	option=other.option
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=abil_tree1_alt1
	if(Me.hp>=Me.hptotal/2){
	image_index=0
	version=1
	}else{
	image_index=1
	version=2
	}
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=abil_tree1_alt1_pirate
	if(Me.hp>=Me.hptotal/2){
	image_index=choose(0,1)
	}else{
	image_index=2
	}
	}else{
	sprite_index=abil_tree1_alt1
	}}
	image_speed=0
	if(Me.direction==0){
	dir=0
	}else{
	dir=1
	image_xscale=-1
	}
	if(option==1){
	vsp=-0.25-(other.i*0.15)
	hsp=0.6+(random(0.25))
	if(dir==0){
	image_angle-=20
	}else{
	image_angle+=20
	}}else{
	if(option==2){
	hsp=0.4+(random(0.15))
	vsp=-1.25-(other.i*0.25)
	}else{
	hsp=0.5+random(0.15)
	vsp=-0.75-(other.i*0.15)
	}}
	if(Me.direction!=0){
	while(place_meeting(x,y,Solid)){
	x+=1
	}}else{
	while(place_meeting(x,y,Solid)){
	x-=1
	}}
	if(Me.direction!=0){
	hsp=hsp*-1
	}}
	}

	instance_destroy()
	}


	}else{

	}}
	}




}
