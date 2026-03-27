function equipment_endingdraw_scr() {
	if(pause==4){
	//________________________________________________________________************<<{Backgrounds}>>************________________________________________________________________
	//GOAL
	if(chestopt==1){
	//Background
	draw_sprite(actchoose_spr,19,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ))
	}else{
	//BOSS
	if(chestopt==2){
	//Background
	draw_sprite(actchoose_spr,20,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ))
	}else{
	//BOTH
	if(chestopt==3){
	//Background
	draw_sprite(actchoose_spr,20,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ))
	}}}
	//________________________________________________________________************<<{Menu Prompts}>>************________________________________________________________________
	if(ending<4){
	//GOAL
	if(chestopt==1){
	draw_sprite(equip_treasureback_spr,0,__view_get( e__VW.XView, 0 )+144,__view_get( e__VW.YView, 0 )+36)
	//menu prompt
	draw_sprite(ui_equipment_spr,15,__view_get( e__VW.XView, 0 )+27,__view_get( e__VW.YView, 0 )+72)
	}else{
	//BOSS
	if(chestopt==2){
	draw_sprite(equip_treasureback_spr,0,__view_get( e__VW.XView, 0 )+198,__view_get( e__VW.YView, 0 )+36)
	//menu prompt
	draw_sprite(ui_equipment_spr,16,__view_get( e__VW.XView, 0 )+27,__view_get( e__VW.YView, 0 )+72)
	}else{
	//BOTH
	if(chestopt==3){
	draw_sprite(equip_treasureback_spr,0,__view_get( e__VW.XView, 0 )+144,__view_get( e__VW.YView, 0 )+36)
	draw_sprite(equip_treasureback_spr,0,__view_get( e__VW.XView, 0 )+198,__view_get( e__VW.YView, 0 )+36)
	//menu prompt
	draw_sprite(ui_equipment_spr,14,__view_get( e__VW.XView, 0 )+27,__view_get( e__VW.YView, 0 )+72)
	}}}}
	//________________________________________________________________************<<{Chest Animation}>>************________________________________________________________________
	if(ending==4||ending==5){
	//Item remember


	//GOAL
	if(chestopt==1){
	draw_sprite(equip_treasureback_spr,chestticktwo,__view_get( e__VW.XView, 0 )+144,__view_get( e__VW.YView, 0 )+36)
	if(chesttickthree>0){
	draw_sprite(equipment_spr,itemsArray[itemselected,0],__view_get( e__VW.XView, 0 )+144+11,__view_get( e__VW.YView, 0 )+36+22-chesttick)
	}
	draw_sprite(equip_treasure_spr,chestticktwo,__view_get( e__VW.XView, 0 )+144,__view_get( e__VW.YView, 0 )+36)
	}else{
	//BOSS
	if(chestopt==2){
	draw_sprite(equip_treasureback_spr,chestticktwo,__view_get( e__VW.XView, 0 )+198,__view_get( e__VW.YView, 0 )+36)
	if(chesttickthree>0){
	draw_sprite(equipment_spr,itemsArray[itemselected,0],__view_get( e__VW.XView, 0 )+198+11,__view_get( e__VW.YView, 0 )+36+22-chesttick)
	}
	draw_sprite(equip_treasure_spr,chestticktwo,__view_get( e__VW.XView, 0 )+198,__view_get( e__VW.YView, 0 )+36)
	}else{
	//BOTH
	if(chestopt==3){
	if(chesttimes==0){
	draw_sprite(equip_treasureback_spr,chestticktwo,__view_get( e__VW.XView, 0 )+144,__view_get( e__VW.YView, 0 )+36)
	if(chesttickthree>0&&justsold==0){
	draw_sprite(equipment_spr,itemsArray[itemselected,0],__view_get( e__VW.XView, 0 )+144+11,__view_get( e__VW.YView, 0 )+36+22-chesttick)
	}
	draw_sprite(equip_treasure_spr,chestticktwo,__view_get( e__VW.XView, 0 )+144,__view_get( e__VW.YView, 0 )+36)
	draw_sprite(equip_treasureback_spr,0,__view_get( e__VW.XView, 0 )+198,__view_get( e__VW.YView, 0 )+36)
	}else{
	draw_sprite(equip_treasureback_spr,chestticktwo,__view_get( e__VW.XView, 0 )+198,__view_get( e__VW.YView, 0 )+36)
	if(chesttickthree>0){
	draw_sprite(equipment_spr,itemsArray[itemselected,0],__view_get( e__VW.XView, 0 )+198+11,__view_get( e__VW.YView, 0 )+36+22-chesttick)
	}
	draw_sprite(equip_treasure_spr,chestticktwo,__view_get( e__VW.XView, 0 )+198,__view_get( e__VW.YView, 0 )+36)
	draw_sprite(equip_treasureback_spr,4,__view_get( e__VW.XView, 0 )+144,__view_get( e__VW.YView, 0 )+36)
	}
	if(justsold==1){
	draw_sprite(ui_equipment_spr,19+equipopttwo,__view_get( e__VW.XView, 0 )+27,__view_get( e__VW.YView, 0 )+72)
	}
	}}}
	//________________________________________________________________************<<{Chest Animation}>>************________________________________________________________________
	if(ending==5&&justsold==0){
	if(chestopt==3){
	if(chesttimes==0){
	draw_sprite(ui_equipment_spr,19+equipopttwo,__view_get( e__VW.XView, 0 )+27,__view_get( e__VW.YView, 0 )+72)
	}else{
	draw_sprite(ui_equipment_spr,17+equipopttwo,__view_get( e__VW.XView, 0 )+27,__view_get( e__VW.YView, 0 )+72)
	}}else{
	draw_sprite(ui_equipment_spr,17+equipopttwo,__view_get( e__VW.XView, 0 )+27,__view_get( e__VW.YView, 0 )+72)
	}
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
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+xpos,__view_get( e__VW.YView, 0 )+ypos,string_hash_to_newline("MP REGEN"),1,1000,0.5,0.5,0)
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
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+xpos,__view_get( e__VW.YView, 0 )+ypos,string_hash_to_newline("HP STEAL"),1,1000,0.5,0.5,0)
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
	}}}}}else{
	//________________________________________________________________************<<{Inven Full}>>************________________________________________________________________
	if(ending==6){
	if(chestopt==1){
	draw_sprite(equip_treasureback_spr,0,__view_get( e__VW.XView, 0 )+144,__view_get( e__VW.YView, 0 )+36)
	}else{
	if(chestopt==2){
	draw_sprite(equip_treasureback_spr,0,__view_get( e__VW.XView, 0 )+198,__view_get( e__VW.YView, 0 )+36)
	}else{
	if(chestopt==3){
	draw_sprite(equip_treasureback_spr,0,__view_get( e__VW.XView, 0 )+144,__view_get( e__VW.YView, 0 )+36)
	draw_sprite(equip_treasureback_spr,0,__view_get( e__VW.XView, 0 )+198,__view_get( e__VW.YView, 0 )+36)
	}}
	}
	draw_sprite(ui_equipment_spr,21+equipopttwo,__view_get( e__VW.XView, 0 )+27,__view_get( e__VW.YView, 0 )+72)
	}

	}}



}
