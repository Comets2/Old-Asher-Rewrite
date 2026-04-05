function mini_randomlvl_scr() {
	if(check==1){
	gemdrawrand=irandom(sprite_get_number(gemfiller_spr))
	phase=0
	gems=0
	gemsgoal=Control.rounds*50
	check=0
	randlevel=0
	blockamount=400
	blocksize=16
	timertime=90
	Me.visible=true
	Me.x=(room_width/16)/2*16
	Me.y=((room_height/16)/2*16)-20
	if(randlevel==0){

	//Top
	xspot=0
	yspot=0
	for(i=0;i<room_width/16;i+=1){
	created=instance_create((xspot+i)*16,yspot*16,Solid_noslope)
	created.sprite_index=mini_ter2_spr
	created.image_index=3
	created.visible=true
	}
	//Bot
	xspot=0
	yspot=(room_height/16)-1
	for(i=0;i<room_width/16;i+=1){
	created=instance_create((xspot+i)*16,yspot*16,Solid_noslope)
	created.sprite_index=mini_ter2_spr
	created.image_index=1
	created.visible=true
	}
	//Left
	xspot=0
	yspot=0
	for(i=0;i<room_height/16;i+=1){
	created=instance_create(xspot*16,(yspot+i)*16,Solid_noslope)
	created.sprite_index=mini_ter2_spr
	created.image_index=2
	created.visible=true
	}
	//Right
	xspot=(room_width/16)-1
	yspot=0
	for(i=0;i<room_height/16;i+=1){
	created=instance_create(xspot*16,(yspot+i)*16,Solid_noslope)
	created.sprite_index=mini_ter2_spr
	created.image_index=0
	created.visible=true
	}

	while(blockamount>0){
	xspot=irandom_range(5,room_width/16)-3
	yspot=irandom_range(5,room_height/16)-3
	while(xspot<floor((room_width/2)/16)+3&&xspot>floor((room_width/2)/16)-3&&yspot<floor((room_height/2)/16)+3&&yspot>floor((room_height/2)/16)-3){
	xspot=irandom_range(5,room_width/16)-3
	yspot=irandom_range(5,room_height/16)-3
	}
	xspot=xspot*16
	yspot=yspot*16
	if(!instance_position(xspot,yspot,Container)){
	blockamount-=1
	created=instance_create(xspot,yspot,Container)
	with(created){
	subtype=10
	imgindex=6

	minigame_mineround_scr()

	visible=true
	sprite_index=mini_ter1_spr
	nograv=1
	}}}
	with(Me){
	hit=instance_place((room_width/16)/2*16,((room_height/16)/2*16)-20,Container)
	if(hit!=noone){
	with(hit){
	instance_destroy()
	}
	}}


	}
	}else{

	//ALWAYS
	timertime-=1

	//**********{PHASE: 0}**********
	if(phase==0){

	if(timertime>0){
	Control.pause=99
	}else{
	timertime=2700
	phase=1
	Control.pause=0
	}

	}else{

	//**********{PHASE: 1}**********
	if(phase==1){
	if(gems>=gemsgoal){
	Control.rounds+=1
	room_restart()
	}

	if(instance_exists(Dummy_object)){
	with(Dummy_object){

	//Explosive
	if(pin==70){
	if(image_index<image_number-1){
	if(!instance_place(x,y+1,Solid)){
	y+=3
	}
	with(Container){
	if(solidtype==3){
	hit=instance_place(x,y,other.id)
	if(hit!=noone){
	hurttick=1
	}}}
	hit=instance_place(x,y,Me)
	if(hit!=noone){
	hit.hp=0
	with(Me){
	sfx_play(die1,8,false)
	}}
	}else{
	Control.screenshake+=7
	instance_destroy()
	}}else{
	//SPIKE BALL
	if(pin==72){
	hit=instance_place(x,y+2,Solid)
	if(hit==noone){
	y+=5
	dmg=1
	}else{
	if(dmg==1){
	dmg=0
	hit.hurttick=1
	}}
	}else{
	//Dummy Gem
	if(pin==75){
	if(__view_get( e__VW.XView, 0 )!=xspot){
	x+=__view_get( e__VW.XView, 0 )-xspot
	xspot=__view_get( e__VW.XView, 0 )
	}
	if(__view_get( e__VW.YView, 0 )!=yspot){
	y+=__view_get( e__VW.YView, 0 )-yspot
	yspot=__view_get( e__VW.YView, 0 )
	}
	if(point_distance(x,y,__view_get( e__VW.WView, 0 )+__view_get( e__VW.XView, 0 )-6,__view_get( e__VW.YView, 0 )+62)<12){
	other.gems+=value
	instance_destroy()
	}else{
	if(x<__view_get( e__VW.WView, 0 )+__view_get( e__VW.XView, 0 )-12){
	x+=6
	}else{
	if(x>__view_get( e__VW.WView, 0 )+__view_get( e__VW.XView, 0 )){
	x-=6
	}}
	if(y<__view_get( e__VW.YView, 0 )+57){
	y+=1
	}else{
	if(y>__view_get( e__VW.YView, 0 )+67){
	y-=1
	}}
	}

	}else{

	//GEM
	if(pin==76){
	if(x>__view_get( e__VW.XView, 0 )&&x<__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )&&y>__view_get( e__VW.YView, 0 )&&y<__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )){
	if(opened==0){
	if(!instance_place(x,y+1,Solid)){
	y+=3
	}
	if(respace>0){
	if(instance_place(x,y,Dummy_object)){
	respace-=1
	x+=choose(1,-1)
	}
	if(instance_place(x,y,Solid)){
	y-=1
	if(respace<2){
	respace=2
	}}}
	}else{
	//Dummy Gem
	created=instance_create(x,y,Dummy_object)
	with(created){
	yspot=__view_get( e__VW.YView, 0 )
	xspot=__view_get( e__VW.XView, 0 )
	sprite_index=other.sprite_index
	image_index=other.image_index
	image_speed=0
	image_angle=other.image_angle
	pin=75
	}
	if(subtype==5){
	created.value=1
	}else{
	if(subtype==6){
	created.value=2
	}else{
	if(subtype==7){
	created.value=5
	}else{
	if(subtype==8){
	created.value=15
	}else{
	if(subtype==9){
	created.value=45
	}else{

	}
	}}}}
	instance_destroy()
	}}}}}}}}
	with(Me){
	hit=instance_place(x,y+1,Dummy_object)
	if(hit!=noone){
	with(Dummy_object){
	hit=instance_place(x,y-1,Me)
	if(hit!=noone){
	if(pin==76){
	opened=1
	with(other){
	if(!audio_is_playing(lifesnd1)){
	sfx_play(lifesnd1,8,false)
	}else{
	audio_stop_sound(lifesnd1)
	sfx_play(lifesnd1,8,false)
	}}
	}else{
	if(pin==72){
	with(Me){
	sfx_play(die1,8,false)
	}
	Me.hp=0
	}}}}}}
	}}

	}



}
