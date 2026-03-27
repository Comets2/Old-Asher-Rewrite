function arcade_select_scr() {
	event=0
	codecheck=1
	leveltotal=3

	if(event==0){
	if(level<10){

	if(roomchosen==0){
	level+=1
	roomchosen=choose(1,2,3,4,5)
	type=choose(0,1)
	roomchosen=3
	//type=0
	levelArray[level,0]=roomchosen
	levelArray[level,1]=type
	}else{

	//AFTER FIRST LEVEL 
	levelcheck=0
	level+=1

	while(levelcheck<=1){
	levelcheck=0

	//arcade

	type=choose(0,1)
	roomchosen=choose(1,2,3,4,5)

	for(a=1;a<level;a+=1){
	if(levelArray[a,0]==roomchosen&&levelArray[a,1]==type){
	levelcheck=1
	}}
	if(levelcheck==0){
	levelcheck=2
	}}

	levelArray[level,0]=roomchosen
	levelArray[level,1]=type
	}

	roomchosen=5
	//____________________________________________________________------------------------------------------<<<{STANDARD ARCADE}>>>------------------------------------------____________________________________________________________

	//______________________________---------------------<<<{Starter Forest}>>>---------------------______________________________
	if(roomchosen==1){
	room=Arcade_rm1
	//TYPE 0
	if(type==0){
	code=0
	Me.x=128
	Me.y=336
	}else{
	//TYPE 1
	if(type==1){
	code=1
	if(choose(0,1)==0){
	Me.x=896
	Me.y=160
	}else{
	Me.x=1560
	Me.y=272
	}}}
	}else{
	//______________________________---------------------<<<{BIRTHDAY Forest}>>>---------------------______________________________
	if(roomchosen==2){
	room=Arcade_rm2
	//TYPE 0
	if(type==0){
	code=2
	Me.x=240
	Me.y=176
	}else{
	//TYPE 1
	if(type==1){
	code=3
	if(choose(0,1)==0){
	Me.x=528
	Me.y=160
	}else{
	Me.x=1552
	Me.y=176
	}}}
	}else{
	//______________________________---------------------<<<{HAUNTED Forest}>>>---------------------______________________________
	if(roomchosen==3){
	room=Arcade_rm3
	//TYPE 0
	//BREW
	if(type==0){
	code=4

	chance=choose(0,1,2)
	if(chance==0){
	Me.x=528
	Me.y=160
	startx=48
	endx=544
	}else{
	if(chance==1){
	Me.x=528
	Me.y=160
	startx=688
	endx=544
	}else{
	Me.x=1040
	Me.y=160
	startx=48
	endx=544
	}}

	}else{
	//TYPE 1
	if(type==1){
	code=5
	chance=choose(0,1)
	if(chance==0){
	Me.x=2176+8
	Me.y=256
	startx=1840
	endx=2528
	}else{
	if(chance==1){
	Me.x=3024
	Me.y=304
	startx=2656
	endx=3392
	}}
	}}
	}else{
	//______________________________---------------------<<<{SNOW Forest}>>>---------------------______________________________
	if(roomchosen==4){
	room=Arcade_rm4
	//TYPE 0
	if(type==0){
	code=6
	Me.x=384
	Me.y=496
	}else{
	//TYPE 1
	if(type==1){
	code=7
	if(choose(0,1)==0){
	Me.x=1056+8
	Me.y=352
	}else{
	Me.x=1712+8
	Me.y=400
	}}}
	}else{
	//______________________________---------------------<<<{DARK Forest}>>>---------------------______________________________
	if(roomchosen==5){
	room=Arcade_rm5
	//TYPE 0
	if(type==0){
	code=8
	Me.x=880
	Me.y=144
	}else{
	//TYPE 1
	if(type==1){
	code=9
	if(choose(0,1)==0){
	Me.x=1632
	Me.y=176
	}else{
	Me.x=1632
	Me.y=176
	}}}
	}}}}}
	}}else{



	//____________________________________________________________------------------------------------------<<<{CHRISTMAS EVENT}>>>------------------------------------------____________________________________________________________

	if(event==1){

	if(roomchosen==0){
	level+=1
	roomchosen+=1
	type=choose(0,1)
	}

	if(roomchosen==1){
	room=Arcade_christmas_rm1
	//TYPE 0
	if(type==0){
	code=100
	startx=112
	endx=752
	Me.x=128
	Me.y=320
	}else{
	//TYPE 1
	if(type==1){
	code=100
	startx=944
	endx=1600
	Me.x=1264
	Me.y=256
	}}
	}
	}


	}



}
