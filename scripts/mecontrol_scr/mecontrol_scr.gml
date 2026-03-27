function mecontrol_scr() {
	if(stun==0){
	if(Control.con_h_right){
	key_left = Control.con_h_right
	}else{
	key_left = Control.conp_h_right
	}
	if(Control.con_h_left){
	key_right = -Control.con_h_left
	}else{
	key_right = -Control.conp_h_left
	}
	if(Control.con_p_space){
	key_jump = Control.con_p_space
	}else{
	key_jump = Control.conp_p_space
	}
	if(Control.con_h_up){
	key_up = Control.con_h_up
	}else{
	key_up = Control.conp_h_up
	}
	if(Control.con_h_down){
	key_down = Control.con_h_down
	}else{
	key_down = Control.conp_h_down
	}

	if(grounded==0&&Control.con_p_space&&Control.con_h_down||grounded==0&&Control.conp_p_space&&Control.conp_h_down){
	if(vsp<2){
	vsp=1.5
	slamcd=2
	doublejump=0
	//sprite_index=meslam
	if(direction==0){
	moveaction=12
	}else{
	moveaction=13
	}}}

	if(grounded==0&&!Control.con_p_space&&Control.con_p_down||Control.conp_h_shr||Control.conp_h_shl){
	if(vsp<0){
	vsp=0
	for(i=0;i<2;i+=1){
	created=instance_create(x+10-2+i*2,y+20+1,Dummy_three_object)
	with(created){
	type=1
	pin=300
	creator=other.id
	sprite_index=me_part1_spr
	depth=Me.depth-1

	image_speed=1
	image_index=irandom(image_number)
	duration=8+irandom(12)
	durationtotal=duration
	speed=random_range(0.05,0.3)
	direction=other.i*40
	hsp=hspeed
	vsp=vspeed
	speed=0
	}}
	}}

	if(slamcd>0){
	animdel=2
	hit=instance_place(x,y+1,Container)
	if(hit!=noone){
	slamcd=0
	animdel=0
	hit.hurttick=1
	}
	hit=instance_place(x,y+1,Solid)
	if(hit!=noone){
	slamcd=0
	animdel=0
	}}

	if(grounded==1){
	if(slamcd>0){
	slamcd-=1
	}
	}else{
	bonusspeed=0
	}

	run=1
	if(bonusspeed==1){
	movespeedtotal=1.5
	}else{
	movespeedtotal=1.25
	}
	if(grounded==1){
	movespeed=(movespeedtotal*movedebuff)*Control.itemsArray[0,6]
	}else{
	movespeed=movespeedtotal*movedebuff*(((Control.itemsArray[0,6]-1)*0.5)+1)
	}

	//Input reaction
	if(stunned<=0){
	hsp = (move * movespeed);
	}

	//Sprites
	if(root==0){
	if(hsp>0&&Control.con_h_right||hsp>0&&Control.conp_h_right){
	if(animdel==0){
	if(grounded==1){
	//sprite_index = mew
	moveaction=2
	if(sounddel>=5){
	if(Control.con_p_down||Control.conp_p_down||Control.conp_p_shr||Control.conp_p_shl){
	bonusspeed=1
	btick=1
	for(i=0;i<3;i+=1){
	created=instance_create(x+10-1+i,y+20,Dummy_three_object)
	with(created){
	type=1
	pin=300
	creator=other.id
	sprite_index=me_part1_spr
	depth=Me.depth-1
	spin=1
	image_speed=1
	image_index=irandom(image_number)
	duration=8+irandom(12)
	durationtotal=duration
	speed=random_range(0.05,0.3)
	direction=other.i*40
	hsp=hspeed
	vsp=vspeed
	speed=0
	}}
	}else{
	bonusspeed=0
	}}
	if(btick==1){
	bonusspeed=1
	}
	if(sounddel<=0){
	btick=0
	//for(i=0;i<3;i+=1){
	created=instance_create(x+10,y+20,Dummy_three_object)
	with(created){
	type=1
	pin=300
	creator=other.id
	sprite_index=me_part1_spr
	depth=Me.depth-1
	spin=1
	image_speed=1
	image_index=irandom(image_number)
	duration=8+irandom(12)
	durationtotal=duration
	speed=random_range(0.05,0.3)
	direction=other.i*40
	hsp=hspeed
	vsp=vspeed
	speed=0
	}
	//}
	walksnd=(irandom(2))
	if(walksnd==1){
	audio_play_sound(mewalk1,6,false)
	sounddel=16
	}else{
	if(walksnd==2){
	audio_play_sound(mewalk2,6,false)
	sounddel=16
	}else{
	audio_play_sound(mewalk3,6,false)
	sounddel=16
	}}}}}
	direction=0
	}

	if(animdel==0&&grounded==0){
	if(direction==0){
	if(vsp<=0){
	moveaction=4
	}else{
	if(vsp>0){
	moveaction=6
	}}
	}else{
	if(vsp<=0){
	moveaction=5
	}else{
	if(vsp>0){
	moveaction=7
	}}}}

	if(hsp<0&&Control.con_h_left||hsp<0&&Control.conp_h_left){
	if(animdel==0){
	if(grounded==1){
	moveaction=3
	if(sounddel>=5){
	if(Control.con_p_down||Control.conp_p_down||Control.conp_p_shr||Control.conp_p_shl){
	bonusspeed=1
	btick=1

	for(i=0;i<3;i+=1){
	created=instance_create(x+10-1+i,y+20,Dummy_three_object)
	with(created){
	type=1
	pin=300
	creator=other.id
	sprite_index=me_part1_spr
	depth=Me.depth-1
	spin=0
	image_speed=1
	image_index=irandom(image_number)
	duration=8+irandom(12)
	durationtotal=duration
	speed=random_range(0.05,0.3)
	direction=other.i*40
	hsp=hspeed
	vsp=vspeed
	speed=0
	}}
	}else{
	bonusspeed=0
	}}
	if(btick==1){
	bonusspeed=1
	}
	if(sounddel<=0){
	btick=0
	created=instance_create(x+10,y+20,Dummy_three_object)
	with(created){
	type=1
	pin=300
	creator=other.id
	sprite_index=me_part1_spr
	depth=Me.depth-1
	spin=0
	image_speed=1
	image_index=irandom(image_number)
	duration=8+irandom(12)
	durationtotal=duration
	speed=random_range(0.05,0.3)
	direction=other.i*40
	hsp=hspeed
	vsp=vspeed
	speed=0
	}
	walksnd=(irandom(2))
	if(walksnd==1){
	audio_play_sound(mewalk1,6,false)
	sounddel=16
	}else{
	if(walksnd==2){
	audio_play_sound(mewalk2,6,false)
	sounddel=16
	}else{
	audio_play_sound(mewalk3,6,false)
	sounddel=16
	}}}}}
	direction=180
	}

	if(pause==0&&root==0&&kbinair==0){
	move = key_left + key_right
	}else{
	if(grounded==1){
	move = 0
	}else{
	move = key_left + key_right
	}}

	//Wallslide
	if(place_meeting(x+2.5,y,Solid)&&!Control.con_h_down&&grounded==0||place_meeting(x+2.5,y,Solid)&&!Control.conp_h_down&&grounded==0){
	if(vsp>1){
	vsp-=0.1875
	if(sounddel<=1){
	sounddel=8
	created=instance_create(x+10,y+20,Dummy_three_object)
	with(created){
	type=1
	pin=300
	creator=other.id
	sprite_index=me_part1_spr
	depth=Me.depth-1

	image_speed=0
	image_index=irandom(image_number)
	duration=8+irandom(12)
	durationtotal=duration
	speed=random_range(0.05,0.3)
	direction=other.i*40
	hsp=hspeed
	vsp=vspeed
	speed=0
	}}
	}
	if(Control.con_p_space||Control.conp_p_space){
	if(wallrtrig==0){
	for(i=0;i<3;i+=1){
	created=instance_create(x+10-2+i*2,y+20+1,Dummy_three_object)
	with(created){
	type=1
	pin=300
	creator=other.id
	sprite_index=me_part1_spr
	depth=Me.depth-1

	image_speed=1
	image_index=irandom(image_number)
	duration=8+irandom(12)
	durationtotal=duration
	speed=random_range(0.05,0.3)
	direction=other.i*40
	hsp=hspeed
	vsp=vspeed
	speed=0
	}}

	wallrtrig=1
	wallltrig=0
	moveaction=14
	animdel=16
	vsp=-2.9
	}else{

	}}}


	if(place_meeting(x-2.5,y,Solid)&&!Control.con_h_down&&grounded==0||place_meeting(x-2.5,y,Solid)&&!Control.conp_h_down&&grounded==0){
	if(vsp>1){
	vsp-=0.1875
	if(sounddel<=1){
	sounddel=8
	created=instance_create(x+10,y+20,Dummy_three_object)
	with(created){
	type=1
	pin=300
	creator=other.id
	sprite_index=me_part1_spr
	depth=Me.depth-1

	image_speed=1
	image_index=irandom(image_number)
	duration=8+irandom(12)
	durationtotal=duration
	speed=random_range(0.05,0.3)
	direction=other.i*40
	hsp=hspeed
	vsp=vspeed
	speed=0
	}}
	}
	if(Control.con_p_space||Control.conp_p_space){
	if(wallltrig==0){
	for(i=0;i<3;i+=1){
	created=instance_create(x+10-2+i*2,y+20+1,Dummy_three_object)
	with(created){
	type=1
	pin=300
	creator=other.id
	sprite_index=me_part1_spr
	depth=Me.depth-1

	image_speed=0
	image_index=irandom(image_number)
	duration=8+irandom(12)
	durationtotal=duration
	speed=random_range(0.05,0.3)
	direction=other.i*40
	hsp=hspeed
	vsp=vspeed
	speed=0
	}}

	wallltrig=1
	wallrtrig=0
	moveaction=15
	animdel=16
	vsp=-2.75

	}else{

	}}}

	//jump/ground
	if(instance_place(x,y+1,Solid)&&stunned<=0){
	doublejump=1
	if(vsp>=0){
	grounded = 1
	wallrtrig=0
	wallltrig=0
	jumptime=0
	}
	if(Control.con_p_space&&!instance_place(x,y-1,Solid)||Control.conp_p_space&&!instance_place(x,y-1,Solid)){
	bjump=1
	if(!Control.con_h_down){
	vsp=-1.65
	}else{
	vsp=-1.25
	}
	}}else{

	//Double Jump
	if(doublejump==1){
	//if(!Control.con_h_down&&!Control.conp_h_down){
	if(Control.con_p_space&&!instance_place(x,y-1,Solid)||Control.conp_p_space&&!instance_place(x,y-1,Solid)){
	if(!place_meeting(x+2.5,y,Solid)&&!place_meeting(x+2.5,y,Solid)||wallrtrig==0){
	if(!place_meeting(x-2.5,y,Solid)&&!place_meeting(x-2.5,y,Solid)||wallltrig==0){
	for(i=0;i<3;i+=1){
	created=instance_create(x+10-2+i*2,y+20+1,Dummy_three_object)
	with(created){
	type=1
	pin=300
	creator=other.id
	sprite_index=me_part1_spr
	depth=Me.depth-1

	image_speed=1
	image_index=irandom(image_number)
	duration=8+irandom(12)
	durationtotal=duration
	speed=random_range(0.05,0.3)
	direction=other.i*40
	hsp=hspeed
	vsp=vspeed
	speed=0
	}}
	//bjump=1
	vsp=-2.5
	doublejump=0
	}}}}}
	//}

	if(bjump==1||jumptime>0){
	if(!Control.con_h_down&&!place_meeting(x,y-1,Solid)){
	bjump=0
	vsp-=jumptime
	if(Control.con_h_space||Control.conp_h_space){
	//jumptime+=0.85
	jumptime+=0.15
	}
	if(Control.con_r_space||Control.conp_r_space){
	jumptime=0
	}
	if(vsp<-2.3){
	jumptime=0
	vsp=-2.3
	}
	}else{
	jumptime=0
	bjump=0
	}}

	if(direction==0&&hsp==0&&grounded==1&&!Control.con_h_down&&!Control.con_h_up||direction==0&&hsp==0&&grounded==1&&!Control.conp_h_down&&!Control.conp_h_up){
	if(animdel==0){
	moveaction=0
	}
	}

	if(direction==180&&hsp==0&&grounded==1&&!Control.con_h_down&&!Control.con_h_up||direction==180&&hsp==0&&grounded==1&&!Control.conp_h_down&&!Control.conp_h_up){
	if(animdel==0){
	moveaction=1
	}}}

	if(animstop>0){
	animstop-=1
	image_speed = 0
	}else{
	image_speed = 0.15
	}

	if(attacktype!=0){
	if(weaponspeed==1){
	image_speed = 0.15
	}
	if(weaponspeed<1){
	image_speed = image_speed + (weaponspeed*image_speed)
	}
	if(weaponspeed>1){
	image_speed = image_speed - ((weaponspeed-1)*image_speed)
	}
	}else{
	image_speed = 0.15
	}


	}



}
