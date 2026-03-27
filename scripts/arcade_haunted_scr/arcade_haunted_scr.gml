function arcade_haunted_scr() {
	//_______________________________----------------<<***{Brew}***>>----------------_______________________________
	if(codecheck==1){
	codecheck=0
	with(Arcade_dummy_object){
	if(x<other.startx||x>other.endx){
	//instance_destroy()
	}}}

	//constant
	//***ME***

	with(Me){
	if(vsp>-5){
	hit=instance_place(x,y,Arcade_dummy_object)
	if(hit!=noone){
	if(hit.pin==2){
	vsp-=0.2
	if(vsp>1){
	vsp-=0.3
	}}}}}

	//***DUMMY***

	with(Arcade_dummy_object){
	if(x>__view_get( e__VW.XView, 0 )-60&&x<__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+60){
	//brew
	if(pin==1){
	if(check==1){
	check=0
	sprite_index=ac_brew_spr
	image_speed=0.1
	visible=true

	}

	created=instance_create(x+7+choose(-3,-1.5,0,1.5,3),y+8+choose(-1,0,1,2),Arcade_dummy_object)
	with(created){
	if(choose(0,1)==0){
	sprite_index=ac_brew_bubble_spr
	}else{
	sprite_index=ac_brew_bubble_two_spr
	}
	image_speed=random_range(0.05,0.15)
	image_index=irandom(image_number)
	visible=true
	hsp=random_range(0.025,0.1)
	vsp=random_range(0.3,0.4)
	duration=irandom_range(120,180)
	tick=choose(0,1)
	range=12
	startx=x
	pin=2
	}

	}else{
	//brew bubbles
	if(pin==2){
	if(duration>0){
	duration-=1
	y-=vsp
	if(tick==0){
	if(x<startx+range){
	x+=hsp
	}else{
	tick=1
	}}else{
	if(x>startx-range){
	x-=hsp
	}else{
	tick=0
	}}
	}else{
	instance_destroy()
	}}}}}
	//_______________________________----------------<<***{Ingrediants}***>>----------------_______________________________



}
