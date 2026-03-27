function enledge_scr(argument0) {
	ledge=1

	if(argument0==1){
	xcheck=16
	}else{
	xcheck=4
	}
	ycheck=20
	for(i=0;i<8;i+=1){
	if(collision_point(x+xcheck,y+ycheck,Solid,true,true)){
	ledge=0
	i=8
	}
	ycheck+=10
	}



}
