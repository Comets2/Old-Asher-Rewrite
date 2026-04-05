function abilstrig_wizard_scr(argument0) {
	//-------------------------------------------------<<**********<<{Auto: SPELL}>>**********>>-------------------------------------------------
	if(argument0==0){
	if(check==1){
	check=0
	speed=2.75
	startanim=0
	if(creator.direction==0){
	dir=0
	}else{
	dir=1
	}
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	startanimspr=abil_witch_dis1
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	startanimspr=abil_witch_dis1_alt1
	}else{
	startanimspr=abil_witch_dis1_alt2
	}}

	startanimdur=24
	useaudio=1
	spellsnd=audio_emitter_create()
	sfx_play_on(spellsnd,choose(witch_abil1_snd1,witch_abil1_snd2),false,8)

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
	image_speed=0.15
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=abil_witch1
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=abil_witch1_alt1
	}else{
	sprite_index=abil_witch1_alt2
	}}}
	//SPELL
	enemyhit=instance_place(x,y,ProjEn)
	if(enemyhit!=noone){
	if(enemyhit.abil==2){
	enemyhit.phase=-1
	deathphase=1
	}}

	//Spell Trail
	for(i=0;i<15;i+=1){
	if(dir==0){
	created=instance_create(x+(random_range(4,6)),y+(random_range(-2,2)),Dummy_two_object)
	}else{
	created=instance_create(x+(random_range(-6,-4)),y+(random_range(-2,2)),Dummy_two_object)
	}
	with(created){
	diddmg=0
	pin=555
	depth=5
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=abil_witch_part1
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=abil_witch_part1_alt1
	}}
	image_speed=0
	image_index=(irandom(image_number)/2)*2
	image_angle=irandom(360)
	speed=random_range(0.05,0.25)
	hsp=0
	vsp=0
	duration=choose(2,4)
	if(y>other.y+1||y<other.y-1){
	duration=2
	}else{
	if(y<other.y+0.5&&y>other.y-0.5){
	duration=4
	}}

	durationtotal=duration
	}}

	if(phase!=-2){

	hit=instance_place(x,y,Solid)
	if(hit!=noone){
	if(hit.solidtype==3){
	hit.hurttick=1
	}
	phase=-1
	}

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
	if(phase==-1){
	phase=-2
	speed=0
	image_index=0
	image_speed=0.15
	visible=false
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	//sprite_index=abil_witch_dis1
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	//sprite_index=abil_witch_dis1_alt1
	}else{
	sprite_index=abil_witch_dis1_alt2
	}}
	}

	}else{
	image_angle+=irandom_range(90,270)
	if(image_index>=image_number-2){
	deathphase=1
	}}

	}else{
	//-------------------------------------------------<<**********<<{TWO: BROOM}>>**********>>-------------------------------------------------
	if(argument0==1){
	if(check==1){
	check=0
	hostile=0
	gravamount=0
	slowamount=0
	savegravamount=0
	saveslowamount=0
	if(direction==0){
	dir=0
	}else{
	dir=180
	}
	image_angle=Me.wepangle

	phase=3
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=abil_witch2
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=abil_witch2
	}else{
	sprite_index=abil_witch2_alt2
	}}
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	image_index=1
	}else{
	image_index=0
	}
	image_speed=0
	creator.nowep=1
	if(option==0){
	creator.vsp=-1.45
	angle=0
	}else{
	if(option==1){
	creator.vsp=0
	angle=-30
	}else{
	if(option==2){
	creator.vsp=-2.35
	angle=30
	}}}}
	with(Me){

	//Spell Trail
	for(i=0;i<3;i+=1){

	created=instance_create(x+10+(random_range(-2,2)),y+(random_range(-2,2))+16,Dummy_two_object)

	with(created){
	diddmg=0
	pin=555
	depth=5
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=abil_witch_part1
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=abil_witch_part1_alt1
	}}
	image_speed=0.05
	image_index=(irandom(image_number)/2)*2
	image_angle=irandom(360)
	speed=random_range(0.05,0.25)
	hsp=0
	vsp=0
	duration=choose(2,4)
	if(y>other.y+1||y<other.y-1){
	duration=random_range(6,10)
	}else{
	if(y<other.y+0.5&&y>other.y-0.5){
	duration=random_range(12,16)
	}}

	durationtotal=duration
	}}

	if(instance_place(x+1,y,Solid)||instance_place(x-1,y,Solid)){
	other.phase=-1
	}}
	if(phase!=10){
	hitenemy=instance_place(x,y,Poop)
	if(hitenemy!=noone){
	phase=-1
	}

	if(direction==0){
	image_angle=floor(angle/10)*10
	}else{
	image_angle=floor(angle/10)*-10
	}
	image_xscale=creator.drawflip

	if(dir!=creator.direction){
	//creator.slowamount=creator.slowamount/2
	if(dir==0){
	dir=180
	}else{
	dir=0
	}}

	if(creator.drawflip==1){
	direction=0
	}else{
	direction=180
	}

	if(phase==3){
	phase=2
	creator.slow=1
	creator.slowamount=1
	creator.jumpamount=1
	creator.gravamount=1
	}

	if(Control.con_h_up||Control.conp_h_up){
	if(angle<30){
	angle+=8
	}}
	if(Control.con_h_down||Control.conp_h_down){
	if(angle>-30){
	angle-=8
	}}

	if(angle>10){

	option=2
	}else{
	if(angle<-10){
	option=1
	}else{
	option=0
	}}
	if(!Control.con_p_q||!Control.conp_p_q){
	if(creator.vsp>0&&creator.mana>1){
	creator.slow=1
	creator.mana-=0.375
	if(option==0){
	if(creator.hsp<creator.movespeed+1&&creator.hsp>(creator.movespeed+1)*-1){
	creator.slowamount=creator.slowamount*1.015
	creator.jumpamount=1
	creator.gravamount=creator.gravamount*0.80
	saveslowamount=creator.slowamount
	savegravamount=creator.gravamount
	}else{
	vsp=2
	creator.slowamount=saveslowamount
	creator.jumpamount=1
	creator.gravamount=savegravamount
	}}else{
	if(option==1){
	if(creator.hsp<4.5&&creator.hsp>-4.5&&creator.slowamount<1.8){
	creator.slowamount=creator.slowamount*1.035
	creator.jumpamount=1
	creator.gravamount=creator.gravamount*0.84
	saveslowamount=creator.slowamount
	savegravamount=creator.gravamount
	}else{
	vsp=2
	creator.slowamount=saveslowamount
	creator.jumpamount=1
	creator.gravamount=savegravamount
	}}else{
	if(option==2){
	if(creator.slowamount>0.1){
	creator.slowamount=creator.slowamount*0.995
	creator.jumpamount=1
	creator.gravamount=creator.gravamount*0.74
	}else{
	vsp=2
	creator.slowamount=1
	creator.jumpamount=1
	creator.gravamount=1
	}
	}}}}}

	if(Control.con_p_q||Control.conp_p_q){
	phase=-1
	}

	if(direction==0){

	x=creator.x+Control.abilArray[abil,8]
	y=creator.y+Control.abilArray[abil,9]
	}else{

	x=creator.x+Control.abilArray[abil,8]+2
	y=creator.y+Control.abilArray[abil,9]
	}

	duration=20

	Me.animdel=6
	if(Me.grounded==1||phase=-1){
	Me.animdel=0
	creator.wepangle=image_angle
	creator.nowep=0
	creator.slowamount=1
	creator.jumpamount=1
	creator.gravamount=1
	deathphase=1
	}}else{
	if(Me.grounded==1||phase=-1){
	Me.animdel=0
	creator.wepangle=image_angle
	creator.nowep=0
	creator.slowamount=1
	creator.jumpamount=1
	creator.gravamount=1
	deathphase=1
	}}
	}else{
	//-------------------------------------------------<<**********<<{THREE: BATS}>>**********>>-------------------------------------------------
	if(argument0==2){
	if(check==1){
	check=0
	speed=random_range(0.4,0.6)
	duration+=abs(0.6-speed)*150
	startanim=0

	if(creator.direction==0){
	image_xscale=1
	}else{
	image_xscale=-1
	}

	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	startanimspr=abil_witch_dis1
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	startanimspr=abil_witch_dis1_alt1
	}else{
	startanimspr=abil_witch_dis1_alt2
	}}
	startanimdur=24
	if(creator.direction==0){
	direction=10-(num*0.75)
	}else{
	direction=170+(num*0.75)
	}

	if(num==1){
	useaudio=1
	audiosize=5
	spellsnd=audio_emitter_create()
	sfx_play_on(spellsnd,choose(bat_snd1,bat_snd2),false,8)
	}



	grav=0
	image_speed=0.25
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=abil_witch3
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=abil_witch3_alt1
	}else{
	sprite_index=abil_witch3_alt2
	}}}

	enemyhit=instance_place(x,y,ProjEn)
	if(enemyhit!=noone){
	if(enemyhit.abil==2){
	enemyhit.phase=-1
	phase=-1
	}}

	if(phase!=-2){
	hit=instance_place(x,y,Solid)
	if(hit!=noone){
	if(hit.solidtype==3){
	hit.hurttick=1
	}
	phase=-1
	}

	hit=instance_place(x,y,Enemy)
	if(hit!=noone){
	with(hit){
	//y-=0.1
	//vsp=-0.5
	grav=0
	dr+=0.65*Control.itemsArray[0,4]
	drdraw+=0.65*Control.itemsArray[0,4]

	if(hurt<=0){
	hurttick=1
	}}
	phase=-1
	}

	hit=instance_place(x,y,creator)
	if(hit!=noone){
	creator.vsp=-0.25
	creator.grav=0
	}

	if(phase==-1){
	phase=-2
	speed=0
	image_index=0
	image_speed=0.15
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=abil_witch_dis1
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=abil_witch_dis1_alt1
	}else{
	sprite_index=abil_witch_dis1_alt2
	}}
	}

	}else{
	image_angle+=irandom_range(90,270)
	if(image_index>=image_number-2){
	deathphase=1
	}}

	}else{

	}}
	}




}
