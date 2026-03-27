function forestenemy_scr() {
	//***************************{[Mushroom]}***************************
	if(subtype==0){

	if(phase==0){
	if(check==1){
	dir=0
	//for river
	for(i=0;i<8;i+=1){
	wood=instance_create(1216+(i*100),191,Solid_plat)
	wood.sprite_index=solidpieces_forest_spr
	wood.visible=true
	wood.depth=Me.depth-1
	wood.image_index=i
	wood.image_speed=0
	wood.timer=0
	wood.type=1
	}
	Poop.timer=0
	Poop.type=1
	for(i=0;i<8;i+=1){
	wood=instance_create(1266+(i*100),212+(random_range(1,6)*choose(1,-1)),Enemy)
	wood.sprite_index=fish_spr
	wood.subtype=2
	wood.enemytype=3
	}

	check=0
	timer=120
	shroom=irandom(2)
	image_index=0
	image_speed=0
	sprite_index=mushroom1_spr
	mask_index=sprite_index
	hp=50
	}

	//for river
	with(Solid_plat){
	if(type==1){
	if(timer==30){
	y+=1
	}else{
	if(timer==60){
	y-=1
	}
	if(timer==90){
	y-=1
	}else{
	if(timer==120){
	y+=1
	timer=0
	}}}
	timer+=1
	}}
	with(Poop){
	if(type==1){
	if(timer==30){
	y+=1
	created.y=y
	}else{
	if(timer==60){
	y-=1
	created.y=y
	}
	if(timer==90){
	y-=1
	created.y=y
	}else{
	if(timer==120){
	y+=1
	created.y=y
	timer=0
	}}}
	timer+=1
	}}


	if(timer>0){
	timer-=1
	if(timer==35){
	image_index+=1
	}else{
	if(timer==28){
	image_index+=1
	}else{
	if(timer==22){
	image_index+=1
	}else{
	if(timer==10){
	image_index+=1
	}else{
	if(timer==192){
	image_index=shroom*3
	}else{
	if(timer==182){
	image_index+=1
	}else{
	if(timer==172){
	image_index+=1
	}else{
	if(timer==150){
	image_index+=1
	}else{
	if(timer==140){
	image_index+=1
	}else{
	}
	}}}}}}}}

	}else{
	if(point_distance(x+8,y+8,Me.x+10,Me.y+12)){

	for(i=0;i<36;i+=1){
	created=instance_create(x+8+choose(-1,1),y+5+choose(-1,0.3,-0.5),ProjEn)
	created.classtype=3
	created.abil=0
	created.num=i
	created.creator=id
	}
	timer=200
	image_index+=1
	}}

	}else{

	//**********EVIL SHROOM***********
	if(phase==1){
	if(check==1){
	check=0
	timer=120
	image_index=0
	image_speed=0.15
	sprite_index=mushroom1_extra1
	mask_index=sprite_index
	delay=60
	option=5
	tick=irandom(1)
	}

	if(animdel>0){

	}else{
	sprite_index=mushroom1_extra1
	}

	if(delay>0){
	delay-=1
	if(delay==40){
	animdel=delay
	if(tick==0){
	sprite_index=mushroom1_extra1attack1
	}else{
	sprite_index=mushroom1_extra1attack2
	}
	image_index=0
	}else{
	if(delay==15){
	if(tick==0){
	created=instance_create(x-12,y-5,ProjEn)
	}else{
	created=instance_create(x+12,y-5,ProjEn)
	}
	created.classtype=3
	created.abil=1
	created.num=i
	created.creator=id
	}else{
	if(delay<=0){
	tick=irandom(1)
	if(option>0){
	delay=41
	option-=1
	}else{
	delay=180
	option=6
	}
	}
	}}}
	Control.screenroll=5

	if(Control.screenroll<=0){
	//phase=0
	//check=1
	}

	}
	}

	}else{

	//***************************{[Shroom: MONSTER]}***************************
	if(subtype==1){
	if(phase==0){
	if(check==1){
	vsp=0
	grav=0.05
	grounded=0
	check=0
	timer=120
	shroom=irandom(2)
	image_index=0
	image_speed=0.3
	sprite_index=shroomghost1
	mask_index=sprite_index
	}
	gravity_scr()
	encontrol_scr()

	}
	}else{

	//***************************{[fish: Piranha]}***************************
	if(subtype==2){
	if(phase==0){
	if(check==1){
	startx=x
	starty=y
	check=0
	tick=random(5)
	timer=15
	dir=irandom(1)
	shroom=irandom(2)
	image_index=0
	image_speed=0.2
	sprite_index=fish_spr
	mask_index=sprite_index
	sped=random_range(2,3)
	dmgcd=0
	}

	if(image_index>4){
	image_index=0
	}

	if(x<=startx+2&&x>=startx-2){
	if(tick<=0){
	phase=1
	check=1
	}else{
	tick-=1
	}}

	if(dir==0){
	x+=sped
	}else{
	x-=sped
	}

	//IN WATER
	if(dmgcd<=0){
	if(Me.x>x-100&&Me.x<x+100){
	if(Me.poop!=noone){
	phase=2
	check=1
	}}
	}else{
	dmgcd-=1
	}

	if(timer<=0){
	timer=30
	if(dir==0){
	dir=1
	}else{
	dir=0
	}}else{
	timer-=1
	}
	}else{
	//PHASE ONE
	if(phase==1){
	if(check==1){
	image_index=0
	image_speed=0
	check=0
	tick=0
	gr=0.6
	damage=10
	diddmg=0
	}

	if(diddmg==0){
	hitme=instance_place(x,y,Me)
	if(hitme!=noone){
	diddmg=1
	with(Me){
	dr+=other.damage
	drdraw+=other.damage
	if(hurt<=0){
	hurttick=1
	}}
	}}

	if(tick==0){
	if(y>154){
	image_index=4
	}else{
	image_index=5
	}
	if(y>134){
	vsp=gr-10
	}else{
	tick=1
	}}else{
	if(y>154){
	image_index=7
	}else{
	image_index=4
	}
	if(y<starty){
	vsp=5
	}else{
	y=starty
	phase=0
	image_speed=0.3
	tick=2
	timer=15
	image_index=0
	}}

	gr+=0.7
	if(gr>8){
	gr=8
	}
	y+=vsp

	}else{
	//PHASE TWO
	if(phase==2){
	if(check==1){
	diddmg=0
	check=0
	done=0
	}
	if(image_index>4){
	image_index=0
	}

	if(done==0){
	if(Me.x>x-100&&Me.x<x+100){
	if(Me.poop!=noone){
	if(point_distance(x,y,Me.x,Me.y)<20){
	image_index=8
	if(point_distance(x,y,Me.x,Me.y)<10){
	if(diddmg==0){
	hitme=instance_place(x,y,Me)
	if(hitme!=noone){
	diddmg=1
	done=1
	dmgcd=30
	with(Me){
	dr+=other.damage
	drdraw+=other.damage
	if(hurt<=0){
	hurttick=1
	}}
	}}
	image_index=9
	}}
	if(x<Me.x-1){
	x+=2
	dir=0
	}else{
	if(x>Me.x+1){
	x-=2
	dir=1
	}}
	if(y<Me.y-1){
	y+=1.5
	}else{
	if(y>Me.y+1){
	y-=1.5
	}}
	}else{
	done=1
	}}else{
	done=1
	}
	}else{
	if(done==1){
	if(diddmg==0){
	if(Me.x>x-100&&Me.x<x+100){
	if(Me.poop!=noone){
	done=0
	}}}
	if(y<=starty+2&&y>=starty-2&&x<=startx+2&&x>=startx-2){
	phase=0
	image_speed=0.2
	timer=0
	}else{
	if(x>startx+2||x<startx-2){
	if(x<=startx+2){
	x+=1
	dir=0
	}else{
	if(x>=startx-2){
	x-=1
	dir=1
	}}}
	if(y>starty+2||y<starty-2){
	if(y<=starty+2){
	y+=1
	}else{
	if(y>=starty-2){
	y-=1
	}}}}}
	}

	}

	}
	}}

	}

	}



}
