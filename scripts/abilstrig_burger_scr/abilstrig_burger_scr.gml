function abilstrig_burger_scr(argument0) {
	//-------------------------------------------------<<**********<<{Auto: Burgertoss}>>**********>>-------------------------------------------------
	if(argument0==0){
	if(check==1){
	modamount=5
	if(Me.passivetick==3){
	type=2
	modamount=2
	Me.passivetick=0
	Me.passiveticktwo=1
	damage+=damage*1.5
	}else{
	type=1
	}
	with(Me){
	if(onpassive==1){
	if(mana<(manatotal+Control.itemsArray[0,3])-10){
	mana+=10
	}else{
	mana=manatotal+Control.itemsArray[0,3]
	}}}
	dir=creator.direction
	check=0
	useaudio=1
	spellsnd=audio_emitter_create()
	sfx_play_on(spellsnd,choose(snd_burger_burger_sizzle1,snd_burger_burger_sizzle2),false,8)
	duration=100
	gravsped=0.0275
	gravspedtick=0
	checktick=100
	diddmg=0
	hsp=1.25
	vsp=-0.625
	flipsped=2.5
	if(option==1){
	flipsped=1.75
	hsp=0.8
	vsp+=0.5
	}else{
	if(option==2){
	flipsped=3.25
	hsp=0.8
	vsp-=0.6
	}}
	if(dir!=0){
	hsp=hsp*-1
	}
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=abil_burger_burger_spr
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=abil_burger_burger_alt1_spr
	}else{
	sprite_index=abil_burger_burger_spr
	}}
	image_speed=0
	image_index=irandom(image_number)
	}

	if(phase>=0){
	//ENEMY
	hit=instance_place(x,y,Enemy)
	if(hit!=noone){
	//sfx_play_at(choose(snd_burger_burger_thud1,snd_burger_burger_thud2),x,y, 0, 90, 150, 0.5, false, 1) 
	diddmg=1
	if(Me.passivetick<3&&type!=2){
	Me.passivetick+=1
	if(Me.passivetick<3){
	sfx_play(snd_burger_burger_passiveready2,1,false) 
	}else{
	sfx_play(snd_burger_burger_passiveready1,1,false) 
	}}
	if(type==2){
	if(Me.mana<(Me.manatotal+Control.itemsArray[0,3])-(Control.abilArray[argument0,0])){
	Me.mana+=Control.abilArray[argument0,0]
	}else{
	Me.mana=Me.manatotal+Control.itemsArray[0,3]
	}}


	with(hit){
	grav=0
	dr+=other.damage*Control.itemsArray[0,4]
	drdraw+=other.damage*Control.itemsArray[0,4]

	if(hurt<=0){
	hurttick=1
	}}
	phase=-1
	}
	hit=instance_place(x+hsp,y+vsp+gravspedtick,Solid)
	if(hit!=noone){
	if(hit.solidtype==3){
	hit.hurttick=1
	}}
	if(instance_place(x+hsp,y+vsp+gravspedtick,Solid)||duration<=0){
	sfx_play_at(choose(snd_burger_burger_thud1,snd_burger_burger_thud2),x,y, 0, 90, 150, 0.5, false, 1) 
	phase=-1
	Me.passivetick=0
	}}else{
	if(phase=-1){
	if(checktick>0){
	//Hit Poof
	if(checktick==100){
	visible=false
	for(i=0;i<16*type;i+=1){
	created=instance_create(x+irandom(3)*choose(1,-1),y+irandom(3)*choose(1,-1),Dummy_two_object)
	with(created){
	type=2
	pin=108
	creator=other.id
	speed=0.375+random_range(0,0.25)
	direction=other.i*20
	hsp=hspeed
	vsp=vspeed
	speed=0
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=abil_burger_pieces_spr
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=abil_burger_pieces_alt1_spr
	}else{
	sprite_index=abil_burger_pieces_alt1_spr
	}}
	image_speed=0
	image_index=irandom(image_number)
	duration=20+irandom(10)
	durationtotal=duration
	}}
	}
	checktick-=1
	}else{
	phase=-2
	}}}


	if(phase=-2){
	//DESTROY SELF
	with(Dummy_two_object){
	if(pin==108){
	if(creator=other.id){
	instance_destroy()
	}}}
	instance_destroy()
	}else{

	//Leaf Trail
	if(duration mod modamount==0&&phase>=0){
	created=instance_create(x+irandom(3)*choose(1,-1),y+irandom(3)*choose(1,-1),Dummy_two_object)
	with(created){
	type=1
	pin=108
	creator=other.id
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=abil_burger_pieces_spr
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=abil_burger_pieces_alt1_spr
	}else{
	sprite_index=abil_burger_pieces_alt1_spr
	}}
	image_speed=0
	image_index=irandom(image_number)
	duration=20+irandom(10)
	durationtotal=duration

	hsp=other.hsp*-1/8
	vsp=other.vsp*-1/8
	}}


	if(dir==0){
	image_angle+=flipsped
	}else{
	image_angle-=flipsped
	}
	x+=hsp
	gravspedtick+=gravsped
	y+=vsp+gravspedtick
	}


	}else{
	//-------------------------------------------------<<**********<<{TWO: Fries}>>**********>>-------------------------------------------------
	if(argument0==1){
	if(check==1){
	check=0
	type=1
	sfx_play_at(choose(snd_burger_fries_throw1,snd_burger_fries_throw2),x,y, 0, 90, 150, 0.5, false, 1) 
	if(Me.onpassive==1){
	checkpin=Me.checkpin
	type=2
	}

	if(Me.passivetick==3){
	typetwo=2
	Me.passivetick=0
	}else{
	typetwo=1
	}

	if(Me.direction==0){
	dir=0
	}else{
	dir=1
	}
	if(type==1){
	if(option==1){
	Me.vsp=-1.75+(typetwo*-0.75)
	}else{
	if(other.option==2){
	Me.vsp=1+(typetwo*0.75)
	}else{
	if(dir==0){
	with(Me){
	debuff=1
	debufftimer=10
	debuffopt=-1*other.typetwo
	vsp=-0.75
	}}else{
	with(Me){
	debuff=1
	debufftimer=10
	debuffopt=1*other.typetwo
	vsp=-0.75
	}
	}}}}
	for(i=0;i<15*(typetwo*1.25);i+=1){
	created=instance_create(x,y,Dummy_two_object)
	with(created){
	if(other.typetwo==2){
	if(other.type==1){
	diramount=1.5
	}else{
	diramount=0.75
	}
	}else{
	if(other.type==1){
	diramount=2
	}else{
	diramount=1
	}}
	damage=0.5

	//REGULAR
	if(other.type==1){
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=burger_fries_spr
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=burger_fries_alt1_spr
	}else{
	sprite_index=abil_burger_burger_spr
	}}
	duration=20+(irandom(15)*other.typetwo*4)
	gravity=0.0125
	if(other.dir==0){
	direction=30-other.i*diramount+(random(3))
	direction+=3
	}else{
	direction=150+other.i*diramount-(random(3))
	direction-=3
	}
	image_index=irandom(image_number)
	}else{
	//KETCHUP
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=burger_fries_2_spr
	image_index=irandom(image_number)
	}else{
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	sprite_index=burger_fries_ketchup_alt1_spr
	if(instance_exists(other.checkpin)){
	if(other.checkpin.sprite_index==burger_ketchup_alt1_1_spr||other.checkpin.sprite_index==burger_ketchup_slant_alt1_spr||other.checkpin.sprite_index==burger_ketchup_slant2_alt1_spr){
	image_index=choose(0,1,2)
	}else{
	image_index=choose(3,4,5)
	}}else{
	image_index=irandom(image_number)
	}
	}else{
	sprite_index=abil_burger_burger_spr
	image_index=irandom(image_number)
	}}
	duration=50+(irandom(10)*other.typetwo*2)
	gravity=0.005
	if(other.dir==0){
	direction=15-other.i*diramount+(random(2))
	direction+=3
	}else{
	direction=165+other.i*diramount-(random(2))
	direction-=3
	}
	}
	if(other.option==1&&Me.grounded!=1){
	if(other.dir==0){
	direction-=90
	}else{
	direction+=90
	}
	}else{
	if(other.option==2){
	if(other.dir==0){
	direction+=60
	}else{
	direction-=60
	}}}
	speed=1+random(0.35)
	image_speed=0
	pin=109
	}}
	instance_destroy()
	}


	}else{
	//-------------------------------------------------<<**********<<{THREE: KETCHUP}>>**********>>-------------------------------------------------
	if(argument0==2){
	if(check==1){
	check=0
	duration=120
	}
	if(duration>0){
	//duration-=1
	Me.passiveticktwo=1
	Me.passivetickthree=1
	}else{
	Me.passivetickthree=0
	instance_destroy()
	}

	}else{

	}}
	}




}
