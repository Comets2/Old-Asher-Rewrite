function drawforme_scr() {
	if(room!=room4&&Me.dead==0&&room!=Overworld_rm){
	if(pause==0){

	draw_sprite(levelbar_spr,0,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ))

	//Mana
	memana=(Me.mana/Me.manatotal)*29
	e=0
	for(i=0;i<memana;i+=1){
	e+=1
	if(i==0||i==28){
	draw_sprite(manabar_spr, 0, __view_get( e__VW.XView, 0 )+33+e, __view_get( e__VW.YView, 0 )+15)
	}else{
	draw_sprite(manabar_spr, 1, __view_get( e__VW.XView, 0 )+33+e, __view_get( e__VW.YView, 0 )+15)
	}}
	draw_sprite(manabarover_spr,0,__view_get( e__VW.XView, 0 )+34,__view_get( e__VW.YView, 0 )+15)

	leveldraw=maskArray[charArray[charselected,8],1]/(10+(maskArray[charArray[charselected,8],0]*10))
	draw_sprite(experiences_spr,leveldraw*71,(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2)-35,(__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ))-2)

	if(debug==1){
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+80, __view_get( e__VW.YView, 0 )+100,string_hash_to_newline(fps_real),1,100,0.5,0.5,0)
	}

	//Health Outlines
	e=-4
	f=4
	for(i=0;i<Me.hptotal/4;i+=1){
	e+=6
	draw_sprite(life, 0, __view_get( e__VW.XView, 0 )+e, __view_get( e__VW.YView, 0 )+f);
	if(i==4){
	e=-4
	f=11
	}}

	//Health
	e=-4
	f=4
	for(i=0;i<Me.hp/4;i+=1){
	e+=6
	if(i+1>=(Me.hp/4)){
	mehealth=(Me.hp-i*4)
	draw_sprite(life, mehealth, __view_get( e__VW.XView, 0 )+e, __view_get( e__VW.YView, 0 )+f);
	}else{
	draw_sprite(life, 4, __view_get( e__VW.XView, 0 )+e, __view_get( e__VW.YView, 0 )+f);
	}
	if(i==4){
	e=-4
	f=11
	}}

	//TIMER BOSS 1
	if(instance_exists(enemytarget)&&enemytarget!=0){
	draw_sprite(levelbar_spr,2,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-96,__view_get( e__VW.YView, 0 ))
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-25,__view_get( e__VW.YView, 0 )+9,string_hash_to_newline(enemytarget.hp-enemytarget.hpbuffer),1,100,0.5,0.5,0)

	//Timer
	if(floor((timertime)/30 mod 60)<10){
	draw_text_ext_transformed((__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ))-96+42,__view_get( e__VW.YView, 0 )+6,string_hash_to_newline(string(floor((timertime/30)/60)) + ".0" + string(floor((timertime)/30 mod 60))),1,100,0.5,0.5,0)
	}else{
	draw_text_ext_transformed((__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ))-96+42,__view_get( e__VW.YView, 0 )+6,string_hash_to_newline(string(floor((timertime/30)/60)) + "." + string(floor((timertime)/30 mod 60))),1,100,0.5,0.5,0)
	}
	}else{
	draw_sprite(levelbar_spr,1,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-96,__view_get( e__VW.YView, 0 ))
	//Timer
	if(floor((timertime)/30 mod 60)<10){
	draw_text_ext_transformed((__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ))-96+42+33,__view_get( e__VW.YView, 0 )+6,string_hash_to_newline(string(floor((timertime/30)/60)) + ".0" + string(floor((timertime)/30 mod 60))),1,100,0.5,0.5,0)
	}else{
	draw_text_ext_transformed((__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ))-96+42+33,__view_get( e__VW.YView, 0 )+6,string_hash_to_newline(string(floor((timertime/30)/60)) + "." + string(floor((timertime)/30 mod 60))),1,100,0.5,0.5,0)
	}}

	//BOSS 2
	if(instance_exists(enemytargettwo)&&enemytargettwo!=0){
	draw_sprite(levelbar_spr,3,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-96,__view_get( e__VW.YView, 0 )+23)
	//HP
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-25,__view_get( e__VW.YView, 0 )+11+18,string_hash_to_newline(enemytargettwo.hp-enemytargettwo.hpbuffer),1,100,0.5,0.5,0)
	}

	//BOSS 3
	if(instance_exists(enemytargetthree)&&enemytargetthree!=0){
	draw_sprite(levelbar_spr,3,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-96,__view_get( e__VW.YView, 0 )+30+11)
	//HP
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-25,__view_get( e__VW.YView, 0 )+3+43,string_hash_to_newline(enemytargetthree.hp-enemytargetthree.hpbuffer),1,100,0.5,0.5,0)
	}

	//ROLL DISPLAY
	if(rolldisplaytime>0){
	rolldisplaytime-=1
	draw_sprite(rolldisplay_spr,rolldisplayimage,Me.x+10,Me.y-10)
	}else{
	//draw_sprite(rolldisplay_spr,4,view_xview[0]+75,view_yview[0])
	}

	if(writing>0){
	writing-=1
	draw_sprite(levelupcongrats_spr,0,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,(__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2)-30)
	if((Control.maskArray[Control.charArray[Control.charselected,8],0] +1) mod 2 == 0){
			if((Control.maskArray[Control.charArray[Control.charselected,8],0])> 8){
		draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-23,(__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2)-30+5,"PetDmg HpUp",1,1000,0.5,0.5,0)
		}else{
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-23,(__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2)-30+5,"Health UP",1,1000,0.5,0.5,0)
		}
	}else{
		if((Control.maskArray[Control.charArray[Control.charselected,8],0])== 8){
		draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-23,(__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2)-30+5,"Pet unlocked",1,1000,0.5,0.5,0)
		}else{
		if((Control.maskArray[Control.charArray[Control.charselected,8],0])> 8){
		draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-23,(__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2)-30+5,"Pet Damage UP",1,1000,0.5,0.5,0)
		}}
	}
	}

	draw_sprite(abilbar_spr,0,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ))

	//level
	if(maskArray[charArray[charselected,8],0]<10){
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+47,__view_get( e__VW.YView, 0 )+3,string_hash_to_newline(maskArray[charArray[charselected,8],0]),1,100,0.5,0.5,0)
	}else{
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+44,__view_get( e__VW.YView, 0 )+3,string_hash_to_newline(maskArray[charArray[charselected,8],0]),1,100,0.5,0.5,0)
	}

	if(room!=Forest_snow_rm){
	//abilcds
	xpos=-20
	ypos=-4

	for(i=0;i<3;i+=1){
	itwo=0
	ithree=2
	if(i==1){
	itwo=2
	ithree=1
	}else{
	if(i==2){
	itwo=1
	ithree=0
	}}
	cddraw=charcdArray[Me.charid,itwo]/abilArray[itwo,1]
	if(charcdArray[Me.charid,itwo]==0){
	draw_sprite(abilpan,ithree,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+xpos,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )+ypos)
	}else{
	draw_sprite(abilpancd,ithree,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+xpos,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )+ypos)
	}
	draw_sprite(abilcd_spr,cddraw*6,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+xpos,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )+ypos)
	xpos+=12
	}}

	if(charArray[charselected,8]==7){
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-16,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )+ypos-6,string(max(0,Me.abilopt-1)),1,100,0.5,0.5,0)
	}

	if(Me.combo>2){
	if(Me.combodraw>0){
	draw_text_ext_transformed_colour(x+8,y-8,string_hash_to_newline(floor(Me.combo/3)),1,1,100,0.5,0.5,0,c_black,c_black,c_black,c_black)
	}}

	/*
	if(Me.visible==true){
	//DPS Meter
	dps=dpsdone/(timertime/30)
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-35,dps)
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-55,dpsdone)
	}
	*/
	//draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-35,Me.hpstealcd)


	}else{
	if(pause==2){
	//INVENTORY
	inventory_scr()
	//inven_scr(option,0)
	}}
	}

	//bottles
	xtrax=__view_get( e__VW.XView, 0 )
	xtray=__view_get( e__VW.YView, 0 )
	xspottwo=61
	yspottwo=107

	bottles=0
	if(bottles!=0){
	if(actchoose==1){
	if(levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]],5]!=0){
	draw_sprite(items_spr,3,xtrax+xspottwo,xtray+yspottwo)
	}
	xspottwo+=15
	if(levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]],6]!=0){
	draw_sprite(items_spr,3,xtrax+xspottwo,xtray+yspottwo)
	}
	xspottwo+=15
	if(levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]],7]!=0){
	draw_sprite(items_spr,3,xtrax+xspottwo,xtray+yspottwo)
	}}else{
	if(actchoose==2){
	xspottwo=61
	yspottwo=107
	if(levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]]+1,5]!=0){
	draw_sprite(items_spr,3,xtrax+xspottwo,xtray+yspottwo)
	}
	xspottwo+=15
	if(levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]]+1,6]!=0){
	draw_sprite(items_spr,3,xtrax+xspottwo,xtray+yspottwo)
	}
	xspottwo+=15
	if(levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]]+1,7]!=0){
	draw_sprite(items_spr,3,xtrax+xspottwo,xtray+yspottwo)
	}}}}



}
