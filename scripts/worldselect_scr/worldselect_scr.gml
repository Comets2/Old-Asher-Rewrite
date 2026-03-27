function worldselect_scr() {
	if(equipopt==0){
	if(worldlock==1){
	equipopt=2
	equipopttwo=0
	}else{
	if(con_p_right||conp_p_right){
	if(equipopttwo<1){
	equipopttwo+=1
	}else{
	equipopttwo=0
	}}
	if(con_p_left||conp_p_left){
	if(equipopttwo>0){
	equipopttwo-=1
	}else{
	equipopttwo=1
	}}

	if(con_p_enter||con_p_e||conp_p_space||conp_p_enter){
	if(equipopttwo==0){

	//WORLD 1
	for(a=0;a<4;a+=1){
	for(b=0;b<4;b+=1){
	owLevels[a,b]=100
	}}
	owLevels[0,3]=99
	owLevels[0,2]=0
	owLevels[0,1]=2
	owLevels[1,1]=4
	owLevels[2,1]=6
	owLevels[1,2]=8

	levelsArray[0,0]=Forest_rm1
	levelsArray[1,0]=Forest_rm1
	levelsArray[2,0]=Forest_rm3
	levelsArray[3,0]=Forest_rm3
	levelsArray[4,0]=Forest_snow_rm
	levelsArray[5,0]=Forest_snow_rm2
	levelsArray[6,0]=Forest_rm4
	levelsArray[7,0]=100
	levelsArray[8,0]=Birthday_rm1
	levelsArray[9,0]=Birthday_rm1

	if(world==1){
	equipopt=2
	wordlast=1
	overworldlevels_scr(99)
	}else{
	world=1
	equipopt=2
	worldlast=1
	charArray[charselected,6]=0
	charArray[charselected,7]=3
	xspot=charArray[charselected,6]
	yspot=charArray[charselected,7]
	worldx=0
	worlldy=3
	mex=worldx
	mey=worldy
	if(instance_exists(Overworld_obj)){
	Overworld_obj.mex=0
	Overworld_obj.mey=3
	}
	}}else{

	//WORLD 2
	if(equipopttwo==1){

	for(a=0;a<4;a+=1){
	for(b=0;b<4;b+=1){
	owLevels[a,b]=100
	}}
	owLevels[0,3]=99
	owLevels[1,1]=99
	owLevels[2,2]=99
	owLevels[1,3]=10
	owLevels[1,2]=12
	owLevels[2,1]=14
	owLevels[2,0]=16

	levelsArray[10,0]=Worldtwo_rm2
	levelsArray[11,0]=Worldtwo_rm2
	levelsArray[12,0]=Worldtwo_rm3
	levelsArray[13,0]=Worldtwo_rm3
	levelsArray[14,0]=Worldtwo_rm1
	levelsArray[15,0]=Worldtwo_rm1_part2
	levelsArray[16,0]=Worldtwo_rm6_boss
	levelsArray[17,0]=100

	if(world==2){
	equipopt=2
	worldlast=2
	overworldlevels_scr(99)
	}else{
	world=2
	equipopt=2
	worldlast=2
	charArray[charselected,6]=0
	charArray[charselected,7]=3
	xspot=charArray[charselected,6]
	yspot=charArray[charselected,7]
	worldx=0
	worlldy=3
	mex=worldx
	mey=worldy
	if(instance_exists(Overworld_obj)){
	Overworld_obj.mex=0
	Overworld_obj.mey=3
	}
	mex=worldx
	mey=worldy
	}}else{
	if(equipopttwo==2){

	}}}}
	}

	}else{
	if(equipopt==2){
		equipopt=1
	charsave_scr(charselected)
	if(weather!=0){
	weather=0
	weathertick=0
	part_system_destroy(snow)
	}
	with(Me){
	if(minigame!=0){
	minigame=0
	}}
	mapcheck=2
	}

	}



}
