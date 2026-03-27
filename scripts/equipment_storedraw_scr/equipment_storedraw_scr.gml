function equipment_storedraw_scr() {
	if(equipopt==0){
	drawxpos=__view_get( e__VW.XView, 0 )
	drawypos=__view_get( e__VW.Object, 0 )
	//Background
	draw_sprite(actchoose_spr,23,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ))
	draw_sprite(ui_equipment_spr,23+equipopttwo,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ))
	}else{
	//________________________________________________________________************<<{EQUIPMENT STORE}>>************________________________________________________________________
	if(equipopt==1||equipopt==3){

	//Background
	draw_sprite(actchoose_spr,24,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ))

	if(equipopt==1){
	//Inventory Selector
	draw_sprite(ui_equipment_spr,28,__view_get( e__VW.XView, 0 )+7,__view_get( e__VW.YView, 0 )+21+((equipopttwo)*10))

	for(a=0;a<9;a+=1){
	//***Rarity and name***
	draw_text_ext_transformed_colour(__view_get( e__VW.XView, 0 )+31,__view_get( e__VW.YView, 0 )+35+(a*10),storeArray[a,15],1,1000,0.5,0.5,0,storeArray[a,14],storeArray[a,14],storeArray[a,14],storeArray[a,14],1)
	//Item spr
	draw_sprite(equipment_spr,storeArray[a,0],__view_get( e__VW.XView, 0 )+18,__view_get( e__VW.YView, 0 )+34+(a*10))
	//Worth
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+98,__view_get( e__VW.YView, 0 )+36+(a*10),storeArray[a,1],1,1000,0.5,0.5,0)
	}}else{

	//Buy confirm
	draw_sprite(ui_equipment_spr,26+equipoptthree,__view_get( e__VW.XView, 0 )+149,__view_get( e__VW.YView, 0 )+78)
	if(equipoptthree==1){
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+149+42,__view_get( e__VW.YView, 0 )+78+25,storeArray[equipopttwo,1],1,1000,0.5,0.5,0)
	}}

	//______________________________________________________************<<{Selected ITEM}>>************______________________________________________________
	if(itemtotal>=1){
	draw_text_ext_transformed_colour(__view_get( e__VW.XView, 0 )+31+114,__view_get( e__VW.YView, 0 )+28,storeArray[equipopttwo,15],1,1000,0.5,0.5,0,storeArray[equipopttwo,14],storeArray[equipopttwo,14],storeArray[equipopttwo,14],storeArray[equipopttwo,14],1)
	draw_sprite(equipment_spr,storeArray[equipopttwo,0],__view_get( e__VW.XView, 0 )+18+114,__view_get( e__VW.YView, 0 )+27)
	xpos=20+114
	ypos=40
	xposnumbers=0
	for(a=2;a<14;a+=1){
	if(storeArray[equipopttwo,a]!=0){
	if(a==2){
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+xpos,__view_get( e__VW.YView, 0 )+ypos,"HEALTH",1,1000,0.5,0.5,0)
	}else{
	if(a==3){
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+xpos,__view_get( e__VW.YView, 0 )+ypos,"MANA",1,1000,0.5,0.5,0)
	}else{
	if(a==4){
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+xpos,__view_get( e__VW.YView, 0 )+ypos,"DAMAGE",1,1000,0.5,0.5,0)
	}else{
	if(a==5){
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+xpos,__view_get( e__VW.YView, 0 )+ypos,"MP REGEN",1,1000,0.5,0.5,0)
	}else{
	if(a==6){
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+xpos,__view_get( e__VW.YView, 0 )+ypos,"SPEED",1,1000,0.5,0.5,0)
	}else{
	if(a==7){
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+xpos,__view_get( e__VW.YView, 0 )+ypos,"XP",1,1000,0.5,0.5,0)
	}else{
	if(a==8){
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+xpos,__view_get( e__VW.YView, 0 )+ypos,"GOLD",1,1000,0.5,0.5,0)
	}else{
	if(a==9){
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+xpos,__view_get( e__VW.YView, 0 )+ypos,"LOOT",1,1000,0.5,0.5,0)
	}else{
	if(a==10){
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+xpos,__view_get( e__VW.YView, 0 )+ypos,"BLOCK",1,1000,0.5,0.5,0)
	}else{
	if(a==11){
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+xpos,__view_get( e__VW.YView, 0 )+ypos,"HPSTEAL",1,1000,0.5,0.5,0)
	}else{
	if(a==12){
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+xpos,__view_get( e__VW.YView, 0 )+ypos,"HP LOSS",1,1000,0.5,0.5,0)
	}else{
	if(a==13){
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+xpos,__view_get( e__VW.YView, 0 )+ypos,"SLOW",1,1000,0.5,0.5,0)
	}else{

	}}}}}}}}}}}
	}
	if(a==4||a==5||a==6){
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+xpos+36,__view_get( e__VW.YView, 0 )+ypos,storeArray[equipopttwo,a]*100,1,1000,0.5,0.5,0)
	}else{
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+xpos+36,__view_get( e__VW.YView, 0 )+ypos,storeArray[equipopttwo,a],1,1000,0.5,0.5,0)
	}
	xposnumbers+=1
	if(xposnumbers==3){
	ypos=40
	xpos+=54
	}else{
	ypos+=10
	}}}
	}

	}else{
	//________________________________________________________________************<<{MASK STORE}>>************________________________________________________________________
	if(equipopt==2){
	//Background
	draw_sprite(actchoose_spr,25,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ))
	}else{
	//________________________________________________________________************<<{MASK STORE}>>************________________________________________________________________
	if(equipopt==3){

	}}}
	}

	//ALWAYS
	//Gold
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+220,__view_get( e__VW.YView, 0 )+125,charArray[charselected,11],1,1000,0.5,0.5,0)


	//________________________________________________________________************<<{STATIC TEXT}>>************________________________________________________________________
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+60,__view_get( e__VW.YView, 0 )+28-5,string_hash_to_newline("Store"),1,1000,0.5,0.5,0)
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+168,__view_get( e__VW.YView, 0 )+18,string_hash_to_newline("Selected"),1,1000,0.5,0.5,0)
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+218,__view_get( e__VW.YView, 0 )+115,string_hash_to_newline("Gold"),1,1000,0.5,0.5,0)
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+101,__view_get( e__VW.YView, 0 )+30-5,string_hash_to_newline("Price"),1,1000,0.5,0.5,0)




}
