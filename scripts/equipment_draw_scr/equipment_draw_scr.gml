function equipment_draw_scr() {
	if(equipopt>=1){
	//________________________________________________________________************<<{INVENTORY}>>************________________________________________________________________
	if(equipopt==1){
	itemdrawtick=floor(itemselected * 0.25)*4
	//Inventory Background
	draw_sprite(actchoose_spr,17,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ))
	//Page
	if(itemselected-3<10){
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+98,__view_get( e__VW.YView, 0 )+76,string_hash_to_newline(itemselected-3),1,1000,0.5,0.5,0)

	}else{
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+96,__view_get( e__VW.YView, 0 )+76,string_hash_to_newline(itemselected-3),1,1000,0.5,0.5,0)
	}
	if(itemtotal<10){
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+114,__view_get( e__VW.YView, 0 )+76,string_hash_to_newline(itemtotal),1,1000,0.5,0.5,0)
	}else{
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+116,__view_get( e__VW.YView, 0 )+76,string_hash_to_newline(itemtotal),1,1000,0.5,0.5,0)
	}
	//Inventory Selector
	draw_sprite(ui_equipment_spr,10,__view_get( e__VW.XView, 0 )+7,__view_get( e__VW.YView, 0 )+71+((itemselected-itemdrawtick)*10))
	if(itemtotal>=1){
	//______________________***<<{Inventory Loop}>***______________________
	ypos=0
	if(itemdrawtick>itemtotal){
	itemtotalsafety=itemtotal
	}else{
	itemtotalsafety=itemdrawtick
	}
	for(i=itemdrawtick-4;i<itemtotalsafety;i+=1){
	//SLOT EQUIPED
	if(itemsArray[i+4,16]==itemsArray[1,16]||itemsArray[i+4,16]==itemsArray[2,16]||itemsArray[i+4,16]==itemsArray[3,16]){
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+95,__view_get( e__VW.YView, 0 )+86+(ypos*10),string_hash_to_newline("Slot"),1,1000,0.5,0.5,0)
	if(itemsArray[i+4,16]==itemsArray[1,16]){
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+117,__view_get( e__VW.YView, 0 )+86+(ypos*10),string_hash_to_newline("1"),1,1000,0.5,0.5,0)
	if(i+4==itemselected){
	draw_sprite(ui_equipment_spr,11,__view_get( e__VW.XView, 0 )+166-9,__view_get( e__VW.YView, 0 )+13)
	}}else{
	if(itemsArray[i+4,16]==itemsArray[2,16]){
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+117,__view_get( e__VW.YView, 0 )+86+(ypos*10),string_hash_to_newline("2"),1,1000,0.5,0.5,0)
	if(i+4==itemselected){
	draw_sprite(ui_equipment_spr,11,__view_get( e__VW.XView, 0 )+166-9,__view_get( e__VW.YView, 0 )+23)
	}}else{
	if(itemsArray[i+4,16]==itemsArray[3,16]){
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+117,__view_get( e__VW.YView, 0 )+86+(ypos*10),string_hash_to_newline("3"),1,1000,0.5,0.5,0)
	if(i+4==itemselected){
	draw_sprite(ui_equipment_spr,11,__view_get( e__VW.XView, 0 )+166-9,__view_get( e__VW.YView, 0 )+33)
	}}}}}

	//***Rarity and name***
	draw_text_ext_transformed_colour(__view_get( e__VW.XView, 0 )+31,__view_get( e__VW.YView, 0 )+85+(ypos*10),string_hash_to_newline(itemsArray[4+i,15]),1,1000,0.5,0.5,0,itemsArray[4+i,14],itemsArray[4+i,14],itemsArray[4+i,14],itemsArray[4+i,14],1)
	//Item spr
	draw_sprite(equipment_spr,itemsArray[4+i,0],__view_get( e__VW.XView, 0 )+18,__view_get( e__VW.YView, 0 )+84+(ypos*10))
	ypos+=1
	}

	//______________________***<<{NOT IN Inventory loop}>***______________________

	}}else{
	//OTHER Background
	draw_sprite(actchoose_spr,18,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ))
	}

	//________________________________________________________________************<<{EQUIPMENT SLOTS 1,2,3}>>************________________________________________________________________
	for(i=0;i<3;i+=1){
	if(itemsArray[i+1,0]>0){
	draw_text_ext_transformed_colour(__view_get( e__VW.XView, 0 )+179,__view_get( e__VW.YView, 0 )+27+(i*10),string_hash_to_newline(itemsArray[i+1,15]),1,1000,0.5,0.5,0,itemsArray[i+1,14],itemsArray[i+1,14],itemsArray[i+1,14],itemsArray[i+1,14],1)
	draw_sprite(equipment_spr,itemsArray[i+1,0],__view_get( e__VW.XView, 0 )+166,__view_get( e__VW.YView, 0 )+26+(i*10))
	}}
	//selected
	if(equipopt==2){
	draw_sprite(ui_equipment_spr,equipopttwo,__view_get( e__VW.XView, 0 )+27,__view_get( e__VW.YView, 0 )+72)
	}else{
	//equip
	if(equipopt==3){
	draw_sprite(ui_equipment_spr,4+equipopttwo,__view_get( e__VW.XView, 0 )+27,__view_get( e__VW.YView, 0 )+72)
	if(equipopttwo==0){
	draw_sprite(ui_equipment_spr,11,__view_get( e__VW.XView, 0 )+166-9,__view_get( e__VW.YView, 0 )+13)
	}else{
	if(equipopttwo==1){
	draw_sprite(ui_equipment_spr,11,__view_get( e__VW.XView, 0 )+166-9,__view_get( e__VW.YView, 0 )+23)
	}else{
	if(equipopttwo==2){
	draw_sprite(ui_equipment_spr,11,__view_get( e__VW.XView, 0 )+166-9,__view_get( e__VW.YView, 0 )+33)
	}}}
	}else{
	//sell
	if(equipopt==4){
	draw_sprite(ui_equipment_spr,8+equipopttwo,__view_get( e__VW.XView, 0 )+27,__view_get( e__VW.YView, 0 )+72)
	if(equipopttwo==1){
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+71,__view_get( e__VW.YView, 0 )+97,string_hash_to_newline(floor(itemsArray[itemselected,1]*0.5)),1,1000,0.5,0.5,0)
	}}else{

	}}}


	//________________________________________________________________************<<{TOTAL EQUIP STATS}>>************________________________________________________________________
	xpos=170
	ypos=76
	for(a=0;a<10;a+=1){
	if(a==0||a==1||a==2||a==3||a==4){
	//speed
	if(a==4){
	if(itemsArray[0,a+2]>1){
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+xpos,__view_get( e__VW.YView, 0 )+ypos,string_hash_to_newline(floor(((itemsArray[0,a+2]-1)-(itemsArray[0,13]))*100)+100),1,1000,0.5,0.5,0)
	}else{
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+xpos,__view_get( e__VW.YView, 0 )+ypos,string_hash_to_newline(itemsArray[0,a+2]+99),1,1000,0.5,0.5,0)
	}}else{
	//health
	if(a==0){
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+xpos,__view_get( e__VW.YView, 0 )+ypos,string_hash_to_newline(floor(itemsArray[0,a+2]-itemsArray[0,12])+12),1,1000,0.5,0.5,0)
	}else{
	//mana
	if(a==1){
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+xpos,__view_get( e__VW.YView, 0 )+ypos,string_hash_to_newline(itemsArray[0,a+2]+100),1,1000,0.5,0.5,0)
	}else{
	//damage manaregen
	if(itemsArray[0,a+2]>1){
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+xpos,__view_get( e__VW.YView, 0 )+ypos,string_hash_to_newline(floor((itemsArray[0,a+2]-1)*100)+100),1,1000,0.5,0.5,0)
	}else{
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+xpos,__view_get( e__VW.YView, 0 )+ypos,string_hash_to_newline(itemsArray[0,a+2]+99),1,1000,0.5,0.5,0)
	}
	}}}}else{
	//all others
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+xpos,__view_get( e__VW.YView, 0 )+ypos,string_hash_to_newline(itemsArray[0,a+2]),1,1000,0.5,0.5,0)
	}
	ypos+=10
	if(a==4){
	xpos=224
	ypos=76
	}}

	//________________________________________________________________************<<{Selected ITEM}>>************________________________________________________________________
	if(itemtotal>=1){
	draw_text_ext_transformed_colour(__view_get( e__VW.XView, 0 )+31,__view_get( e__VW.YView, 0 )+28,string_hash_to_newline(itemsArray[itemselected,15]),1,1000,0.5,0.5,0,itemsArray[itemselected,14],itemsArray[itemselected,14],itemsArray[itemselected,14],itemsArray[itemselected,14],1)
	draw_sprite(equipment_spr,itemsArray[itemselected,0],__view_get( e__VW.XView, 0 )+18,__view_get( e__VW.YView, 0 )+27)
	xpos=20
	ypos=40
	xposnumbers=0
	for(a=2;a<14;a+=1){
	if(itemsArray[itemselected,a]!=0){
	if(a==2){
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+xpos,__view_get( e__VW.YView, 0 )+ypos,string_hash_to_newline("HEALTH"),1,1000,0.5,0.5,0)
	}else{
	if(a==3){
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+xpos,__view_get( e__VW.YView, 0 )+ypos,string_hash_to_newline("MANA"),1,1000,0.5,0.5,0)
	}else{
	if(a==4){
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+xpos,__view_get( e__VW.YView, 0 )+ypos,string_hash_to_newline("DAMAGE"),1,1000,0.5,0.5,0)
	}else{
	if(a==5){
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+xpos,__view_get( e__VW.YView, 0 )+ypos,string_hash_to_newline("MP regen"),1,1000,0.5,0.5,0)
	}else{
	if(a==6){
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+xpos,__view_get( e__VW.YView, 0 )+ypos,string_hash_to_newline("SPEED"),1,1000,0.5,0.5,0)
	}else{
	if(a==7){
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+xpos,__view_get( e__VW.YView, 0 )+ypos,string_hash_to_newline("XP"),1,1000,0.5,0.5,0)
	}else{
	if(a==8){
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+xpos,__view_get( e__VW.YView, 0 )+ypos,string_hash_to_newline("GOLD"),1,1000,0.5,0.5,0)
	}else{
	if(a==9){
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+xpos,__view_get( e__VW.YView, 0 )+ypos,string_hash_to_newline("LOOT"),1,1000,0.5,0.5,0)
	}else{
	if(a==10){
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+xpos,__view_get( e__VW.YView, 0 )+ypos,string_hash_to_newline("BLOCK"),1,1000,0.5,0.5,0)
	}else{
	if(a==11){
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+xpos,__view_get( e__VW.YView, 0 )+ypos,string_hash_to_newline("HPSTEAL"),1,1000,0.5,0.5,0)
	}else{
	if(a==12){
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+xpos,__view_get( e__VW.YView, 0 )+ypos,string_hash_to_newline("HP LOSS"),1,1000,0.5,0.5,0)
	}else{
	if(a==13){
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+xpos,__view_get( e__VW.YView, 0 )+ypos,string_hash_to_newline("SLOW"),1,1000,0.5,0.5,0)
	}else{

	}}}}}}}}}}}
	}
	if(a==4||a==5||a==6){
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+xpos+36,__view_get( e__VW.YView, 0 )+ypos,string_hash_to_newline(itemsArray[itemselected,a]*100),1,1000,0.5,0.5,0)
	}else{
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+xpos+36,__view_get( e__VW.YView, 0 )+ypos,string_hash_to_newline(itemsArray[itemselected,a]),1,1000,0.5,0.5,0)
	}
	xposnumbers+=1
	if(xposnumbers==3){
	ypos=40
	xpos+=54
	}else{
	ypos+=10
	}}}
	}
	//________________________________________________________________************<<{STATIC TEXT}>>************________________________________________________________________
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+54,__view_get( e__VW.YView, 0 )+18,string_hash_to_newline("SELECTED"),1,1000,0.5,0.5,0)
	if(equipopt==1){
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+52,__view_get( e__VW.YView, 0 )+76,string_hash_to_newline("INVENTORY"),1,1000,0.5,0.5,0)
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+105,__view_get( e__VW.YView, 0 )+76,string_hash_to_newline("of"),1,1000,0.5,0.5,0)
	}
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+135,__view_get( e__VW.YView, 0 )+28,string_hash_to_newline("SLOT 1"),1,1000,0.5,0.5,0)
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+135,__view_get( e__VW.YView, 0 )+28+10*(1),string_hash_to_newline("SLOT 2"),1,1000,0.5,0.5,0)
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+135,__view_get( e__VW.YView, 0 )+28+10*(2),string_hash_to_newline("SLOT 3"),1,1000,0.5,0.5,0)
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+166+2,__view_get( e__VW.YView, 0 )+18,string_hash_to_newline("Equipment"),1,1000,0.5,0.5,0)
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+163+4,__view_get( e__VW.YView, 0 )+66,string_hash_to_newline("Stat Total"),1,1000,0.5,0.5,0)

	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+133,__view_get( e__VW.YView, 0 )+76,string_hash_to_newline("Health"),1,1000,0.5,0.5,0)
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+133,__view_get( e__VW.YView, 0 )+76+10,string_hash_to_newline("Mana"),1,1000,0.5,0.5,0)
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+133,__view_get( e__VW.YView, 0 )+76+10*2,string_hash_to_newline("Damage"),1,1000,0.5,0.5,0)
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+133,__view_get( e__VW.YView, 0 )+76+10*3,string_hash_to_newline("MP regen"),1,1000,0.5,0.5,0)
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+133,__view_get( e__VW.YView, 0 )+76+10*4,string_hash_to_newline("Speed"),1,1000,0.5,0.5,0)

	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+188,__view_get( e__VW.YView, 0 )+76,string_hash_to_newline("Gold"),1,1000,0.5,0.5,0)
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+188,__view_get( e__VW.YView, 0 )+76+10,string_hash_to_newline("Xp"),1,1000,0.5,0.5,0)
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+188,__view_get( e__VW.YView, 0 )+76+10*2,string_hash_to_newline("Loot"),1,1000,0.5,0.5,0)
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+188,__view_get( e__VW.YView, 0 )+76+10*3,string_hash_to_newline("Block"),1,1000,0.5,0.5,0)
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+188,__view_get( e__VW.YView, 0 )+76+10*4,string_hash_to_newline("Hp Steal"),1,1000,0.5,0.5,0)

	}




}
