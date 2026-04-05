function projcheck_scr(argument0) {
	duration=Control.abilArray[abil,5]
	hostile=1
	//******************BOMBER PUMPKIN******************
	if(argument0==0){

	}else{
	//******************WIZARD WITCH******************
	if(argument0==1){

	}else{
	//******************SKELETON******************
	//Bonerang
	if(argument0==2){

	}else{
	//******************SunGod******************

	//Sun Bolt
	if(argument0==3){
	if(abil==0){
	if(creator.direction==0){
	dir=0
	}else{
	dir=1
	}
	checkw=1
	speed=1.75
	startanim=0
	if(Control.maskArray[Control.charselected,2]==0){
	startanimspr=abil_sungod1_dis1
	}else{
	startanimspr=abil_sungod1_dis1
	}

	startanimdur=24

	useaudio=1
	spellsnd=audio_emitter_create()
	sfx_play_on(spellsnd,choose(sunshot_snd1,sunshot_snd2),false,8)


	if(option==1){
	if(creator.direction==0){
	direction-=20
	}else{
	direction+=20
	}
	}else{
	if(option==2){
	if(creator.direction==0){
	direction+=20
	}else{
	direction-=20
	}

	}}

	image_angle=direction
	grav=0
	image_speed=0.3
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=abil_sungod1
	}else{
	sprite_index=abil_sungod1
	}
	}else{

	//Abil 2

	//Levitate
	if(abil==1){
	tick=1
	range=5
	rangecd=0
	rangespeed=0
	startx=Me.x
	starty=Me.y

	phase=1
	visible=false

	}else{

	//SandStorm
	//Abil 3
	if(abil==2){
	if(num==1){
	useaudio=1
	audiosize=5
	spellsnd=audio_emitter_create()
	sfx_play_on(spellsnd,choose(sandstorm_snd1,sandstorm_snd2),false,8)
	}

	sprite_index=abil_phar2
	image_speed=0
	image_index=irandom(sprite_get_number(abil_phar2))
	speed=random_range(1.1,1.6)
	//duration+=abs(1.2-speed)*75
	if(creator.direction==0){
	direction=(num*0.5)-8
	}else{
	direction=((num*0.5)-8)+180
	}

	if(option==1){
	if(direction==0){
	direction-=20
	}else{
	direction+=20
	}
	}else{
	if(option==2){
	if(direction==0){
	direction+=20
	}else{
	direction-=20
	}}}
	duration+=random(6)

	}else{

	}}}
	}else{

	//******************Plague Doctor******************
	if(argument0==4){
	if(abil==0){
	image_index=0
	bottle=image_index
	image_speed=0
	gravity=0.05

	chance=irandom(1)
	if(chance==1){
	sfx_play(witch_abil1_snd1,8,false)
	}else{
	sfx_play(witch_abil1_snd2,8,false)
	}

	if(creator.direction==0){
	dir=0
	}else{
	dir=180
	}

	if(option==0){
	speed=1.4
	if(dir==0){
	direction+=40
	}else{
	direction-=40
	}}else{
	if(option==1){
	speed=1.45
	if(dir==0){
	direction+=0
	}else{
	direction-=0
	}}else{
	if(option==2){
	speed=1.35
	if(dir==0){
	direction+=80
	}else{
	direction-=80
	}}else{

	}}}

	grav=0
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=abil_plag1
	}else{
	sprite_index=abil_plag1
	}
	}else{

	//Abil 2
	if(abil==1){

	if(direction==0){
	x+=10+(irandom(3))+(num*6)
	}else{
	x-=10+(irandom(3))+(num*6)
	}

	phase=1
	visible=false
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=abil_zomb2
	}else{
	sprite_index=abil_zomb2_alt1
	}
	grav=0.025
	vsp=random(1)
	hsp=0

	}else{

	//Abil 3
	if(abil==2){
	hsp=0
	vsp=0.0375
	grav=0
	grounded=0
	option=0
	diddmg=0
	creator.autocast=5
	creator.autocastspell=abil
	if(creator.mana>10){
	Control.charcdArray[creator.charid,abil]=0
	}
	sprite_index=abil_zomb3
	twoanim=abil_zomb3_2

	hitenemy=instance_place(x,y,Projectile)
	if(hitenemy!=noone){
	if(point_distance(x,y,hitenemy.x,hitenemy.y)<1&&hitenemy.abil==abil){
	instance_destroy()
	}}

	image_angle=irandom(360)
	image_speed=0.15

	}else{

	}}}}else{
	//******************Jester******************
	if(argument0==5){

	//SPELL
	if(abil==0){
	speed=2
	//startanim=0
	gravity=0.0625
	if(creator.direction==0){
	turn=5
	}else{
	turn=-5
	}

	if(option==0){
	if(creator.direction==0){
	direction+=60
	}else{
	direction-=60
	}
	}else{
	if(option==1){
	if(creator.direction==0){
	direction+=20
	}else{
	direction-=20
	}
	}else{
	if(option==2){
	if(creator.direction==0){
	direction+=80
	}else{
	direction-=80
	}}
	}}

	image_angle=direction
	grav=0
	image_speed=0.3
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=abil_jest1
	}else{
	sprite_index=abil_jest1
	}
	}}else{
	//******************Dragon******************
	if(argument0==6){

	//Fire
	if(abil==0){
	speed=2
	gravity=0.0625

	if(option==0){
	if(creator.direction==0){
	direction+=60
	}else{
	direction-=60
	}
	}else{
	if(option==1){
	if(creator.direction==0){
	direction+=20
	}else{
	direction-=20
	}
	}else{
	if(option==2){
	if(creator.direction==0){
	direction+=80
	}else{
	direction-=80
	}}
	}}

	image_angle=direction
	grav=0
	image_speed=0.3
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=abil_drag1
	}else{
	sprite_index=abil_drag1
	}
	}}else{

	//******************Robo******************
	if(argument0==7){
	//Shot
	smoke=instance_create(x,y,Dummy_object)
	//smoke
	with(smoke){
	pin=900
	visible=true
	chance=choose(0,1)
	if(chance==0){
	sprite_index=abil_robo2_smoke1
	}else{
	sprite_index=abil_robo2_smoke2
	}
	image_speed=0.1
	image_index=0
	turn=choose(2.5,-2.5)
	image_angle=irandom(360)
	}

	//Rapid Shot
	if(abil==0){
	with(creator){
	debuff=1
	debufftimer=4
	if(direction==0){
	debuffopt=-1.5
	}else{
	debuffopt=1.5
	}}

	if(creator.vsp>0){
	creator.vsp-=1
	}
	with(Projectile){
	if(Projectile!=id&&abil==other.abil){
	if(duration>120){
	other.creator.mana+=10
	}}}
	sfx_play(shot_snd1,7,false)
	duration=180
	sprite_index=abil_robo1
	image_speed=0
	image_index=0
	speed=2

	if(option==0){
	if(creator.direction==0){

	}}else{
	if(option==1){
	if(creator.direction==0){
	direction-=10
	}else{
	direction+=10
	}
	}else{
	if(option==2){
	if(creator.direction==0){
	direction+=10
	}else{
	direction-=10
	}}}}


	}else{

	//Spread Shot
	if(abil==1){
	smoketwo=0

	Control.screenshake+=2
	if(!audio_is_playing(shot_snd2)){
	sfx_play(shot_snd2,7,false)
	}
	duration=60
	sprite_index=abil_robo2
	image_speed=0.25
	image_index=0
	speed=2.5

	//Left Right
	if(option!=1){
	creator.vsp=-0.9
	with(creator){
	debuff=1
	debufftimer=10
	if(direction==0){
	debuffopt=-2
	}else{
	debuffopt=2
	}}
	if(creator.direction==0){
	direction+=creator.direction+((num*10)-10)
	}else{
	direction+=(creator.direction+((num*15)-15))-180
	}}else{
	//Down
	creator.vsp=-1.75
	creator.moveaction=12
	direction=(num*10)+260
	}
	image_angle=direction
	}}

	}


	}


	}}}}}
	}



}
