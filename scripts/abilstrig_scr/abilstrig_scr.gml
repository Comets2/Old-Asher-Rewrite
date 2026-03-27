function abilstrig_scr(argument0, argument1) {
	if(argument1==0){

	}else{
	//***********Wizard Witch***********
	if(argument1==1){

	}else{
	//***********Skeleton 1***********
	if(argument1==2){


	}else{
	//***********SunGod 1***********
	if(argument1==3){
	//ABIL 1

	//Ray Shot
	if(argument0==0){
	image_angle=direction

	if(Control.con_p_up){
	if(dir==0){
	direction+=1.5
	}else{
	direction-=1.5
	}}
	if(Control.con_p_down){
	if(dir==0){
	direction-=1.5
	}else{
	direction+=1.5
	}}

	enemyhit=instance_place(x,y,ProjEn)
	if(enemyhit!=noone){
	if(enemyhit.abil==2){
	enemyhit.phase=-1
	deathphase=1
	}}

	if(phase!=-2){
	hitter=instance_place(x,y,Solid)
	if(hitter!=noone){
	phase=-1
	}

	hit=instance_place(x,y,Enemy)
	if(hit!=noone){
	with(hit){
	dr+=other.damage
	drdraw+=other.damage
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
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=abil_sungod1_dis1
	}else{
	sprite_index=abil_sungod1_dis1
	}}

	}else{
	image_angle+=irandom_range(90,270)
	if(image_index>=image_number-2){
	deathphase=1
	}}

	}else{

	//ABIL 2
	//**************{Levitate}*************
	if(argument0==1){
	if(creator.hsp!=0){
	duration-=2
	}

	with(Me){
	if(!instance_place(x,y+1,Solid)&&!instance_place(x,y-1,Solid)&&!instance_place(x-1,y,Solid)&&!instance_place(x+1,y,Solid)){
	if(other.tick==0){
	if(y<other.starty+other.range){
	y+=0.125
	}else{
	other.tick=1
	}}else{
	if(y>other.starty-other.range){
	y-=0.125
	}else{
	other.tick=0
	}}
	}else{
	other.phase=-1
	}}

	if(creator.grounded=!1){
	creator.slow=1
	creator.slowamount=0.5
	creator.jumpamount=1
	creator.gravamount=0
	creator.vsp=0
	}else{
	phase=-1
	}

	if(phase==-1||Control.con_p_q||instance_place(Me.x+1,Me.y,Solid)||instance_place(Me.x-1,Me.y,Solid)||Control.con_p_space){
	creator.slow=0
	creator.slowamount=1
	creator.jumpamount=1
	creator.gravamount=1
	deathphase=1
	}

	}else{

	//ABIL 3
	if(argument0==2){
	image_angle+=irandom_range(90,270)
	image_speed=0.15

	enemyhit=instance_place(x,y,ProjEn)
	if(enemyhit!=noone){
	if(enemyhit.abil==2){
	enemyhit.phase=-1
	phase=-1
	}}

	if(phase!=-2){
	hitter=instance_place(x,y,Solid)
	if(hitter!=noone){
	phase=-1
	}

	hit=instance_place(x,y,Enemy)
	if(hit!=noone){
	with(hit){
	//y-=0.1
	//vsp=-0.5
	grav=0
	if(other.damage-(other.duration*0.025)<0.2){
	dr+=0.2
	drdraw+=0.2
	}else{
	dr+=other.damage-(other.duration*0.025)
	drdraw+=other.damage-(other.duration*0.025)
	}
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
	}

	}else{
	image_angle+=irandom_range(90,270)
	if(image_index>=image_number-2){
	deathphase=1
	}}

	}
	}}

	}else{
	//***********Plague Doctor***********
	if(argument1==4){
	//ABIL 1
	if(argument0==0){

	if(dir==0){
	image_angle+=5
	}else{
	image_angle-=5
	}

	enemyhit=instance_place(x,y,ProjEn)
	if(enemyhit!=noone){
	if(enemyhit.abil==2){
	enemyhit.phase=-1
	deathphase=1
	}}

	if(phase!=-2){
	hitter=instance_place(x,y,Solid)
	if(hitter!=noone){
	phase=-1
	}

	hit=instance_place(x,y,Enemy)
	if(hit!=noone){
	with(hit){
	dr+=other.damage
	drdraw+=other.damage
	if(hurt<=0){
	hurttick=1
	}}
	phase=-1
	}
	if(phase==-1){
	phase=-2
	startanim=0
	startx=x+6
	starty=y
	if(bottle==0){
	startanimspr=abil_plag1_dis1_3
	}else{
	if(bottle==1){
	startanimspr=abil_plag1_dis1_1
	}else{
	startanimspr=abil_plag1_dis1_2
	}}
	startanimdur=24
	speed=0
	gravity=0
	image_index=0
	image_speed=0.3
	sprite_index=abil_plag1_dis1

	for(i=0;i<6;i+=1){
	created=instance_create(x+(i*2)-6,y+random(2)-1,Part)
	with(created){
	type=0
	subtype=other.bottle
	num=other.i
	check=1
	creator=id
	if(other.bottle==0){
	sprite_index=abil_plag1_dis1_3
	}else{
	if(other.bottle==1){
	sprite_index=abil_plag1_dis1_1
	}else{
	sprite_index=abil_plag1_dis1_2
	}}}
	}
	}

	}else{
	image_angle+=irandom_range(90,270)
	if(image_index>=image_number-2){
	deathphase=1
	}}

	}else{

	//ABIL 2
	if(argument0==1){

	gravity_scr()

	if(grounded==1&&phase==1){
	phase=2
	enemyhit=noone
	image_index=0
	visible=true
	image_speed=random_range(0.075,0.125)
	}

	if(phase==2){
	if(image_index>6){
	phase=-1
	}
	if(image_index<=4&&image_index>=2){
	hitenemy=instance_place(x,y,Enemy)
	if(hitenemy!=noone){
	phase=3
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	sprite_index=abil_zomb2_2
	}else{
	sprite_index=abil_zomb2_2_alt1
	}
	image_index=0
	image_speed=0.05
	visible=true
	hitsolid=instance_place(x,y-4,Projectile)
	if(hitsolid!=noone){
	if(hitsolid.abil==2){
	damage=damage*2
	}}
	hitenemy.dr+=damage
	hitenemy.drdraw+=damage
	if(hitenemy.hurt<=0){
	hitenemy.hurttick=1
	}
	}}
	}

	if(phase==3){
	if(hitenemy!=noone){
	if(instance_exists(hitenemy)){
	hitenemy.slow=2
	hitenemy.slowamount=0
	hitenemy.jumpamount=0
	hitenemy.gravamount=1
	}}
	if(image_index>=5){
	phase=-1
	}
	}

	if(phase==1){
	hitenemy=instance_place(x,y,Solid)
	if(hitenemy!=noone){
	Control.charcdArray[Control.charselected,abil]=0
	phase=-1
	}}


	if(phase==-1){
	if(hitenemy!=noone){
	if(instance_exists(hitenemy)){
	hitenemy.slow=0
	hitenemy.slowamount=1
	hitenemy.jumpamount=1
	hitenemy.gravamount=1
	}}
	deathphase=1
	}

	}else{

	//ABIL 3
	if(argument0==2){
	image_xscale-=0.0005
	image_yscale-=0.0005
	if(option==0){
	gravity_scr()
	if(grounded==1){
	option=1
	}
	}else{

	}
	hitenemy=instance_place(x,y,Enemy)
	if(hitenemy!=noone){
	if(diddmg==0){
	if(hitenemy.immune==0){
	with(Projectile){
	if(abil==other.abil){
	diddmg=1
	other.diddmg=1
	}}}
	if(hitenemy.dr<damage*40){
	hitenemy.dr+=damage*40
	hitenemy.drdraw+=damage*40
	if(hitenemy.hurt<=0){
	hitenemy.hurttick=1
	}}
	}else{
	if(hitenemy.dr<damage){
	hitenemy.dr+=damage
	hitenemy.drdraw+=damage
	if(hitenemy.hurt<=0){
	hitenemy.hurttick=1
	}}}
	}

	//image_angle=irandom(360)
	if(phase==-1){
	deathphase=1
	}}
	}}

	}else{

	//***********Jester***********
	if(argument1==5){
	//ABIL 1
	if(argument0==0){
	if(phase>0){
	image_angle+=turn
	}
	//torch
	enemyhit=instance_place(x,y,ProjEn)
	if(enemyhit!=noone){
	duration=0
	if(enemyhit.abil==2){
	enemyhit.phase=-2
	deathphase=1
	}}

	if(phase!=-2){
	hitter=instance_place(x,y,Solid)
	if(hitter!=noone){
	y+=2
	phase=-1
	}

	hit=instance_place(x,y,Enemy)
	if(hit!=noone){
	with(hit){
	dr+=other.damage
	drdraw+=other.damage
	if(hurt<=0){
	hurttick=1
	}}
	phase=-2
	duration=0
	}
	if(phase==-1){
	//image_angle=0
	duration=240
	phase=-2
	speed=0
	gravity=0
	}

	}else{
	if(duration<=0){
	deathphase=1
	}}

	}}else{

	//***********Dragon***********
	if(argument1==6){
	//ABIL 1
	if(argument0==0){
	if(phase>0){
	image_angle=direction
	}
	//Fire
	enemyhit=instance_place(x,y,ProjEn)
	if(enemyhit!=noone){
	duration=0
	if(enemyhit.abil==2){
	enemyhit.phase=-2
	deathphase=1
	}}

	if(phase!=-2){
	hitter=instance_place(x,y,Solid)
	if(hitter!=noone){
	y+=2
	phase=-1
	}

	hit=instance_place(x,y,Enemy)
	if(hit!=noone){
	with(hit){
	dr+=other.damage
	drdraw+=other.damage
	if(hurt<=0){
	hurttick=1
	}}
	phase=-2
	duration=0
	}
	if(phase==-1){
	//image_angle=0
	duration=240
	phase=-2
	speed=0
	gravity=0
	}

	}else{
	if(duration<=0){
	deathphase=1
	}}

	}}else{

	//***********ROBO***********
	if(argument1==7){
	with(smoke){
	y-=random_range(0.25,0.75)
	x+=choose(0.125,-0.125)
	chance=choose(0.025,-0.025)
	image_angle+=turn
	image_xscale+=chance
	image_yscale+=chance
	}

	//Bullet
	if(argument0==0){
	if(phase!=-2){
	image_angle+=15.5
	if(duration>0){
	duration-=1
	}else{
	phase=-2
	}

	hit=instance_place(x,y,Enemy)
	if(hit!=noone){
	with(hit){
	dr+=other.damage
	drdraw+=other.damage
	if(hurt<=0){
	hurttick=1
	}}
	phase=-2
	duration=0
	}

	hit=instance_place(x,y,Solid)
	if(hit!=noone){
	phase=-2
	duration=0
	}

	}else{
	//Phase -2
	visible=false
	if(duration>-60){
	duration-=1
	with(smoke){
	deathphase=1
	}
	deathphase=1
	}}

	}else{

	//Spread Shot
	if(argument0==1){
	if(phase!=-2){
	if(duration>0){
	duration-=1
	}else{
	phase=-2
	}

	hit=instance_place(x,y,Enemy)
	if(hit!=noone){
	with(hit){
	dr+=other.damage
	drdraw+=other.damage
	if(hurt<=0){
	hurttick=1
	}}
	phase=-2
	duration=0
	}

	hit=instance_place(x,y,Solid)
	if(hit!=noone){
	phase=-2
	duration=0
	}

	}else{

	//Phase -2
	visible=false
	if(duration>-60){
	duration-=1
	}else{
	with(smoke){
	deathphase=1
	}
	deathphase=1
	}}}

	}}


	}


	}
	}}}}}





}
