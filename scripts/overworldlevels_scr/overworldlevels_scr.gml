function overworldlevels_scr(argument0) {
	if(argument0==0){

	//***{World One Setup}***
	//owLevelinfo[0:levelid,0:type,1:locked?,2:xgrid,3:ygrid]

	//Type
	//OVERWORLD LEVELS
	for(a=0;a<4;a+=1){
	for(b=0;b<4;b+=1){
	owLevels[a,b]=100
	}}

	for(i=0;i<30;i+=1){
	for(j=0;j<16;j+=1){
	levelsArray[i,j]=100
	}}

	for(i=0;i<30;i+=1){
	for(j=0;j<16;j+=1){
	statsArray[i,j]=0
	}}

	//World 1
	owLevels[0,3]=99

	//Level Actual
	//levelsArray_add(i,Level,Act,Startx,Starty,Locked,DB1,DB2,DB3,Chest,Time,Unlock,Unlock2,Opt1,Opt2)
	//Forest Act 1
	owLevels[0,2]=0
	levelsArrays_add(0,Forest_rm1,1,32,144,0,0,0,0,0,0,1,0,0,0)
	//Forest Act 2
	levelsArrays_add(1,Forest_rm1,2,2848,192,1,0,0,0,0,0,2,8,0,0)
	//Mushroom Act 1
	owLevels[0,1]=2
	levelsArrays_add(2,Forest_rm3,1,3216,192,1,0,0,0,0,0,3,0,0,0)
	//Mushroom Act 2
	levelsArrays_add(3,Forest_rm3,2,48,144,1,0,0,0,0,0,4,0,0,0)
	//Snow Act 1
	owLevels[1,1]=4
	levelsArrays_add(4,Forest_snow_rm,1,16,16,1,0,0,0,0,0,5,0,0,0)
	//Snow Act 2
	levelsArrays_add(5,Forest_snow_rm2,2,16,336,1,0,0,0,0,0,6,0,0,0)
	//Tree Boss Act 1
	owLevels[2,1]=6
	levelsArrays_add(6,Forest_rm4,1,64,160,1,0,0,0,0,0,0,0,0,0)
	levelsArrays_add(7,100,100,100,100,100,100,100,100,100,100,100,100,100,100)
	//Other level Act 1
	owLevels[1,2]=8
	levelsArrays_add(8,Birthday_rm1,1,32,10,1,0,0,0,0,0,9,0,0,0)
	//Other level Act 2
	levelsArrays_add(9,Birthday_rm1,2,3776,50,1,0,0,0,0,0,4,0,0,0)

	//World 2

	//Level Actual
	//levelsArray_add(i,Level,Act,Startx,Starty,Locked,DB1,DB2,DB3,Chest,Time,Unlock,Unlock2,Opt1,Opt2)
	//Retro Act 1
	levelsArrays_add(10,Worldtwo_rm2,1,32,252,0,0,0,0,0,0,11,0,0,0)
	//Retro Act 2
	levelsArrays_add(11,Worldtwo_rm2,2,4960,488-32,1,0,0,0,0,0,12,0,0,0)
	//Graveyard Act 1
	levelsArrays_add(12,Worldtwo_rm3,1,16,192,1,0,0,0,0,0,13,0,0,0)
	//Graveyard Act 2
	levelsArrays_add(13,Worldtwo_rm3,2,2640,656,1,0,0,0,0,0,14,0,0,0)
	//Pirate Act 1
	levelsArrays_add(14,Worldtwo_rm1,1,128,288,1,0,0,0,0,0,15,0,0,0)
	//Pirate Act 2
	levelsArrays_add(15,Worldtwo_rm1_part2,2,656,176,1,0,0,0,0,0,16,0,0,0)
	//Cathedral Boss Act 1
	levelsArrays_add(16,Worldtwo_rm6_boss,1,224,224,1,0,0,0,0,0,0,0,0,0)
	levelsArrays_add(17,100,100,100,100,100,100,100,100,100,100,100,100,100,100)
	//Other level Act 1
	levelsArrays_add(18,Birthday_rm1,1,32,144,1,0,0,0,0,0,9,0,0,0)
	//Other level Act 2
	levelsArrays_add(19,Birthday_rm1,2,32,144,1,0,0,0,0,0,4,0,0,0)

	}else{
	if(argument0!=99){
	//Check
	//***{Movement Checks}***
	with(Control){
	//LEVEL SELECT
	if(actchoose==0){
	if(delay<=0){
	if(con_p_e||con_p_enter||conp_p_space||conp_p_enter){
	if(owLevels[other.mex,other.mey]<99){
	if(levelsArray[owLevels[other.mex,other.mey]+1,4]==0){
	actchar=0
	actchoose=2
	}else{
	if(levelsArray[owLevels[other.mex,other.mey],4]==0){
	actchar=0
	actchoose=1
	}}}}}else{
	if(gamemodeactive==1){
	actchar=1
	Me.moveaction=2
	image_speed=0.2
	actopt=charArray[charselected,8]
	actopttwo=maskArray[charArray[charselected,8],2]
	actchoose=1
	}}
	}else{
	if(actchar==0){
	//ACT SELECT
	if(con_p_e||con_p_enter||conp_p_space||conp_p_enter){
	if(levelsArray[owLevels[other.mex,other.mey]+actchoose-1,4]==0){
	roomsave=levelsArray[owLevels[other.mex,other.mey]+actchoose-1,0]
	xsave=levelsArray[owLevels[other.mex,other.mey]+actchoose-1,2]
	ysave=levelsArray[owLevels[other.mex,other.mey]+actchoose-1,3]
	actchar=1

	Me.moveaction=2
	image_speed=0.2
	//image_index=0
	actopt=charArray[charselected,8]
	actopttwo=maskArray[charArray[charselected,8],2]
	//actoptsave=actopt
	}else{

	}}}else{

	//CHARACTER SELECT
	if(actchar==1){

	//Me.visible=true

	if(con_p_right||conp_p_right){
	if(actopttwo<1){
	actopttwo+=1
	}else{
	actopttwo=0
	}}
	if(con_p_left||conp_p_left){
	if(actopttwo>0){
	actopttwo-=1
	}else{
	actopttwo=1
	}}
	if(saveactopt!=actopt||saveactopttwo!=actopttwo){
	inven_scr(0)
	}

	if(con_p_up||conp_p_up){
	if(actopt>0){
	actopt-=1
	}else{
	actopt=8
	}}
	if(con_p_down||conp_p_down){
	if(actopt<8){
	actopt+=1
	}else{
	actopt=0
	}}

	//ENTER LEVEL
	if(delay<=0){
	if(con_p_e||con_p_enter||conp_p_space||conp_p_enter){
	if(Control.maskArray[Control.charArray[Control.charselected,8],5]==0&&!(actopttwo==1&&maskArray[actopt,0]<15)){
	charArray[charselected,8]=actopt
	maskArray[charArray[charselected,8],2]=actopttwo
	charArray[charselected,6]=other.mex
	charArray[charselected,7]=other.mey
	if(actchar==1){
	//Abils
	for(i=0;i<5;i+=1){
	charcdArray[i,0]=0
	charcdArray[i,1]=0
	charcdArray[i,2]=0
	charcdArray[i,3]=0
	}
	leveldeaths=0
	levelgold=0
	levelkills=0
	levelreward=0
	leveltime=0
	if(gamemodeactive==0){
	charArray[charselected,3]=xsave
	charArray[charselected,4]=ysave
	room=roomsave
	Me.x=xsave
	Me.y=ysave
	}else{
	Arcade_control.ready=1
	pause=0
	}
	Me.hp=Me.hptotal
	Control.timertime=0
	Control.dpsdone=0
	Me.visible=true
	actchar=0
	//actopt=actoptsave
	healthcon=healthcontotal
	}}else{
	actchar=2
	}}}}else{

	//BUY LOCKED MASK
	if(actchar==2||actchar==3){
	if(con_p_up||conp_p_up||con_p_down||conp_p_down){
	if(actchar==2){
	actchar=3
	}else{
	actchar=2
	}}

	if(con_p_w||con_p_escape||conp_p_q||conp_p_escape){
	actchar=1
	}

	if(con_p_e||con_p_enter||conp_p_space||conp_p_enter){
	if(actchar==3){
	if(Control.charArray[Control.charselected,11]>=Control.maskArray[Control.charArray[Control.charselected,8],6]){
	Control.charArray[Control.charselected,11]-=Control.maskArray[Control.charArray[Control.charselected,8],6]
	Control.maskArray[Control.charArray[Control.charselected,8],5]=0
	actchar=1
	}}else{
	actchar=1
	}}}}}}}

	}
	}



}
