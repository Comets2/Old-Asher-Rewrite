function forest_treeboss_scr() {
	if(check==1){
	check=0
	doorcheck=1
	Me.x=172
	Me.y=96
	leafimg=0
	//CHEST LOOTS
	with(Control){
	chestitemone=4
	chestitemtwo=4
	chestoptforce=1
	rmcheck=1
	musicchange=music_boss_theme7
	}

	with(Control){
	partleaf=part_type_create()
	part_type_sprite(partleaf,leaf_spr,0,0,true)
	part_type_orientation(partleaf,0,0,0,0,1)
	part_type_size(partleaf,0.8,1.5,0,0)
	part_type_speed(partleaf,6,7,0.01,0)
	part_type_direction(partleaf,0,270,0,5)
	part_type_life(partleaf,15,25)
	}

	}

	if(doorcheck==1){
	if(Me.x>1216){
	doorcheck=0
	created=instance_create(1200,144,Door_obj)
	created.locked=0
	created=instance_create(1520,144,Door_obj)
	created.locked=0
	}}

	with(Dummy_object){
	//Large Leaf
	if(pin==62){
	x+=hsp
	y+=vsp

	if(duration mod 4==0){
	created=instance_create(x+irandom(6)*choose(1,-1),y+irandom(6)*choose(1,-1),Dummy_two_object)
	with(created){
	pin=62
	sprite_index=leaftwo_spr
	image_speed=0
	image_index=Dummy_obj.leafimg
	hsp=other.hsp*-1/8
	vsp=other.vsp*-1/8
	duration=26+irandom(10)
	}}
	with(Dummy_two_object){
	if(pin==62){
	if(duration>0){
	duration-=1
	}else{
	instance_destroy()
	}
	x+=hsp
	y+=vsp
	image_angle-=15
	}}

	if(Me.hurt<=0){
	hit=instance_place(x,y,Me)
	if(hit!=noone){
	with(Me){
	vsp=-2
	dr+=other.damage
	drdraw+=other.damage
	if(hurt<=0){
	hurttick=1
	}
	other.duration=0
	}}}
	image_angle+=hsp
	if(duration>0){
	duration-=1
	}else{
	with(Dummy_two_object){
	if(pin==62){
	instance_destroy()
	}}
	instance_destroy()
	}}else{

	//Acorn
	if(pin==63){
	x+=hsp
	y+=vsp

	if(audioplay>0){
	audioplay-=1
	}

	if(vsp<5){
	vsp+=grav
	}
	if(delay<=0){
	if(vsp>0){
	if(instance_position(x,y+vsp+2,Solid)){
	vsp=(vsp*-1)*0.75
	hsp=hsp*0.75
	if(audioplay<=0){
	audioplay=5
	}
	}}else{
	if(instance_position(x,y+vsp-2,Solid)){
	vsp=0
	hsp=hsp*0.75
	if(audioplay<=0){
	audioplay=5
	}
	}}
	if(instance_position(x+hsp,y,Solid)){
	hsp=(hsp*-1)*0.75
	if(audioplay<=0){
	audioplay=5
	}
	}}else{
	delay-=1
	}

	if(audioplay==5){
	sfx_play_at(choose(snd_bossproj_tree_1,snd_bossproj_tree_2),x,y, 0, 90, 150, 0.5, false, 1) 
	}

	hit=instance_place(x,y,Me)
	if(hit!=noone){
	with(Me){
	vsp=-2
	dr+=other.damage
	drdraw+=other.damage
	if(hurt<=0){
	hurttick=1
	}
	other.duration=0
	}}
	image_angle+=hsp
	if(duration>0){
	duration-=1
	}else{
	instance_destroy()
	}}}}



}
