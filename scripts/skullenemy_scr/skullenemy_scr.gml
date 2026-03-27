function skullenemy_scr() {
	//***************************{[SKULL: ALL]}***************************
	if(subtype<=3){
	//Phase: 0
	if(phase==0){
	if(check==1){
	mask_index=dummy_spr
	depth=14

	//new=1
	lastabil=0
	hp=50
	//subtype=1
	if(subtype==0){
	starty=y
	}else{
	starty=y+75
	}
	timer=8
	sprite_index=skell_skull
	check=0
	option=0
	tick=0
	}
	immune=1
	x=600+__view_get( e__VW.XView, 0 )/4+(subtype*106)
	image_index=0
	image_speed=0
	}else{

	//Phase: 1
	if(phase==1){
	mask_index=skell_skull
	if(timer>0){
	timer-=1
	}else{
	phase=2
	check=1
	}
	image_index=1
	x=600+__view_get( e__VW.XView, 0 )/4+(subtype*106)
	}else{
	}}

	//***************************{[SKULL: ONE]}***************************
	if(subtype==0){

	//Phase: 2

	if(phase==2){
	if(check==1){
	depth=2

	image_index=2
	hsp=1.5
	vsp=0
	check=0
	timer=0
	delay=0
	}

	//abil2
	tick+=1
	tick-=dmgtaken*3
	dmgtaken=0
	if(option>=2){
	chance=irandom(tick)
	if(chance<=75){
	phase=5
	check=1
	option=0
	tick=0
	}else{
	tick=0
	option-=1
	}}

	if(phase!=5){
	if(y>starty+10){
	vsp=-0.5
	timer=0
	}else{
	if(y<starty-10){
	vsp=0.5
	timer=0
	}else{
	if(timer<=0){
	vsp=random(1)-0.5
	timer=20
	}else{
	timer-=1
	}
	}}

	if(x<(Me.x+10)-12){
	image_index=5
	}else{
	if(x>(Me.x+10)+12){
	image_index=4
	}else{
	image_index=3
	}}
	if(delay<=0){
	delay=irandom(5)+2
	if(x<(Me.x+10)-2){
	if((Me.x+10)-x>10){
	hsp=1.5
	}else{
	hsp=0.5
	}
	}else{
	if(x>(Me.x+10)+2){
	if(x-(Me.x+10)>10){
	hsp=-1.5
	}else{
	hsp=-0.5
	}
	}}
	}else{
	delay-=1
	}

	if(x<(Me.x+10)-2&&(Me.x+10)-x<5||x>(Me.x+10)-2&&(Me.x+10)-x>5){
	phase=3
	check=1
	}

	if(instance_exists(Projectile)){
	with(Projectile){
	if(point_distance(x,y,other.x,other.y)<25){
	other.image_index=0
	other.immune=1
	}}}

	x+=hsp
	y+=vsp
	}
	}else{

	//Phase: 3
	if(phase==3){
	if(check==1){
	image_index=6
	damage=1
	vsp=12
	check=0
	timer=1
	delay=30
	diddmg=0
	option+=1
	}
	tick+=15
	if(instance_exists(Projectile)){
	with(Projectile){
	if(point_distance(x,y,other.x,other.y)<25){
	other.image_index=7
	other.immune=1
	}}}
	y+=vsp

	hitme=instance_place(x,y+vsp,Me)
	if (hitme!=noone){
	diddmg=1
	Control.screenshake=8
	audio_play_sound(snd_skullslam1,7,false)
	with(hitme){
	dr+=other.damage
	drdraw+=other.damage
	if(hurt<=0){
	hurttick=1
	}}
	}


	if (place_meeting(x,y+vsp,Solid)){
	while (!place_meeting(x,y+sign(vsp),Solid)){
	y += sign(vsp);
	}
	if(diddmg==0){
	with(Me){
	if(grounded){
	if(point_distance(x+10,y+20,other.x,other.y)<=50){
	y-=1
	vsp=-3
	}}}
	}
	for(i=0;i<irandom(4)+4;i+=1){
	created=instance_create(x+irandom(90)-45,y,ProjEn)
	created.classtype=enemytype
	created.enemy=1
	created.abil=0
	}
	impact=vsp
	Control.screenshake=8
	audio_play_sound(snd_skullslam1,7,false)
	vsp = 0
	timer=0
	phase=4
	check=1
	}

	}else{
	//Phase: 4
	if(phase==4){
	if(check==1){
	image_index=0
	vsp=-3
	check=0
	}
	if(delay>=0){
	delay-=1
	immune=1
	}else{
	image_index=1
	y+=vsp
	if(y<=starty+10){
	phase=2
	check=1
	}}
	}else{

	//Phase: 5
	if(phase==5){
	if(check==1){
	check=0
	delay=0
	timer=0
	image_index=2
	if(650-x<20){
	if(x>x>620+__view_get( e__VW.XView, 0 )/4){
	option=0
	}else{
	option=1
	}}else{
	option=5
	}}

	immune=1
	if(option==5){
	hsp=3.5
	x+=hsp
	if(650-x<20){
	if(x>x>620+__view_get( e__VW.XView, 0 )/4){
	option=0
	image_index=8
	}else{
	option=1
	image_index=8
	}}else{
	option=5
	image_index=2
	}
	}else{
	if(option==0){
	if(x>620+__view_get( e__VW.XView, 0 )/4){
	hsp=-10
	}else{
	delay=6
	option=3
	for(i=0;i<irandom(10)+4;i+=1){
	created=instance_create(__view_get( e__VW.XView, 0 )+irandom(__view_get( e__VW.WView, 0 ))-45,y,ProjEn)
	created.classtype=enemytype
	created.enemy=1
	created.abil=0
	}
	Control.screenshake=4
	audio_play_sound(snd_skullslam1,7,false)
	image_index=9
	}}else{
	if(option==1){
	if(x<600+__view_get( e__VW.XView, 0 )/4+86){
	hsp=10
	}else{
	delay=6
	option=4
	for(i=0;i<irandom(10)+4;i+=1){
	created=instance_create(__view_get( e__VW.XView, 0 )+irandom(__view_get( e__VW.WView, 0 ))-45,y,ProjEn)
	created.classtype=enemytype
	created.enemy=1
	created.abil=0
	}
	Control.screenshake=4
	audio_play_sound(snd_skullslam1,7,false)
	image_index=9
	}}}

	if(option>=3){
	if(option==3){
	x=616+__view_get( e__VW.XView, 0 )/4
	}else{
	x=604+__view_get( e__VW.XView, 0 )/4+86
	}

	if(delay>0){
	delay-=1
	}else{
	timer+=1
	if(timer<6){
	if(option==3){
	option=1
	image_index=8
	}else{
	option=0
	image_index=8
	}
	}else{
	check=1
	phase=2
	option=0
	}}
	}else{
	x+=hsp
	}}

	}
	}}}

	}else{
	//***************************{[SKULL: TWO]}***************************
	if(subtype==1){

	//Phase: 2
	if(phase==2){
	if(check==1){
	depth=2
	if(isnew==1){
	phase=4
	lastabil=4
	isnew=0
	}
	image_index=2
	hsp=1.5
	vsp=0
	check=0
	timer=0
	delay=0
	clock=0
	}

	//abils
	tick+=1
	if(tick>=240){
	chance=irandom(100)
	if(chance<=40){
	check=1
	option=0
	tick=0
	if(chance>10){
	if(lastabil!=3){
	lastabil=3
	phase=3
	}else{
	lastabil=choose(3,4)
	phase=lastabil
	}
	}else{
	if(lastabil!=4){
	phase=4
	lastabil=4
	}else{
	phase=3
	lastabil=3
	}
	}
	}else{
	option=1
	tick=0
	}}

	if(x<(Me.x+10)+6&&x>(Me.x+10)-6&&y>Me.y){
	hitme=instance_place(x,y+4,Me)
	if(hitme!=noone){
	if(option==2){
	clock=-1
	}else{
	image_index=12
	}
	}
	}else{
	if(option!=2){
	if(x<(Me.x+10)-12){
	image_index=5
	}else{
	if(x>(Me.x+10)+12){
	image_index=4
	}}}}


	//!2
	if(option!=2&&phase!=3){
	if(option!=1){
	if(y>starty){
	vsp=-1
	clock=0
	}else{  
	if(y<starty-50){
	vsp=1
	clock=0
	}else{
	if(clock<=0){
	vsp=random(2)-1
	clock=20
	}else{
	clock-=1
	}
	}}}

	//Chase
	if(option==1){
	if(delay<=0){
	//delay=irandom(5)+2
	if(x<(Me.x+10)){
	hsp=1
	}else{
	if(x>(Me.x+10)){
	hsp=-1
	}}
	if(y<243){
	vsp=1
	}else{
	vsp=0
	if(x<__view_get( e__VW.WView, 0 )+25||x>__view_get( e__VW.XView, 0 )-25){
	image_index=12
	option=2
	clock=0
	}
	if(x<(Me.x+10)){
	hsp=5
	}else{
	if(x>(Me.x+10)){
	hsp=-5
	}}
	}
	}else{
	delay=0
	}}else{

	if(instance_exists(Projectile)){
	with(Projectile){
	if(point_distance(x,y,other.x,other.y)<25){
	if(y>=other.y){
	other.vsp=-2
	}else{
	other.vsp=2
	}
	}}}

	//Random
	if(point_distance(x,y,Me.x+10,Me.y+10)<=25){
	delay=5
	if(x<Me.x+10){
	hsp=-2
	}else{
	hsp=2
	}}

	if(delay<=0){
	delay=irandom(20)+15
	if(x<room_width-25&&x>25){
	hsp=choose(-1.5,-0.75,0.75,1.5)
	if(x>Me.x+140){
	hsp=-1.5
	}else{
	if(x<Me.x-120){
	hsp=1.5
	}}
	}else{
	if(x>room_width-25){
	hsp=-2
	}else{
	hsp=2
	}}
	}else{
	delay-=1
	}}
	}else{

	if(clock==-1){
	tick+=1
	Me.x=x-12
	Me.y=y-11
	if(delay<=0){
	delay=10

	hsp=choose(1,-1)

	if(y>__view_get( e__VW.YView, 0 )+60&&y<__view_get( e__VW.HView, 0 )-120){
	vsp=choose(5,-5)
	}else{
	if(y>__view_get( e__VW.YView, 0 )+60){
	vsp=-5
	}else{
	vsp=5
	}}
	}else{
	delay-=1
	}}

	if(tick>200){
	option=0
	tick=75
	}

	if(x>Me.x+140||x<Me.x-120){
	tick=75
	option=0
	clock=0
	}

	if(x>room_width-25||x<25){
	tick=75
	option=0
	clock=0
	}}

	x+=hsp
	y+=vsp

	}else{

	//Phase: 3
	if(phase==3){
	if(check==1){
	image_index=2
	hsp=1.5
	vsp=0
	check=0
	timer=0
	delay=0
	option=0
	num=0
	}

	if(y>starty-70){
	vsp=-3
	timer=0
	}else{
	if(y<starty-120){
	vsp=0.5
	timer=0
	}else{
	if(timer<=0){
	vsp=random(1)-0.5
	timer=20
	}else{
	timer-=1
	}
	}}

	if(image_index==3){
	if(option<=0){
	num+=1
	option+=1
	for(i=0;i<5;i+=1){
	created=instance_create(x+hsp,y+5,ProjEn)
	created.classtype=enemytype
	created.enemy=1
	created.abil=1
	created.creator=id
	created.num=i
	}
	}else{
	if(option<30){
	option+=1
	}else{
	option=0
	}}}

	if(option>5){
	if(x<Me.x){
	image_index=5
	}else{
	image_index=4
	}}

	if(x<Me.x){
	if(Me.x-x<50){
	image_index=3
	}else{
	image_index=5
	}}else{
	if(x-Me.x<50){
	image_index=3
	}else{
	image_index=4
	}}

	if(delay<=0){
	delay=irandom(10)+5
	if(x<(Me.x+10)-2){
	if((Me.x+10)-x>10){
	hsp=2.5
	}else{
	hsp=2.5
	}
	}else{
	if(x>(Me.x+10)+2){
	if(x-(Me.x+10)>10){
	hsp=-2.5
	}else{
	hsp=-2.5
	}
	}}
	}else{
	delay-=1
	}

	if(num>10){
	phase=2
	check=1
	option=0
	}

	x+=hsp
	y+=vsp
	}else{

	//Phase: 4
	if(phase==4){
	for(i=0;i<6;i+=1){
	created=instance_create(x,y,ProjEn)
	created.classtype=enemytype
	created.enemy=1
	created.abil=2
	created.creator=id
	created.num=i
	}
	phase=2
	check=1
	}

	}}}}
	}else{

	//SKELL MINION
	if(subtype==4){
	if(phase==-1){
	instance_destroy()
	}
	if(created==0){
	created=instance_create(x,y,ProjEn)
	created.classtype=enemytype
	created.enemy=1
	created.abil=6
	created.creator=id
	}
	if(grounded==0){
	gravity_scr()
	}else{
	visible=true
	sprite_index=skell_minion_rise
	image_speed=0.2
	if(image_index>5){
	image_speed=0.35
	sprite_index=skell_minion
	image_index=0
	mask_index=skell_minion
	enemytype=1
	}}
	}

	}



}
