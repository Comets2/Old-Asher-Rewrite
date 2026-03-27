function arcade_honey_scr() {

	with(Arcade_dummy_object){
	if(x>__view_get( e__VW.XView, 0 )-60&&x<__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+60){
	//Hive
	if(pin==1){
	if(check==1){
	check=0
	sprite_index=beelarva_spr
	image_speed=0
	image_angle=270
	}
	}else{
	//Bee
	if(pin==2){
	if(check==1){
	check=0
	created=instance_create(x,y,Enemy)
	with(created){
	sprite_index=bee_spr
	tick=0
	ticktwo=0
	}}
	if(instance_exists(created)){
	with(created){
	if(x+16<Me.x+10){
	image_xscale=1
	}else{
	image_xscale=-1
	}
	if(tick==0){
	if(ticktwo<10){
	ticktwo+=1
	y+=0.5
	}else{
	tick=1
	}
	}else{

	}}}

	}else{

	}
	}}


	}


}
