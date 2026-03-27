function abilstrigen_scr(argument0, argument1) {
	//***********Skell***********
	if(argument1==2){
	//***Bricks***
	if(argument0==0){
	gravity_scr()

	if(grounded==1){
	phase=-1
	}

	hitme=instance_place(x,y+vsp,Projectile)
	if (hitme!=noone){
	if(hitme.classtype==2&&hitme.abil==2){
	hitme.duration=0
	instance_destroy()
	}}

	hitme=instance_place(x,y+vsp,Me)
	if (hitme!=noone){
	phase=-1
	with(hitme){
	if(grounded==0){
	if(other.image_index>vsp){
	vsp=other.image_index
	}else{
	vsp+=other.image_index
	}}
	dr+=other.damage
	drdraw+=other.damage
	if(hurt<=0){
	hurttick=1
	}}
	}

	if(phase==-1){
	instance_destroy()
	}

	}else{

	//***Fire***
	if(argument0==1){
	if(grounded=0){
	image_angle=direction
	gravity_scr()
	}else{
	if(option==1){
	option=0
	while(instance_place(x,y-1,Solid)){
	y-=1
	}}
	image_angle=270
	speed=0
	gravity=0
	}

	hitme=instance_place(x,y,Me)
	if(hitme!=noone){
	with(Me){
	dr+=other.damage
	drdraw+=other.damage
	if(hurt<=0){
	hurttick=1
	}}
	phase=-1
	}

	if(phase==-1){
	instance_destroy()
	}
	}else{

	//***Bone***
	if(argument0==2){
	image_angle-=10
	dir2=(dir1+3+360)mod(360)
	dir1=dir2
	x=lengthdir_x(20,dir2)+creator.x
	y=lengthdir_y(20,dir2)+creator.y

	hitme=instance_place(x,y,Me)
	if(hitme!=noone){
	with(Me){
	dr+=other.damage
	drdraw+=other.damage
	if(hurt<=0){
	hurttick=1
	}}
	phase=-1
	}

	if(phase=-1){
	instance_destroy()
	}}else{

	}}}

	//***Warp***
	if(argument0==3){
	image_angle-=10
	x=creator.x+20
	y=creator.y+20
	if(phase==-1){

	instance_destroy()
	}}else{

	//**Skullfly**
	if(argument0==4){
	move_towards_point(Me.x+10,Me.y+10,sped)

	if(x<Me.x+10){
	image_xscale=1
	}else{
	image_xscale=-1
	}

	if(phase>=0){
	hitme=instance_place(x,y,Projectile)
	if (hitme!=noone){
	hitme.duration=0
	instance_destroy()
	}

	hitme=instance_place(x,y,Me)
	if(hitme!=noone){
	with(Me){
	dr+=other.damage
	drdraw+=other.damage
	if(hurt<=0){
	hurttick=1
	}}
	phase=-1
	}
	}

	if(phase==-1){
	sprite_index=abil_witch_dis1
	phase=-2
	duration=24
	speed=0
	}

	if(duration<10&&phase=-2){
	phase=-3
	}

	if(phase==-3){
	instance_destroy()
	}}else{

	//**SkellFire**
	if(argument0==5){
	hitme=instance_place(x,y,Me)
	if(hitme!=noone){
	with(Me){
	dr+=other.damage
	drdraw+=other.damage
	if(hurt<=0){
	hurttick=1
	}}
	phase=-1
	}

	if(creator.phase!=4){
	instance_destroy()
	}
	}else{

	//**PotionforMinion**
	if(argument0==6){
	if(phase>=0){
	hitme=instance_place(x,y,Me)
	if(hitme!=noone){
	phase=-2
	image_speed=0.25
	sprite_index=skell_minion_dis1
	duration=16
	with(creator){
	instance_destroy()
	}}
	if(instance_exists(creator)){
	duration=16
	depth=creator.depth-1
	phase=0
	if(creator.dir==0){
	x=creator.x+12
	}else{
	x=creator.x+8
	}
	y=creator.y+17
	if(creator.visible==true){
	if(creator.image_index<=1){
	image_angle=0
	}else{
	if(creator.image_index<=3){
	image_angle=345
	}else{
	if(creator.image_index<=5){
	image_angle=0
	}else{
	if(creator.image_index<=7){
	image_angle=15
	}else{

	}}}}}
	}else{
	phase=-2
	image_speed=0.25
	sprite_index=skell_minion_dis1
	duration=16
	}}else{
	if(phase==-2){
	image_angle+=30
	if(duration<=0){
	phase=-3
	}}}
	if(phase==-3){
	instance_destroy()
	}

	}}}}

	}else{
	//*************FOREST****************

	if(argument1==3){
	//Spore
	if(abil==0){
	hitme=instance_place(x,y,Me)
	if(hitme!=noone){
	chance=1
	if(creator.phase==0){
	creator.phase=1
	creator.check=1
	}
	Control.screenroll=360
	if(instance_exists(Enemy)){
	with(Enemy){
	if(enemytype==3&&subtype==1){
	other.chance=0
	}
	}}
	if(chance==1){
	}
	instance_destroy()
	}

	if(instance_place(x,y,Solid)){
	speed=0
	}else{

	speed=random_range(0.075,0.175)

	if(delay<=0){
	delay=irandom(40)
	hsp=choose(-0.125,0.125)
	vsp=choose(0.025,0.05,0.1)
	if(duration<60){
	chance=irandom(1)
	if(chance==0){
	visible=true
	}else{
	visible=false
	}}
	}else{
	delay-=1
	}

	if(duration<250){
	vsp=0.25
	}

	x+=hsp
	y+=vsp
	}

	if(phase=-1){
	instance_destroy()
	}}else{

	//SHROOM PROJ
	if(abil==1){
	if(speed>2.5){
	speed=2.5
	}

	if(direction>180&&direction<270){
	image_angle-=speed*5
	}else{
	image_angle+=speed*5
	}

	if(phase!=2){
	hit=instance_place(x,y,Me)
	if(hit!=noone){
	with(Me){
	dr+=other.damage
	drdraw+=other.damage
	if(hurt<=0){
	hurttick=1
	}}
	}}else{
	speed=0
	gravity=0
	}

	if(phase==-1){
	instance_destroy()
	}}

	}
	}else{

	//*************Desert****************

	if(argument1==4){
	//SPEAR
	if(abil==0){
	image_angle=direction

	hit=instance_place(x,y,Me)
	if(hit!=noone&&diddmg==0){
	diddmg=1
	with(Me){
	dr+=other.damage
	drdraw+=other.damage
	if(hurt<=0){
	hurttick=1
	}}}

	if(phase==-1){
	instance_destroy()
	}
	}

	}
	}}



}
