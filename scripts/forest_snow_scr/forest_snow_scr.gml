function forest_snow_scr(argument0) {
	if(argument0==0){
	//***********{SLED}************
	if(check==1){
	check=0

	//CHEST LOOTS
	with(Control){
	rmcheck=1
	musicchange=music_snow_theme1
	}

	//Dream Bottles
	//rm1
	with(Control){
	if(levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]]+actchoose-1,5]==0){
	created=instance_create(1728,224,Item)
	with(created){
	itemtype=4
	iden=5
	}}
	if(levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]]+actchoose-1,6]==0){
	created=instance_create(6512,320,Item)
	with(created){
	itemtype=4
	iden=6
	}}
	if(levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]]+actchoose-1,7]==0){
	created=instance_create(10608,176,Item)
	with(created){
	itemtype=4
	iden=7
	}}
	}
	//Save Book
	created=instance_create(4752,256,Item)
	created.itemtype=5
	//Save Book
	created=instance_create(8448,272,Item)
	created.itemtype=5
	Me.minigamecheck=0
	Me.minigame=1

	}else{
	}
	}else{

	//***********{SNOW FOREST}************
	if(check==1){
	check=0
	with(Control){
	weather=1
	weathertick=1
	weatheron=1
	}

	//CHEST LOOTS
	with(Control){
	chestitemone=3
	chestitemtwo=3
	rmcheck=1
	musicchange=music_snow_theme1
	}
	hsp=0

	//Save Book
	created=instance_create(1552,192,Item)
	created.itemtype=5
	created=instance_create(1584,352,Item)
	created.itemtype=5

	//Boss
	created=instance_create(1713,411,Enemy)
	created.sprite_index=yetihead_spr
	created.enemytype=5

	//Dream Bottles
	//rm1
	with(Control){
	if(levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]]+actchoose-1,5]==0){
	created=instance_create(0,16,Item)
	with(created){
	itemtype=4
	iden=5
	}}
	if(levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]]+actchoose-1,6]==0){
	created=instance_create(880,48,Item)
	with(created){
	itemtype=4
	iden=6
	}}
	if(levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]]+actchoose-1,7]==0){
	created=instance_create(1456,32,Item)
	with(created){
	itemtype=4
	iden=7
	}}
	}

	//Doors
	instance_create(1456,176,Door_obj)
	instance_create(1472,176,Door_obj)
	instance_create(1488,176,Door_obj)
	//Stump
	created=instance_create(496,496,Enemy)
	with(created){
	enemytype=2
	dir=0
	key=1
	}
	created=instance_create(976,528,Enemy)
	with(created){
	enemytype=2
	dir=1
	key=1
	}
	created=instance_create(1232,416,Enemy)
	with(created){
	enemytype=2
	dir=1
	key=1
	}
	}

	//ICE CHUNKS
	if(instance_exists(Dummy_object)){
	with(Dummy_object){
	if(pin==10){
	if(duration<=0){
	instance_destroy()
	}else{
	duration-=1
	}
	if(bounce>0){
	if(tick==0){
	if(instance_exists(creator)){
	if(y>creator.y+8){
	y-=1
	}else{
	tick=1
	sped=random_range(2.8,3.2)
	if(creator.dir==0){
	sped=sped*-1
	}
	}}else{
	instance_destroy()
	}}else{
	x-=sped
	image_angle-=sped*10
	vsp+=grav
	y+=vsp
	hit=instance_place(x,y,Solid)
	if(hit!=noone){
	if(bounce<=0){
	y+=2
	}else{
	sped=sped*.25
	bounce-=1
	vsp=-1*bounce
	}}}
	}

	}else{

	//BOSS ICE
	if(pin==60){
	if(check==1){
	grav=0.025
	vsp=0.75
	tick=3
	check=0
	}
	if(delay<=0){
	hit=instance_place(x,y+vsp,Solid)
	if(hit!=noone){
	if(tick>0){
	audio_play_sound_at(choose(snd_yeti_icehit_1,snd_yeti_icehit_2),x,y, 0, 90, 150, 0.5, false, 1)
	tick-=3
	vsp=random_range(tick+0.375,tick+0.9)*-1
	grav=0.055
	}else{
	instance_destroy()
	}}
	}else{
	delay-=1
	}
	vsp+=grav
	y+=vsp
	}else{

	//BOSS FREEZE
	if(pin==61){
	y+=sped*2
	if(tick==0){
	if(x<startx+range){
	x+=sped
	}else{
	tick=1
	}}else{
	if(tick==1){
	if(x>startx-range){
	x-=sped
	}else{
	tick=0
	}}}
	hit=instance_place(x,y-sprite_height,Solid)
	if(hit!=noone){
	instance_destroy()
	}
	}else{

	//BOSS ICEPILLAR
	if(pin==62){
	if(check==1){
	check=0
	duration=120
	}
	if(duration>0){
	duration-=1

	if(duration>16){
	if(y>starty-16){
	y-=0.5
	}}else{
	y+=0.5
	}}else{
	instance_destroy()
	}
	}
	}}
	}}}

	//ME
	with(Me){
	hit=instance_place(x,y,Dummy_object)
	if(hit!=noone){
	if(hit.pin==10){
	if(dmgsafety<=0){
	if(hit.bounce>0){
	dmgsafety=3
	//DAMAGE
	debuff=1
	debufftimer=6
	if(instance_exists(hit)){
	if(hit.sped>0){
	debuffopt=-4
	}else{
	debuffopt=4
	}}else{
	instance_destroy()
	}}else{
	vsp=-0.75
	}
	dr+=hit.damage
	drdraw+=hit.damage
	if(hurt<=0){
	hurttick=1
	}}
	with(hit){
	instance_destroy()
	}}else{

	//Freeze
	if(hit.pin==11){
	if(stun<=0){
	created=instance_create(x,y,Dummy_object)
	with(created){
	image_speed=0
	duration=76
	pin=12
	sprite_index=iceblock_spr
	image_index=1
	}}
	if(stun<=0){
	dr+=hit.damage
	drdraw+=hit.damage
	if(hurt<=0){
	hurttick=1
	}}
	with(hit){
	instance_destroy()
	}}else{

	//BOSS ICE SHARD
	if(hit.pin==60){
	if(y>room_height){
	instance_destroy()
	}
	dr+=hit.damage
	drdraw+=hit.damage
	if(hurt<=0){
	hurttick=1
	}
	with(hit){
	instance_destroy()
	}
	}else{
	//BOSS FREEZE
	if(hit.pin==61){
	if(y>room_height){
	instance_destroy()
	}
	if(stun<=0){
	created=instance_create(x,y,Dummy_object)
	with(created){
	image_speed=0
	duration=76
	pin=12
	sprite_index=iceblock_spr
	image_index=1
	}}
	if(stun<=0){
	dr+=hit.damage
	drdraw+=hit.damage
	if(hurt<=0){
	hurttick=1
	}}
	with(hit){
	instance_destroy()
	}}else{

	//BOSS Pillar
	if(hit.pin==62){
	if(y>room_height){
	instance_destroy()
	}
	vsp=-1
	dr+=hit.damage
	drdraw+=hit.damage
	if(hurt<=0){
	hurttick=1
	}
	with(hit){
	instance_destroy()
	}
	}}

	}}
	}}}

	//Frost Leaves
	with(Dummy_object){
	if(pin==11){
	if(instance_place(x,y,Solid)||hp<=0){
	instance_destroy()
	}
	if(instance_place(x,y,Enemy)&&duration<85){
	instance_destroy()
	}
	if(duration>0){
	duration-=1
	}else{
	instance_destroy()
	}
	if(tick==1){
	if(y<starty+2){
	y+=random_range(0.25,0.4)
	image_angle+=6
	}else{
	tick=0
	}}else{
	if(tick==0){
	if(y>starty-2){
	y-=random_range(0.25,0.4)
	image_angle-=6
	}else{
	tick=1
	}}}
	if(dir==1){
	x-=sped
	}else{
	x+=sped
	}
	}else{
	if(pin==12){
	if(duration>0){
	x=Me.x
	y=Me.y
	duration-=1
	with(Me){
	image_index=0
	slow=1
	slowamount=0.5
	jumpamount=1
	gravamount=0
	stun=3
	hsp=0
	vsp=0
	}}else{
	Me.stun=0
	Me.slow=0
	Me.slowamount=1
	Me.jumpamount=1
	Me.gravamount=1
	instance_destroy()
	}}
	}}



	}



}
