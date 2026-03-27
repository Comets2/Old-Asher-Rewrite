function worldtwo_rm1_control_scr() {

	if(check==1){
	check=0

	ennumbers=0
	//CHEST LOOTS
	with(Control){
	chestitemone=7
	chestitemtwo=7
	rmcheck=1
	musicchange=music_pirate_theme1
	}


	//-----------------------------------------------------<<<*****{Pirate One}*****>>>-----------------------------------------------------
	if(room==Worldtwo_rm1){
	meroom=0
	roomcheck=0
	roomenemy=0
	with(Control){

	if(actchoose==1){
	//Save Book
	created=instance_create(1472,172,Item)
	created.itemtype=5

	//Save Book
	created=instance_create(2784,512,Item)
	created.itemtype=5
	}

	//Dream Bottles
	//rm1
	if(actchoose==1){

	if(levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]]+actchoose-1,5]==0){
	created=instance_create(608,64,Item)
	with(created){
	itemtype=4
	iden=5
	}}
	if(levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]]+actchoose-1,6]==0){
	created=instance_create(3440,304,Item)
	with(created){
	itemtype=4
	iden=6
	}}
	if(levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]]+actchoose-1,7]==0){
	created=instance_create(2656,16,Item)
	with(created){
	itemtype=4
	iden=7
	}}}else{
	}
	}

	//Me.x=96
	//Me.y=228

	//DOOR
	instance_create(1408,528,Door_obj)
	instance_create(1984,384,Door_obj)
	instance_create(3056,304,Door_obj)
	instance_create(3152,304,Door_obj)
	instance_create(3200,528,Door_obj)
	instance_create(3472,304,Door_obj)
	instance_create(3568,304,Door_obj)


	//Unlocked
	created=instance_create(0,0,Door_obj)
	created.locked=0
	created.image_index=3

	}else{

	//-----------------------------------------------------<<<*****{Pirate Two}*****>>>-----------------------------------------------------

	instance_create(1312,448,Door_obj)
	instance_create(1312+16,448,Door_obj)
	instance_create(1312+32,448,Door_obj)

	with(Control){
	if(levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]]+actchoose-1,5]==0){
	created=instance_create(599,274,Item)
	with(created){
	itemtype=4
	iden=5
	}}
	if(levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]]+actchoose-1,6]==0){
	created=instance_create(1595,400,Item)
	with(created){
	itemtype=4
	iden=6
	}}
	if(levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]]+actchoose-1,7]==0){
	created=instance_create(1805,288,Item)
	with(created){
	itemtype=4
	iden=7
	}}}

	Control.regularview=1
	depth=10
	rangeneeded=0
	firetime=0
	firetick=0
	miss=0
	misstype=0
	dir=1
	ship=instance_create(600,100,Dummy_two_object)
	with(ship){
	hurt=0
	hurttick=0
	hp=400
	tick=0
	sped=0.0275
	depth=1000015
	starty=y
	check=1
	sprite_index=ship_spr
	attdelay=240
	pin=72
	image_speed=0
	hp=100
	image_index=1
	}
	for(i=0;i<8;i+=1){
	if(i==0){
	xpos=672
	ypos=208
	}else{
	if(i==1){
	xpos=832
	ypos=208
	}else{
	if(i==2){
	xpos=1120
	ypos=304
	}else{
	if(i==3){
	xpos=1312
	ypos=304
	}else{
	if(i==4){
	xpos=1504
	ypos=304
	}else{
	if(i==5){
	xpos=928
	ypos=304
	}else{
	if(i==6){
	xpos=1536
	ypos=304
	}else{
	if(i==7){
	xpos=1568
	ypos=304
	}else{

	}}}}}}}}
	}}
	}

	with(Dummy_object){
	if(pin==70){
	}else{
	if(pin==72){
	if(duration>0&&!instance_place(x,y,Solid)){
	duration-=1
	}else{
	instance_destroy()
	}
	if(instance_place(x,y,Solid)||duration<=0){
	instance_destroy()
	}else{
	duration-=1
	}}}}

	//-----------------------------------------------------<<<*****{Pirate ONE}*****>>>-----------------------------------------------------
	if(room==Worldtwo_rm1){
	/*
	//Room One
	if(roomcheck==0){
	for(a=0;a<9;a+=1){
	if(doorArray[a,0]!=1){
	xpos=doorArray[a,1]
	ypos=doorArray[a,2]
	xpostwo=doorArray[a,3]

	if(Me.x>xpos+16&&Me.x<xpostwo-32&&Me.y>=ypos-32&&Me.y<ypos+20){
	roomenemy=instance_create(xpos+((xpostwo-xpos)/2),ypos-32,Enemy)
	with(roomenemy){
	creator=other.id
	if(other.a==2){
	enemytype=8
	}else{
	enemytype=4
	}
	y-=1
	while(!instance_place(x,y,Solid)){
	y-=16
	}}
	meroom=1
	inroom=a
	roomcheck=1
	doorone=instance_create(xpos,ypos,Door_obj)
	doorone.locked=0
	doorone.image_index=3
	doortwo=instance_create(xpostwo,ypos,Door_obj)
	doortwo.locked=0
	doortwo.image_index=3
	}}}
	}else{

	//In Room
	if(roomcheck==1){
	if(!instance_exists(roomenemy)){
	roomcheck=0
	with(doorone){
	instance_destroy()
	}
	with(doortwo){
	instance_destroy()
	}
	doorArray[inroom,0]=1
	}}}
	*/
	}else{

	//-----------------------------------------------------<<<*****{Pirate TWO}*****>>>-----------------------------------------------------
	if(room==Worldtwo_rm1_part2){
	__background_set( e__BG.X, 0, __background_get( e__BG.X, 0 ) - (0.025) )
	__background_set( e__BG.X, 1, __background_get( e__BG.X, 1 ) - (0.05) )
	__background_set( e__BG.X, 2, __background_get( e__BG.X, 2 ) - (0.1) )
	__background_set( e__BG.X, 5, __background_get( e__BG.X, 5 ) - (0.15) )
	if(miss>0){
	miss-=1
	if(miss==0){
	misstype=0
	firetime=0
	}}

	with(Me){
	hit=instance_place(x,y,Dummy_two_object)
	if(hit!=noone){
	if(hit.pin==75){
	if(hit.image_index>=1){
	rangeneeded=1
	}else{
	rangeneeded=0
	}}}else{
	rangeneeded=0
	}}

	with(ship){
	if(hp<=0){
	if(y>room_height-30){
	instance_destroy()
	}else{
	y+=0.5
	}}else{
	if(hurttick==1){
	hurttick=0
	hurt=20
	image_blend=c_maroon
	hp-=5
	}
	if(hurt>0){
	hurt-=1
	}else{
	image_blend=c_white
	}
	if(tick==0){
	if(y<=starty+5){
	y+=choose(0,0.005,0.01,0.015)
	}else{
	tick=1
	}
	}else{
	if(tick==1){
	if(y>=starty-5){
	y-=choose(0,0.005,0.01,0.015)
	}else{
	tick=0
	}}}
	if(check=1){
	if(x>800){
	if(y<starty+100){
	y+=0.05
	}else{
	check=2
	starty=y
	}}}
	if(x+sprite_width/2<Me.x+0){
	x+=0.25
	}else{
	if(x+sprite_width/2>Me.x+20){
	x-=0.25
	}}
	if(attdelay>0){
	attdelay-=1
	if(attdelay==20||attdelay==40||attdelay==60||attdelay==80||attdelay==30||attdelay==50){
	created=instance_create(x+87+(23*choose(0,1,2,3))+(6*choose(0,1,2)),y+choose(98,107),Dummy_two_object)
	with(created){
	check=1
	depth=other.depth-1
	sprite_index=me_part1_spr 
	image_xscale=0.6
	image_yscale=0.6
	duration=40+random(10)
	pin=71
	type=0
	sped=random_range(0.6,1)
	angle=random_range(10,30)
	image_speed=image_speed/4
	}}}else{
	attdelay=240
	}}}
	with(Dummy_two_object){
	if(pin==71){
	if(check==1){
	check=0
	if(type==0){
	created=instance_create(random_range(__view_get( e__VW.XView, 0 )-96,__view_get( e__VW.WView, 0 )+ __view_get( e__VW.XView, 0 )+96),y,Dummy_object)
	with(created){
	phase=0
	depth=other.depth
	sprite_index=cannonball_spr
	mask_index=dummy_spr
	image_speed=0
	image_index=1
	pin=73
	}}
	created=instance_create(x,y,Dummy_two_object)
	with(created){
	depth=other.depth
	sprite_index=abil_bomb2exp
	pin=73
	}}
	image_angle+=angle
	if(duration>0){
	duration-=1
	y-=sped
	}else{
	instance_destroy()
	}}else{
	if(pin==73){
	if(image_index>=image_number-3){
	instance_destroy()
	}}else{
	}}}

	}}

	with(Me){
	hit=instance_place(x,y,Dummy_object)
	if(hit!=noone){
	with(hit){
	//Anchor Me
	if(pin==70||pin==71||pin==72||pin==73||pin==75){
	with(Me){
	if(dmgsafety<=0){
	dmgsafety=6
	//DAMAGE
	debuff=1
	debufftimer=6
	if(x+10<other.x){
	debuffopt=-1.5
	}else{
	debuffopt=1.5
	}
	dr+=other.damage
	drdraw+=other.damage
	if(hurt<=0){
	hurttick=1
	}}}
	if(pin==72||pin==75){
	instance_destroy()
	}
	}else{
	//Other pin

	}}}
	}
	//DUMMY OBJECT
	with(Dummy_object){
	if(pin==73){
	if(phase==0){
	if(y>-60){
	y-=3
	}else{
	phase=1
	check=1
	}}else{
	if(check==1){
	check=0
	chance=irandom(100)
	with(Enemy){
	if(enemytype==1){
	if(x+150>other.x){
	other.chance=100
	}}}
	if(chance<=10){
	created=instance_create(x,0,Enemy)
	created.enemytype=11
	created.merange=1000
	instance_destroy()
	}else{
	damage=1
	image_index=0
	mask_index=sprite_index
	depth=Me.depth
	x+=choose(0,-48,-96,-148,48,96,148)
	}}
	if(sprite_index!=cannon_enexplosion_spr){
	y+=1.5
	image_angle+=12.5
	if(y>200){
	if(instance_place(x,y+2,Solid)&&y<500){
	sprite_index=cannon_enexplosion_spr
	mask_index=cannon_enexplosion_spr
	y+=6
	mask_index=dummy_spr
	image_index=0
	image_speed=0.45
	image_angle=0
	}}
	}else{
	if(image_index>=image_number-1){
	instance_destroy()
	}}}}else{
	//Crab Fish
	if(pin==75){
	if(dir==0){
	image_angle+=4
	}else{
	image_angle-=4
	}
	gravamount+=grav
	x+=hsp
	y+=vsp+gravamount
	duration-=1
	if(delay<=0){
	if(bounce>0){
	if(instance_place(x+hsp,y+vsp+gravamount,Solid)){
	audio_play_sound_at(choose(snd_burger_fries_hit1,snd_burger_fries_hit2),x,y, 0, 90, 150, 0.5, false, 1) 
	bounce-=1
	delay=0
	if(instance_place(x,y+vsp+gravamount,Solid)){
	vsp=(vsp+gravamount)*-choose(0.75,0.80)
	hsp=hsp*choose(0.8,0.85,0.9)
	gravamount=0
	if(instance_place(x,y+1,Solid)){
	y-=1
	}
	}else{
	if(instance_place(x+hsp,y,Solid)){
	hsp=hsp*-0.9
	if(dir==0){
	dir=1
	}else{
	dir=0
	}}}}}else{
	if(instance_place(x+hsp,y+vsp+gravamount,Solid)||duration<=0){
	audio_play_sound_at(choose(snd_burger_fries_hit1,snd_burger_fries_hit2),x,y, 0, 90, 150, 0.5, false, 1) 
	instance_destroy()
	}}}else{
	delay-=1
	}}}}










}
