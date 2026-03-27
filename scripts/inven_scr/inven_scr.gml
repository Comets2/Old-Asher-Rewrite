function inven_scr(argument0) {
	if(argument0==0){
	charArray[charselected,8]=actopt
	maskArray[charArray[charselected,8],2]=actopttwo
	saveactopt=actopt
	saveactopttwo=actopttwo
	}else{
	}

	abilcreate_scr(charArray[charselected,8])


	if(maskArray[charArray[charselected,8],2]==0){
	helmskin=helm_spr
	}else{
	if(maskArray[charArray[charselected,8],2]==1){
	helmskin=helm_spr_alt1
	}else{
	if(maskArray[charArray[charselected,8],2]==2){
	helmskin=helm_spr_alt2
	}else{
	if(maskArray[charArray[charselected,8],2]==3){
	helmskin=helm_spr_alt2
	}else{


	}}}}

	statsArray[charArray[charselected,8],0]=maskArray[charArray[charselected,8],0]
	for(i=1;i<6;i+=1){
	statsArray[charArray[charselected,8],0]-=statsArray[charArray[charselected,8],i]
	}

	/*
	0 - boots
	1 - pants
	2 - belt
	3 - shirt
	4 - arms
	5 - helm
	6 - wep
	*/

	//________________________________________________________________************<<{Miner}>>************________________________________________________________________
	if(charArray[charselected,8]==0){
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	nohair=0
	helmanimspr=0
	//helmanimspr=miner_anim1_spr
	maskcol=make_color_rgb(116,116,116)
	abilpan=abilpan_bomb_spr
	abilpancd=abilpancd_pump_spr
	charEquip[charselected,1]=0
	charEquip[charselected,2]=0
	charEquip[charselected,3]=0
	charEquip[charselected,4]=0
	charEquip[charselected,5]=12
	charEquip[charselected,6]=24
	/*
	Knight
	charEquip[charselected,1]=0
	charEquip[charselected,2]=0
	charEquip[charselected,3]=4
	charEquip[charselected,4]=0
	charEquip[charselected,5]=0
	charEquip[charselected,6]=0
	with(Me){
	skincolor=make_color_rgb(248,213,185)
	pantcolor=make_color_rgb(116,116,116)
	armcolor=make_color_rgb(116,116,116)
	haircolor=make_color_rgb(101,78,35)
	}
	*/

	with(Me){
	skincolor=make_color_rgb(248,213,185)
	pantcolor=make_color_rgb(54,54,146)
	armcolor=make_color_rgb(137,42,42)
	haircolor=make_color_rgb(101,78,35)
	}}else{

	//__________________________________________________<<{Pumpkin}>>__________________________________________________
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	nohair=0
	helmanimspr=0
	maskcol=make_color_rgb(213,153,51)
	abilpan=abilpan_pump_spr
	abilpancd=abilpancd_pump_spr
	charEquip[charselected,1]=0
	charEquip[charselected,2]=0
	charEquip[charselected,3]=0
	charEquip[charselected,4]=0
	charEquip[charselected,5]=0
	charEquip[charselected,6]=0

	with(Me){
	skincolor=make_color_rgb(248,213,185)
	pantcolor=make_color_rgb(54,54,146)
	armcolor=make_color_rgb(137,42,42)
	haircolor=make_color_rgb(101,78,35)
	}
	}}
	}else{
	//________________________________________________________________************<<{Wizard}>>************________________________________________________________________
	if(charArray[charselected,8]==1){
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]<=1){
	nohair=0
	helmanimspr=0
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	//Wizard
	maskcol=make_color_rgb(108,120,173)
	abilpan=abilpan_wizard_spr
	}else{
	//Witch
	maskcol=make_color_rgb(116,83,151)
	abilpan=abilpan_witch_spr
	}
	abilpancd=abilpancd_witch_spr
	charEquip[charselected,1]=0
	charEquip[charselected,2]=0
	charEquip[charselected,3]=0
	charEquip[charselected,4]=0
	charEquip[charselected,5]=1
	charEquip[charselected,6]=1

	with(Me){
	skincolor=make_color_rgb(248,213,185)
	pantcolor=make_color_rgb(54,54,146)
	armcolor=make_color_rgb(137,42,42)
	haircolor=make_color_rgb(101,78,35)
	}
	}else{

	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==2){
	//Retro WIZARD
	nohair=0
	helmanimspr=0
	helmskin=helm_spr_alt2

	maskcol=make_color_rgb(164,188,74)
	abilpan=abilpan_wizard_spr
	/*
	0 - boots
	1 - pants
	2 - belt
	3 - shirt
	4 - arms
	5 - helm
	6 - wep
	*/
	abilpancd=abilpancd_witch_spr
	charEquip[charselected,1]=1
	charEquip[charselected,2]=1
	charEquip[charselected,3]=4
	charEquip[charselected,4]=7
	charEquip[charselected,5]=1
	charEquip[charselected,6]=9

	with(Me){
	skincolor=make_color_rgb(164,188,74)
	pantcolor=make_color_rgb(164,188,74)
	armcolor=make_color_rgb(164,188,74)
	haircolor=make_color_rgb(164,188,74)
	}

	}}
	}else{
	//________________________________________________________________************<<{Skeleton}>>************________________________________________________________________
	if(charArray[charselected,8]==2){
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	nohair=2
	helmanimspr=0
	maskcol=make_color_rgb(220,220,200)
	abilpan=abilpan_skelet_spr
	abilpancd=abilpancd_skelet_spr
	charEquip[charselected,1]=1
	charEquip[charselected,2]=1
	charEquip[charselected,3]=1
	charEquip[charselected,4]=1
	charEquip[charselected,5]=2
	if(maskArray[charArray[charselected,8],2]==0){
	charEquip[charselected,6]=2
	}else{
	charEquip[charselected,6]=3
	}

	with(Me){
	skincolor=make_color_rgb(248,213,185)
	pantcolor=make_color_rgb(59,59,65)
	armcolor=make_color_rgb(69,69,75)
	haircolor=make_color_rgb(101,78,35)
	}}else{

	//YETI
	nohair=2
	helmanimspr=0
	maskcol=make_color_rgb(220,220,200)
	abilpan=abilpan_yeti_spr
	abilpancd=abilpancd_skelet_spr
	charEquip[charselected,1]=1
	charEquip[charselected,2]=6
	charEquip[charselected,3]=8
	charEquip[charselected,4]=1
	charEquip[charselected,5]=2
	if(maskArray[charArray[charselected,8],2]==0){
	charEquip[charselected,6]=2
	}else{
	charEquip[charselected,6]=3
	}

	with(Me){
	skincolor=make_color_rgb(112,112,222)
	pantcolor=c_white
	armcolor=c_white
	haircolor=c_white
	}

	}
	}else{

	//________________________________________________________________************<<{Bee}>>************________________________________________________________________
	if(charArray[charselected,8]==3){
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){

	nohair=2
	helmanimspr=0
	maskcol=make_color_rgb(186,109,31)
	abilpan=abilpan_bee_spr
	abilpancd=abilpancd_bee_spr
	charEquip[charselected,1]=2
	charEquip[charselected,2]=2
	charEquip[charselected,3]=2
	charEquip[charselected,4]=2
	charEquip[charselected,5]=3
	if(maskArray[charArray[charselected,8],2]==0){
	charEquip[charselected,6]=5
	}else{
	charEquip[charselected,6]=6
	}

	with(Me){
	skincolor=make_color_rgb(248,213,185)
	pantcolor=make_color_rgb(51,44,30)
	armcolor=make_color_rgb(186,109,31)
	haircolor=make_color_rgb(101,78,35)
	}}else{

	//BEE Scarecrow
	nohair=0
	helmanimspr=0

	/*
	0 - boots
	1 - pants
	2 - belt
	3 - shirt
	4 - arms
	5 - helm
	6 - wep
	*/

	maskcol=make_color_rgb(116,83,151)
	abilpan=abilpan_scarecrow_spr
	abilpancd=abilpancd_scarecrow_spr
	charEquip[charselected,1]=0
	charEquip[charselected,2]=0
	charEquip[charselected,3]=9
	charEquip[charselected,4]=0
	charEquip[charselected,5]=4
	charEquip[charselected,6]=15

	with(Me){
	skincolor=make_color_rgb(203,168,128)
	pantcolor=make_color_rgb(54,54,146)
	armcolor=make_color_rgb(69,69,75)
	haircolor=make_color_rgb(101,78,35)
	}

	}}else{

	//________________________________________________________________************<<{TREE}>>************________________________________________________________________
	if(charArray[charselected,8]==4){
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){

	nohair=2
	helmanimspr=tree_anim1_spr
	wepmanimspr=tree_anim1_spr
	maskcol=make_color_rgb(85,74,54)
	abilpan=abilpan_tree_spr
	abilpancd=abilpancd_tree_spr
	charEquip[charselected,1]=2
	charEquip[charselected,2]=7
	charEquip[charselected,3]=3
	charEquip[charselected,4]=2
	charEquip[charselected,5]=4
	if(maskArray[charArray[charselected,8],2]==0){
	charEquip[charselected,6]=6
	}else{
	charEquip[charselected,6]=6
	}

	/*
	0 - boots
	1 - pants
	2 - belt
	3 - shirt
	4 - arms
	5 - helm
	6 - wep
	*/

	with(Me){
	skincolor=make_color_rgb(248,213,185)
	pantcolor=make_color_rgb(85,74,54)
	armcolor=make_color_rgb(85,74,54)
	haircolor=make_color_rgb(101,78,35)
	}}else{

	//Pirate
	nohair=1
	helmanimspr=0

	maskcol=make_color_rgb(116,83,151)
	abilpan=abilpan_witch_spr

	abilpancd=abilpancd_tree_spr
	charEquip[charselected,1]=0
	charEquip[charselected,2]=0
	charEquip[charselected,3]=7
	charEquip[charselected,4]=0
	charEquip[charselected,5]=3
	charEquip[charselected,6]=6

	with(Me){
	skincolor=make_color_rgb(248,213,185)
	pantcolor=make_color_rgb(54,54,146)
	armcolor=make_color_rgb(202,155,77)
	haircolor=make_color_rgb(101,78,35)
	}

	}}else{

	//________________________________________________________________************<<{BurgerBoy}>>************________________________________________________________________
	if(charArray[charselected,8]==5){
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){

	nohair=2
	helmanimspr=0
	wepmanimspr=0
	maskcol=make_color_rgb(85,74,54)
	abilpan=abilpan_burger_spr
	abilpancd=abilpancd_burger_spr
	charEquip[charselected,1]=0
	charEquip[charselected,2]=0
	charEquip[charselected,3]=0
	charEquip[charselected,4]=0
	charEquip[charselected,5]=5
	if(maskArray[charArray[charselected,8],2]==0){
	charEquip[charselected,6]=10
	}else{
	charEquip[charselected,6]=10
	}

	/*
	0 - boots
	1 - pants
	2 - belt
	3 - shirt
	4 - arms
	5 - helm
	6 - wep
	*/

	with(Me){
	skincolor=make_color_rgb(248,213,185)
	pantcolor=make_color_rgb(54,54,146)
	armcolor=make_color_rgb(137,42,42)
	haircolor=make_color_rgb(101,78,35)
	}}else{

	//Dessert
	nohair=1
	helmanimspr=0
	wepmanimspr=0
	maskcol=make_color_rgb(85,74,54)
	abilpan=abilpan_burger_alt1_spr
	abilpancd=abilpancd_burger_spr
	charEquip[charselected,1]=0
	charEquip[charselected,2]=0
	charEquip[charselected,3]=0
	charEquip[charselected,4]=0
	charEquip[charselected,5]=5
	if(maskArray[charArray[charselected,8],2]==0){
	charEquip[charselected,6]=11
	}else{
	charEquip[charselected,6]=11
	}

	with(Me){
	skincolor=make_color_rgb(248,213,185)
	pantcolor=make_color_rgb(59,59,65)
	armcolor=make_color_rgb(69,69,75)
	haircolor=make_color_rgb(101,78,35)
	}

	}}else{
	//________________________________________________________________************<<{ROBOT}>>************________________________________________________________________
	if(charArray[charselected,8]==6){
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){

	nohair=2
	helmanimspr=0
	wepmanimspr=0
	maskcol=make_color_rgb(85,74,54)
	abilpan=abilpan_robot_spr
	abilpancd=abilpancd_robot_spr
	charEquip[charselected,1]=0
	charEquip[charselected,2]=4
	charEquip[charselected,3]=6
	charEquip[charselected,4]=0
	charEquip[charselected,5]=6
	if(maskArray[charArray[charselected,8],2]==0){
	charEquip[charselected,6]=12
	}else{
	charEquip[charselected,6]=12
	}

	/*
	0 - boots
	1 - pants
	2 - belt
	3 - shirt
	4 - arms
	5 - helm
	6 - wep
	*/

	with(Me){
	skincolor=make_color_rgb(248,213,185)
	pantcolor=make_color_rgb(65,65,65)
	armcolor=make_color_rgb(95,95,95)
	haircolor=make_color_rgb(95,95,95)
	}}else{

	nohair=2
	helmanimspr=0
	wepmanimspr=0
	maskcol=make_color_rgb(85,74,54)
	abilpan=abilpan_robot_alt1_spr
	abilpancd=abilpancd_robot_spr
	charEquip[charselected,1]=0
	charEquip[charselected,2]=1
	charEquip[charselected,3]=6
	charEquip[charselected,4]=0
	charEquip[charselected,5]=6
	if(maskArray[charArray[charselected,8],2]==0){
	charEquip[charselected,6]=13
	}else{
	charEquip[charselected,6]=13
	}

	/*
	0 - boots
	1 - pants
	2 - belt
	3 - shirt
	4 - arms
	5 - helm
	6 - wep
	*/

	with(Me){
	skincolor=make_color_rgb(248,213,185)
	pantcolor=make_color_rgb(59,59,65)
	armcolor=make_color_rgb(69,69,75)
	haircolor=make_color_rgb(101,78,35)
	}

	}}else{

	//________________________________________________________________************<<{Santa}>>************________________________________________________________________
	if(charArray[charselected,8]==7){
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){

	nohair=1
	helmanimspr=0
	wepmanimspr=0
	maskcol=make_color_rgb(85,74,54)
	abilpan=abilpan_santa_spr
	abilpancd=abilpancd_santa_spr
	charEquip[charselected,1]=0
	charEquip[charselected,2]=9
	charEquip[charselected,3]=10
	charEquip[charselected,4]=0
	charEquip[charselected,5]=8
	if(maskArray[charArray[charselected,8],2]==0){
	charEquip[charselected,6]=16
	}else{
	charEquip[charselected,6]=16
	}

	/*
	0 - boots
	1 - pants
	2 - belt
	3 - shirt
	4 - arms
	5 - helm
	6 - wep
	*/

	with(Me){
	skincolor=make_color_rgb(248,213,185)
	pantcolor=make_color_rgb(166,19,19)
	armcolor=make_color_rgb(166,19,19)
	haircolor=make_color_rgb(101,78,35)
	}}else{

	//King
	nohair=1
	helmanimspr=0
	wepmanimspr=0
	maskcol=make_color_rgb(85,74,54)
	abilpan=abilpan_king_spr
	abilpancd=abilpancd_king_spr
	charEquip[charselected,1]=0
	charEquip[charselected,2]=9
	charEquip[charselected,3]=10
	charEquip[charselected,4]=0
	charEquip[charselected,5]=8
	if(maskArray[charArray[charselected,8],2]==0){
	charEquip[charselected,6]=18
	}else{
	charEquip[charselected,6]=18
	}

	with(Me){
	skincolor=make_color_rgb(248,213,185)
	pantcolor=make_color_rgb(166,19,19)
	armcolor=make_color_rgb(166,19,19)
	haircolor=make_color_rgb(101,78,35)
	}

	}}else{

	//________________________________________________________________************<<{Gingerbread}>>************________________________________________________________________
	if(charArray[charselected,8]==8){
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){

	nohair=2
	helmanimspr=0
	wepmanimspr=0
	maskcol=make_color_rgb(85,74,54)
	abilpan=abilpan_ginger_spr
	abilpancd=abilpancd_ginger_spr
	charEquip[charselected,1]=0
	charEquip[charselected,2]=12
	charEquip[charselected,3]=11
	charEquip[charselected,4]=0
	charEquip[charselected,5]=10
	if(maskArray[charArray[charselected,8],2]==0){
	charEquip[charselected,6]=20
	}else{
	charEquip[charselected,6]=20
	}

	with(Me){
	skincolor=make_color_rgb(248,213,185)
	pantcolor=make_color_rgb(170,104,52)
	armcolor=make_color_rgb(170,104,52)
	haircolor=make_color_rgb(101,78,35)
	}}else{
	//SNOWMAN
	nohair=2
	helmanimspr=0
	wepmanimspr=0
	maskcol=make_color_rgb(85,74,54)
	abilpan=abilpan_snowman_spr
	abilpancd=abilpancd_snowman_spr
	charEquip[charselected,1]=0
	charEquip[charselected,2]=11
	charEquip[charselected,3]=12
	charEquip[charselected,4]=0
	charEquip[charselected,5]=10
	if(maskArray[charArray[charselected,8],2]==0){
	charEquip[charselected,6]=0
	}else{
	charEquip[charselected,6]=0
	}

	/*
	0 - boots
	1 - pants
	2 - belt
	3 - shirt
	4 - arms
	5 - helm
	6 - wep
	*/

	with(Me){
	skincolor=make_color_rgb(248,213,185)
	pantcolor=make_color_rgb(250,250,250)
	armcolor=make_color_rgb(250,250,250)
	haircolor=make_color_rgb(101,78,35)
	}
	}}else{

	//________________________________________________________________************<<{}>>************________________________________________________________________
	if(charArray[charselected,8]==7){
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){

	nohair=2
	helmanimspr=0
	wepmanimspr=0
	maskcol=make_color_rgb(85,74,54)
	abilpan=abilpan_burger_spr
	abilpancd=abilpancd_burger_spr
	charEquip[charselected,1]=0
	charEquip[charselected,2]=0
	charEquip[charselected,3]=0
	charEquip[charselected,4]=0
	charEquip[charselected,5]=5
	if(maskArray[charArray[charselected,8],2]==0){
	charEquip[charselected,6]=16
	}else{
	charEquip[charselected,6]=17
	}

	/*
	0 - boots
	1 - pants
	2 - belt
	3 - shirt
	4 - arms
	5 - helm
	6 - wep
	*/

	with(Me){
	skincolor=make_color_rgb(248,213,185)
	pantcolor=make_color_rgb(54,54,146)
	armcolor=make_color_rgb(137,42,42)
	haircolor=make_color_rgb(101,78,35)
	}}else{

	//Robo alt
	nohair=2
	helmanimspr=0
	wepmanimspr=0
	maskcol=make_color_rgb(85,74,54)
	abilpan=abilpan_burger_spr
	abilpancd=abilpancd_burger_spr
	charEquip[charselected,1]=0
	charEquip[charselected,2]=0
	charEquip[charselected,3]=0
	charEquip[charselected,4]=0
	charEquip[charselected,5]=5
	if(maskArray[charArray[charselected,8],2]==0){
	charEquip[charselected,6]=10
	}else{
	charEquip[charselected,6]=10
	}

	with(Me){
	skincolor=make_color_rgb(248,213,185)
	pantcolor=make_color_rgb(54,54,146)
	armcolor=make_color_rgb(137,42,42)
	haircolor=make_color_rgb(101,78,35)
	}

	}}else{
	if(charArray[charselected,8]==5){
	//Sun
	nohair=2
	helmanimspr=0
	maskcol=make_color_rgb(202,155,77)
	abilpan=abilpan_phar_spr
	abilpancd=abilpancd_phar_spr
	charEquip[charselected,1]=2
	charEquip[charselected,2]=2
	charEquip[charselected,3]=2
	charEquip[charselected,4]=2
	charEquip[charselected,5]=3
	if(maskArray[charArray[charselected,8],2]==0){
	charEquip[charselected,6]=5
	}else{
	charEquip[charselected,6]=6
	}

	with(Me){
	skincolor=make_color_rgb(248,213,185)
	pantcolor=make_color_rgb(220,220,200)
	armcolor=make_color_rgb(220,220,200)
	haircolor=make_color_rgb(101,78,35)
	}
	}else{
	if(charArray[charselected,8]==5){
	//Empiric
	nohair=0
	helmanimspr=0
	maskcol=make_color_rgb(75,75,82)
	abilpan=abilpan_emp_spr
	abilpancd=abilpancd_emp_spr
	charEquip[charselected,1]=1
	charEquip[charselected,2]=1
	charEquip[charselected,3]=1
	charEquip[charselected,4]=1
	charEquip[charselected,5]=4
	charEquip[charselected,6]=0

	with(Me){
	skincolor=make_color_rgb(248,213,185)
	pantcolor=make_color_rgb(59,59,65)
	armcolor=make_color_rgb(69,69,75)
	haircolor=make_color_rgb(101,78,35)
	}
	}else{
	//Jester
	if(charArray[charselected,8]==5){
	nohair=0
	helmanimspr=0
	maskcol=make_color_rgb(220,220,200)
	abilpan=abilpan_jest_spr
	abilpancd=abilpancd_jest_spr
	charEquip[charselected,1]=1
	charEquip[charselected,2]=1
	charEquip[charselected,3]=3
	charEquip[charselected,4]=1
	charEquip[charselected,5]=5
	if(maskArray[charArray[charselected,8],2]==0){
	charEquip[charselected,6]=7
	}else{
	charEquip[charselected,6]=7
	}

	with(Me){
	skincolor=make_color_rgb(248,213,185)
	pantcolor=make_color_rgb(36,109,36)
	armcolor=make_color_rgb(44,16,73)
	haircolor=make_color_rgb(101,78,35)
	}
	}else{
	//Dragon
	if(charArray[charselected,8]==6){
	nohair=0
	helmanimspr=0
	maskcol=make_color_rgb(63,180,63)
	abilpan=abilpan_jest_spr
	abilpancd=abilpancd_jest_spr
	charEquip[charselected,1]=1
	charEquip[charselected,2]=1
	charEquip[charselected,3]=5
	charEquip[charselected,4]=1
	charEquip[charselected,5]=6
	if(maskArray[charArray[charselected,8],2]==0){
	charEquip[charselected,6]=0
	}else{
	charEquip[charselected,6]=0
	}

	with(Me){
	skincolor=make_color_rgb(248,213,185)
	pantcolor=make_color_rgb(46,129,46)
	armcolor=make_color_rgb(46,129,46)
	haircolor=make_color_rgb(101,78,35)
	}
	}else{
	//Robo
	if(charArray[charselected,8]==7){
	nohair=1
	helmanimspr=0
	maskcol=make_color_rgb(136,60,42)
	abilpan=abilpan_jest_spr
	abilpancd=abilpancd_jest_spr
	charEquip[charselected,1]=1
	charEquip[charselected,2]=3
	charEquip[charselected,3]=6
	charEquip[charselected,4]=1
	charEquip[charselected,5]=8
	if(maskArray[charArray[charselected,8],2]==0){
	charEquip[charselected,6]=0
	}else{
	charEquip[charselected,6]=0
	}

	with(Me){
	skincolor=make_color_rgb(80,80,80)
	pantcolor=make_color_rgb(66,27,16)
	armcolor=make_color_rgb(66,27,16)
	haircolor=make_color_rgb(101,78,35)
	skincolor=make_color_rgb(248,213,185)
	}
	}

	/*
	0 - boots
	1 - pants
	2 - belt
	3 - shirt
	4 - arms
	5 - helm
	6 - wep
	*/

	}
	}}}
	}}}}}}}}}}



}
