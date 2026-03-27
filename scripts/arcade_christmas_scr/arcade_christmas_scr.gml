function arcade_christmas_scr() {

	//_______________________________----------------<<***{Snowballfight}***>>----------------_______________________________
	if(code==100){

	//CHECK
	if(codecheck==1){
	codecheck=0
	with(Arcade_dummy_object){
	if(x<other.startx||x>other.endx){
	instance_destroy()
	}}}

	with(Me){
	if(instance_exists(Dummy_solid)){
	hit=instance_place(x,y+2,Dummy_solid)
	if(hit!=noone){
	if(hit.type=1){
	with(hit){
	if(creator.phase=0){
	creator.phase=1
	}}}}}
	}


	//ALWAYS
	with(Arcade_dummy_object){

	//Present
	if(pin==1){
	if(check==1){
	check=0
	sprite_index=ar_christ_present
	image_speed=0
	image_index=0
	depth=8
	phase=0
	startx=x
	starty=y
	tick=0
	vsp=4

	created=instance_create(x,y,Dummy_solid)
	with(created){
	sprite_index=ar_christ_present_box
	image_speed=0
	image_index=other.image_index
	depth=9
	visible=true
	type=1
	solidtype=1
	creator=other.id
	}}
	//closed
	if(phase==0){

	}else{
	//opened
	if(phase==1){
	phase=2
	Me.vsp=-4
	}else{
	//opened part two
	if(phase==2){
	if(tick==0){
	if(y>starty-24){
	y-=vsp
	}else{
	tick=1
	}}else{
	if(y<starty-vsp){
	y+=vsp
	}else{
	y=starty
	phase=0
	}}}}}

	}else{
	//SNOWMAN
	if(pin==2){
	if(check==1){
	depth=10
	check=0
	y-=16
	x+=8
	sprite_index=ar_snowball_snowman
	image_speed=0
	dir=1
	attcd=60
	duration=0
	}else{

	duration+=1


	if(x>__view_get( e__VW.XView, 0 )-9&&x<__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+9&&y>__view_get( e__VW.YView, 0 )-9&&y<__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )+9){
	//Always Attack
	if(attcd>0){
	attcd-=1
	if(attcd==59){
	image_index=1
	}else{
	if(attcd==54||attcd==50||attcd==46){
	image_index+=1
	if(attcd==54){
	if(dir==0){
	created=instance_create(x-9,y+10,Arcade_dummy_object)
	}else{
	created=instance_create(x+5,y+11,Arcade_dummy_object)
	}
	with(created){
	pin=2
	depth=9
	sprite_index=abil_snowman_snowball
	image_speed=0
	image_index=irandom(image_number)
	grav=0.025
	duration=400
	move_towards_point(Me.x+10,Me.y+10,2)
	hsp=hspeed
	vsp=vspeed
	vsp-=0.375
	speed=0
	}
	}}else{


	//ALWAYS 
	if(attcd<40){
	if(x<Me.x+10){
	dir=0
	image_xscale=1
	}else{
	dir=1
	image_xscale=-1
	}
	if(attcd mod 24 ==0){
	if(image_index==0){
	image_index=1
	}else{
	image_index=0
	}}}}}
	}else{
	attcd=120
	image_index=0
	}}}
	}else{

	//SNOWBALL
	if(pin==3){
	if(duration>0&&!instance_place(x,y,Solid)){
	x+=hsp
	y+=vsp
	vsp+=grav
	if(hsp>0){
	image_angle-=7.5
	}else{
	image_angle+=7.5
	}
	}else{
	instance_destroy()
	}}
	}}}

	}



}
