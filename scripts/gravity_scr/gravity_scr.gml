function gravity_scr() {
	_oxg=x
	_oyg=y

	if(grounded==1){
	slope=0
	//Slope down detection
	if(!place_meeting(x+hsp,y+0.5,Solid)){
	yplus=0;
	while(!place_meeting(x+hsp,y+yplus,Solid)&&yplus<=3)yplus+=1;
	if(!place_meeting(x+hsp,y+yplus,Solid)){
	}else{
	y+=yplus
	slope=1
	}}}

	//Horizontal Collision
	if (place_meeting(x+hsp+extsp,y,Solid)){

	yplus=0;
	_hspg=hsp
	_extspg=extsp
	if(_extspg>1){
	_extspg=1
	}
	if(_extspg<-1){
	_extspg=-1
	}
	if(_hspg>1){
	_hspg=1
	}
	if(_hspg<-1){
	_hspg=-1
	}

	while (place_meeting(x+_hspg+_extspg,y-yplus,Solid)&&yplus<=2)yplus+=1;
	if(place_meeting(x+_hspg+_extspg,y-yplus,Solid)){
	_safeg=0
	while (!place_meeting(x+sign(hsp+extsp),y,Solid)&&_safeg<abs(hsp+extsp)+4){
	x += sign(hsp+extsp);
	_safeg+=1
	}
	hsp = 0
	extsp=0
	stopped=1
	}else{
	y-=yplus
	slope=-1
	}}

	x += hsp+extsp;

	//Maintain ground contact after horizontal movement
	if(grounded==1){
	//If inside slope (upslope), push up to surface
	if(place_meeting(x,y,Solid)){
	_snapg=0
	while(place_meeting(x,y-_snapg,Solid)&&_snapg<=3)_snapg+=1;
	if(!place_meeting(x,y-_snapg,Solid)){
	y-=_snapg
	}
	}else{
	//If floating above ground (downslope or step-up overshoot), snap down
	if(!place_meeting(x,y+1,Solid)){
	_snapg=0
	while(!place_meeting(x,y+_snapg+1,Solid)&&_snapg<=3)_snapg+=1;
	if(place_meeting(x,y+_snapg+1,Solid)){
	y+=_snapg
	}
	}}
	}

	//Vertical Collision
	impact=0

	if (place_meeting(x,y+vsp,Solid)){
	_safeg=0
	while (!place_meeting(x,y+sign(vsp),Solid)&&_safeg<abs(vsp)+4){
	y += sign(vsp);
	_safeg+=1
	}
	impact=vsp
	vsp = 0
	}
	y += vsp;

	if (vsp < 4) vsp += grav;

	//Safety: if deeply inside a solid after all movement, push out
	if(place_meeting(x,y-1,Solid)){
	//Try pushing up first
	_pyg=0
	while(place_meeting(x,y-_pyg,Solid)&&_pyg<=4)_pyg+=1;
	if(!place_meeting(x,y-_pyg,Solid)){
	y-=_pyg
	}else{
	//Push back to previous position
	x=_oxg
	y=_oyg
	hsp=0
	vsp=0
	}
	}

	grounding = instance_place(x,y+1,Solid)

	if(grounding!=noone){
	grounded = 1
	kbinair=0
	}else{
	grounded = 0
	}



}
