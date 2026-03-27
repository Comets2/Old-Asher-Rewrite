function simplemove_scr(argument0) {
	if(argument0==0){
	//Move
	if(dir==0){
	if(x<startx+range){
	x+=movespeed
	}else{
	dir=1
	}}else{
	if(x>startx-range){
	x-=movespeed
	}else{
	dir=0
	}}
	//Grav
	if(needsgrav==1){
	if(!instance_place(x,y+1,Solid)){
	y+=1
	}}
	}else{

	//Up Down
	if(tick==0){
	if(y<starty+range){
	y+=movespeed
	}else{
	tick=1
	}}else{
	if(y>starty-range){
	y-=movespeed
	}else{
	tick=0
	}}

	}



}
