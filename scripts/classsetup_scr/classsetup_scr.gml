function classsetup_scr(argument0) {
	/*
	0 - boots
	1 - pants
	2 - belt
	3 - shirt
	4 - arms
	5 - helm
	*/

	//******************************{Pumpkin=0}******************************//
	if(argument0==0){
	//Pants
	charEquip[charselected,1]=0
	//Arms
	charEquip[charselected,3]=0
	//Shirt
	charEquip[charselected,4]=0
	//Wep
	charEquip[charselected,6]=0

	}else{
	//******************************{Archer=1}******************************//
	if(argument0==1){
	//Pants
	charEquip[charselected,1]=1
	//Arms
	charEquip[charselected,3]=1
	//Shirt
	charEquip[charselected,4]=1
	//Wep
	charEquip[charselected,6]=0

	}else{
	//******************************{Mage=2}******************************//
	if(argument0==2){
	//Pants
	charEquip[charselected,1]=2
	//Arms
	charEquip[charselected,3]=2
	//Shirt
	charEquip[charselected,4]=2
	//Wep
	charEquip[charselected,6]=0

	}}}



}
