function statuseffects_scr() {
	if(statuscheck==1){
	statuscheck=0
	stunned=0
	}
	gravtotal=0.12
	grav=gravtotal*gravdebuff
	jumpspeed=jumpspeedtotal*jumpdebuff

	if(slow>0){
	movedebuff=slowamount
	gravdebuff=gravamount
	jumpdebuff=jumpamount
	slow-=1
	}else{
	movedebuff=1
	gravdebuff=1
	jumpdebuff=1
	}

	if(hurttick==1&&immune==0){
	justhurt=1
	hurttick=0
	hurt=24

	if(id==Me.id){
	Control.vibrate+=12
	if(Control.itemsArray[0,10]!=0){
	if(irandom(100)<=Control.itemsArray[0,10]){
	Control.rolldisplaytime=60
	Control.rolldisplayimage=0
	dr=0
	drdr=0
	hurt=0
	}else{
	hp-=dr
	dmgtaken+=dr
	dr=0
	}}else{
	hp-=dr
	dmgtaken+=dr
	dr=0
	}}else{
		if(Me.hpstealcd<=0){
	if(Control.itemsArray[0,11]!=0){
	if(irandom(100)<=Control.itemsArray[0,11]){
	if(Me.hp<=Me.hptotal-1){
		Me.hpstealcd=4000
	Me.hp+=1
	Control.rolldisplaytime=60
	Control.rolldisplayimage=1
	}}}
	}
	}


	if(point_distance(x,y,Me.x,Me.y)<275){
	chance=choose(hurtsound,hurtsoundtwo)
	sfx_play_at(chance,x,y, 0, 90, 150, 0.5, false, 1) 
	}}else{

	drdr=0
	hurttick=0
	}
	//recieve dmg
	if(id!=Me.id){
	if(hp-dr>=0){
	Control.dpsdone+=dr
	}else{
	Control.dpsdone+=hp
	}
	hp-=dr
	dmgtaken+=dr
	dr=0
	}

	//DEBUFF
	if(debufftimer>0){
	debufftimer-=1
	if(debuff==1){
	stunned=debufftimer
	hsp=0
	//FEAR
	extsp=debuffopt
	}
	}else{
	extsp=0
	}

	if(stunned>0){
	stunned-=1
	}


	if(hurt>0){
	hurt-=1
	image_blend=hurtcolor
	}else{
	hurt=0
	drdraw=0
	image_blend=c_white
	}




}
