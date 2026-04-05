function forest_hallow_scr() {
	if(Control.pause==0){

	//initialize
	if(check==1){

	//Me.x=2510
	//Me.y=10
	//Dream Bottles
	//rm1
	//CHEST LOOTS
	with(Control){
	chestitemone=2
	chestitemtwo=2

	rmcheck=1
	musicchange=gravewalking_music
	}
	with(Control){
	if(actchoose==1){

	//Doors
	instance_create(5904,192,Door_obj)

	//Save Book
	created=instance_create(4224,160,Item)
	created.itemtype=5
	created=instance_create(5392,208,Item)
	created.itemtype=5

	if(levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]]+actchoose-1,5]==0){
	created=instance_create(3008,224,Item)
	with(created){
	itemtype=4
	iden=5
	}}
	if(levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]]+actchoose-1,6]==0){
	created=instance_create(5440,304,Item)
	with(created){
	itemtype=4
	iden=6
	}}
	if(levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]]+actchoose-1,7]==0){
	created=instance_create(6512,304,Item)
	with(created){
	itemtype=4
	iden=7
	}}
	}else{
	//rm2

	//Doors
	instance_create(2080,48,Door_obj)

	//Save Book
	created=instance_create(2032,304,Item)
	created.itemtype=5
	created=instance_create(2192,48,Item)
	created.itemtype=5

	if(levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]]+actchoose-1,5]==0){
	created=instance_create(1248,48,Item)
	with(created){
	itemtype=4
	iden=5
	}}
	if(levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]]+actchoose-1,6]==0){
	created=instance_create(1728,48,Item)
	with(created){
	itemtype=4
	iden=6
	}}
	if(levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]]+actchoose-1,7]==0){
	created=instance_create(2816,32,Item)
	with(created){
	itemtype=4
	iden=7
	}}}
	}
	check=0
	}

	//BATS
	tempo+=0.3
	rotation+=irandom_range(90,270)
	if(instance_exists(Dummy_object)){
	with(Me){
	hit=instance_place(x,y,Dummy_object)
	if(hit!=noone){
	if(hit.pin==11){
	hit.hit=id
	with(hit){
	if(diddamage==0){
	diddamage=1
	duration=5
	Me.dr+=1
	Me.drdraw+=1
	with(hit){
	if(hurt<=0){
	hurttick=1
	}
	vsp=-0.5
	grav=0
	}}else{
	with(hit){
	vsp=-0.5
	grav=0
	}}
	speed=0
	}}else{
	if(hit.pin==77||hit.pin==78||hit.pin==79){
	dr+=hit.damage
	drdraw+=hit.damage
	if(hurt<=0){
	hurttick=1
	}
	with(hit){
	instance_destroy()
	}}}}}
	with(Dummy_object){
	if(pin==11){
	if(num==1){
	num+=1
	if(point_distance(x,y,Me.x,Me.y)<275){
	chance=choose(bat_snd1,bat_snd2)
	sfx_play_at(chance,x,y, 0, 1, 150, 0.5, false, 1)
	}}
	if(duration>0){
	duration-=1
	if(duration<5||duration>durationtotal-5){
	visible=false
	}else{
	visible=true
	}}else{
	instance_destroy()
	}
	if(instance_place(x,y,Solid)){
	if(diddamage==0){
	duration=5
	diddamage=1
	speed=0
	}}}else{
	//SCARE BAT
	if(pin==78){
	if(phase==0){
	if(instance_place(x,y,Solid)||duration<=0){
	image_index=0
	image_speed=0.5
	sprite_index=scarecrow_abil2_dis1_spr
	duration=20
	speed=0
	phase=1
	}else{
	duration-=1
	}}else{
	if(duration>0){
	duration-=1
	}else{
	instance_destroy()
	}}}else{
	//Shroom Toss
	if(pin==79){
	if(direction<=90||direction>270){
	image_angle+=20
	}else{
	image_angle-=20
	}
	if(duration>155){
	duration-=1
	}else{
	if(duration>0&&!instance_place(x,y,Solid)){
	duration-=1
	}else{
	instance_destroy()
	}}}else{
	//SCARE HEALING ORB
	if(pin==81){
	if(instance_exists(creator)){
	if(x>(creator.x+creator.sprite_width/2)-10&&x<(creator.x+creator.sprite_width/2)+10&&y>(creator.y+creator.sprite_height/2)-40&&y<(creator.y+creator.sprite_height/2)){

	if(tick==0){
	tick=1
	if(creator.hp<creator.hptotal){
	creator.hp+=2
	}
	sprite_index=scarecrow_abil2_dis1_spr
	image_speed=0.3
	}
	if(image_index>=image_number-2){
	instance_destroy()
	}
	}else{
	if(x<(creator.x+creator.sprite_width/2)-5){
	x+=sped
	}else{
	if(x>(creator.x+creator.sprite_width/2)+5){
	x-=sped
	}}
	if(y<(creator.y+creator.sprite_height/2)-25){
	y+=sped
	}else{
	if(y>(creator.y+creator.sprite_height/2)-15){
	y-=sped
	}}
	}

	}else{
	instance_destroy()
	}}
	}}}}}
	}



}
