if(pause>0){
if(animdraw<31.925){
animdraw+=0.0375
}else{
animdraw=0
}
if(animdraw2<63.8){
animdraw2+=0.1
}else{
animdraw2=0
}
if(animdraw3<127.9){
animdraw3+=0.05
}else{
animdraw3=0
}
if(animdraw4<63.75){
animdraw4+=0.125
}else{
animdraw4=0
}
if(animdraw5<127.85){
animdraw5+=0.075
}else{
animdraw5=0
}
xspot=__view_get( e__VW.XView, 0 )
yspot=__view_get( e__VW.YView, 0 )

// Per-layer static surfaces — pattern never changes, smooth scroll via draw offset
if(!surface_exists(cloud_surf1)){
cloud_surf1=surface_create(320,320)
surface_set_target(cloud_surf1)
draw_clear_alpha(c_black,0)
for(a=0;a<10;a+=1){
for(b=0;b<10;b+=1){
draw_sprite(cloudscroll_spr,0,a*32,b*32)
}}
surface_reset_target()
}
draw_surface(cloud_surf1,xspot+animdraw-32,yspot+animdraw-32)

if(!surface_exists(cloud_surf2)){
cloud_surf2=surface_create(640,640)
surface_set_target(cloud_surf2)
draw_clear_alpha(c_black,0)
for(a=0;a<5;a+=1){
for(b=0;b<5;b+=1){
draw_sprite(cloudscroll3_spr,0,a*128,b*128)
}}
surface_reset_target()
}
draw_surface(cloud_surf2,xspot+animdraw3-128,yspot+animdraw3-128)

if(!surface_exists(cloud_surf3)){
cloud_surf3=surface_create(640,640)
surface_set_target(cloud_surf3)
draw_clear_alpha(c_black,0)
for(a=0;a<5;a+=1){
for(b=0;b<5;b+=1){
draw_sprite(cloudscroll5_spr,0,a*128,b*128)
}}
surface_reset_target()
}
draw_surface(cloud_surf3,xspot+animdraw5-128,yspot+animdraw5-128)

if(!surface_exists(cloud_surf4)){
cloud_surf4=surface_create(640,640)
surface_set_target(cloud_surf4)
draw_clear_alpha(c_black,0)
for(a=0;a<10;a+=1){
for(b=0;b<10;b+=1){
draw_sprite(cloudscroll2_spr,0,a*64,b*64)
}}
surface_reset_target()
}
draw_surface(cloud_surf4,xspot+animdraw2-64,yspot+animdraw2-64)

if(!surface_exists(cloud_surf5)){
cloud_surf5=surface_create(640,640)
surface_set_target(cloud_surf5)
draw_clear_alpha(c_black,0)
for(a=0;a<10;a+=1){
for(b=0;b<10;b+=1){
draw_sprite(cloudscroll4_spr,0,a*64,b*64)
}}
surface_reset_target()
}
draw_surface(cloud_surf5,xspot+animdraw4-64,yspot+animdraw4-64)
}

lighting_scr()
spelleffects_scr()

if(startup==0){
if(room==room4&&type==0){
//draw_sprite(actchoose_spr,option+11,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ))

draw_sprite(bedroom_bk1,0,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ))
with(storyseven){
draw_sprite(sprite_index,image_index,x,y)
}
with(storyone){
draw_sprite(sprite_index,image_index,x,y)
}
with(storytwo){
	if(phase<10&&dw==1){
draw_sprite(sprite_index,image_index,x,y)
	}
}
with(storythree){
	if(phase<11){
draw_sprite(sprite_index,image_index,x,y)
	}
}

with(storyfour){
	if(phase<10&&dw==1){
draw_sprite(sprite_index,image_index,x,y)
	}
}
with(storyfive){
draw_sprite(sprite_index,image_index,x,y)
}
with(storysix){
draw_sprite(sprite_index,image_index,x,y)
}

draw_sprite(bedroom_bk1,1,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ))

with(storythree){
	if(talkcd<120){
	talkcd+=0.25
	}else{
	talkx=x-2+random(4)
	talky=y-2+random(4)
	talkcd=0
	}
	if(talkcd<30){
	if(phase<10){
draw_text_ext_transformed(talkx,talky+5-(talkcd*0.3),"Help" ,1,100,0.5,0.5,0)
//draw_text_ext_transformed_color(talkx,talky+5-(talkcd*0.3),"Help" ,1,100,0.5,0.5,0, c_maroon, c_maroon, c_maroon, c_maroon, 1)
	}
}
if(phase>=10){
	if(talkcd<60){
draw_text_ext_transformed(talkx-22,talky+5-(talkcd*0.3)-32,"Asher Please" ,1,100,0.5,0.5,0)
//draw_text_ext_transformed_color(talkx-25,talky+5-(talkcd*0.3)-32,"Asher Please" ,1,100,0.5,0.5,0, c_maroon, c_maroon, c_maroon, c_maroon, 1)
	}else{
	talkcd=60

	}
}
}
with(Dummy_four_object){
	if(pin==1){
	draw_sprite(sprite_index,image_index,x,y)
	}
}
draw_sprite(bedroom_bk1,2,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ))
//menuui_scr(0)
}else{
if(pause==0&&room!=Overworld_rm){

//Gold LEFT CORNER UI
draw_sprite(levelbar_spr,4,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+143-32)
draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+10,__view_get( e__VW.YView, 0 )+137,string_hash_to_newline(charArray[charselected,11]),1,100,0.5,0.5,0)
if(drawvar2>0){
	drawvar2-=1
	draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+10,__view_get( e__VW.YView, 0 )+140-10-(drawvar2/4),drawvar1 ,1,100,0.5,0.5,0)
	draw_sprite(moneyitem,0,__view_get( e__VW.XView, 0 )+5,__view_get( e__VW.YView, 0 )+140+2-10-(drawvar2/4))
	
}else{
drawvar1=0
}
//bottles
xspot=__view_get( e__VW.XView, 0 )+34
xspottwo=0
yspot=__view_get( e__VW.YView, 0 )+143-9
yspottwo=0
if(actchoose==1){
if(levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]],5]!=0){
draw_sprite(items_spr,7,xspot+xspottwo,yspot+yspottwo)
}
xspottwo+=8
if(levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]],6]!=0){
draw_sprite(items_spr,7,xspot+xspottwo,yspot+yspottwo)
}
xspottwo+=8
if(levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]],7]!=0){
draw_sprite(items_spr,7,xspot+xspottwo,yspot+yspottwo)
}}else{
if(actchoose==2){
if(levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]]+1,5]!=0){
draw_sprite(items_spr,7,xspot+xspottwo,yspot+yspottwo)
}
xspottwo+=8
if(levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]]+1,6]!=0){
draw_sprite(items_spr,7,xspot+xspottwo,yspot+yspottwo)
}
xspottwo+=8
if(levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]]+1,7]!=0){
draw_sprite(items_spr,7,xspot+xspottwo,yspot+yspottwo)
}}}
}}


if(pause==1){
draw_sprite(actchoose_spr,option+5,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ))
menuui_scr(1)

}else{
if(pause==4){
if(ending==2){
//********************************************************{END LEVEL}********************************************************

draw_sprite(actchoose_spr,15,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ))

//levelsArray_add(i,Level,Act,Startx,Starty,Locked,DB1,DB2,DB3,Chest,Time,Checkpoint,Opt1,Opt2,opt3)
draw_text_ext_transformed((__view_get( e__VW.WView, 0 )/2),(__view_get( e__VW.HView, 0 )/2),string_hash_to_newline(string(floor(timertime/60/60)) + "." + string(floor(timertime/60 mod 60))),1,1000,0.5,0.5,0)
xspottwo=88
yspottwo=79
//GOAL TIME
if(floor(timertime/60 mod 60)<10){
draw_text_ext_transformed(xspot+xspottwo,yspot+yspottwo,string_hash_to_newline(string(floor(timertime/60/60)) + ".0" + string(floor(timertime/60 mod 60))),1,100,0.5,0.5,0)
}else{
draw_text_ext_transformed(xspot+xspottwo,yspot+yspottwo,string_hash_to_newline(string(floor(timertime/60/60)) + "." + string(floor(timertime/60 mod 60))),1,100,0.5,0.5,0)
}
draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+219,__view_get( e__VW.YView, 0 )+49,string_hash_to_newline(deathdisplaycounter),1,100,0.5,0.5,0)
xspottwo=88
yspottwo=67
if(timertime>levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]],9]&&levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]],9]>0){
//BEST
if(actchoose==1){
if(floor((levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]],9])/60 mod 60)<10){
draw_text_ext_transformed(xspot+xspottwo,yspot+yspottwo,string_hash_to_newline(string(floor((levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]],9])/60/60)) + ".0" + string(floor((levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]],9])/60 mod 60))),1,1000,0.5,0.5,0)
}else{
draw_text_ext_transformed(xspot+xspottwo,yspot+yspottwo,string_hash_to_newline(string(floor((levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]],9])/60/60)) + "." + string(floor((levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]],9])/60 mod 60))),1,1000,0.5,0.5,0)
}}else{

if(floor((levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]]+1,9])/60 mod 60)<10){
draw_text_ext_transformed(xspot+xspottwo,yspot+yspottwo,string_hash_to_newline(string(floor((levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]]+1,9])/60/60)) + ".0" + string(floor((levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]]+1,9])/60 mod 60))),1,1000,0.5,0.5,0)
}else{
draw_text_ext_transformed(xspot+xspottwo,yspot+yspottwo,string_hash_to_newline(string(floor((levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]]+1,9])/60/60)) + "." + string(floor((levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]]+1,9])/60 mod 60))),1,1000,0.5,0.5,0)
}}
}else{

if(floor(timertime/60 mod 60)<10){
draw_text_ext_transformed(xspot+xspottwo,yspot+yspottwo,string_hash_to_newline(string(floor((timertime)/60/60)) + ".0" + string(floor((timertime)/60 mod 60))),1,1000,0.5,0.5,0)
}else{
draw_text_ext_transformed(xspot+xspottwo,yspot+yspottwo,string_hash_to_newline(string(floor((timertime)/60/60)) + "." + string(floor((timertime)/60 mod 60))),1,1000,0.5,0.5,0)
}}

xspottwo=61
yspottwo=107
//PAGE 2
//bottles
if(actchoose==1){
if(levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]],5]!=0){
draw_sprite(items_spr,3,xspot+xspottwo,yspot+yspottwo)
}
xspottwo+=15
if(levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]],6]!=0){
draw_sprite(items_spr,3,xspot+xspottwo,yspot+yspottwo)
}
xspottwo+=15
if(levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]],7]!=0){
draw_sprite(items_spr,3,xspot+xspottwo,yspot+yspottwo)
}}else{
if(actchoose==2){
xspottwo=61
yspottwo=107
if(levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]]+1,5]!=0){
draw_sprite(items_spr,3,xspot+xspottwo,yspot+yspottwo)
}
xspottwo+=15
if(levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]]+1,6]!=0){
draw_sprite(items_spr,3,xspot+xspottwo,yspot+yspottwo)
}
xspottwo+=15
if(levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]]+1,7]!=0){
draw_sprite(items_spr,3,xspot+xspottwo,yspot+yspottwo)
}}}

xspot=216+__view_get( e__VW.XView, 0 )
yspot=50+__view_get( e__VW.YView, 0 )

if(leveldeaths<10){
//draw_text_ext_transformed(xspot+4,yspot+yspottwo,string_hash_to_newline(leveldeaths),1,1000,0.5,0.5,0)
}else{
//draw_text_ext_transformed(xspot,yspot+yspottwo,string_hash_to_newline(leveldeaths),1,1000,0.5,0.5,0)
}
yspottwo=21
//other
if(levelkills<10){
//draw_text_ext_transformed(xspot+4,yspot+yspottwo,string_hash_to_newline(levelkills),1,1000,0.5,0.5,0)
}else{
//draw_text_ext_transformed(xspot,yspot+yspottwo,string_hash_to_newline(levelkills),1,1000,0.5,0.5,0)
}
yspottwo+=21
if(levelgold<10){
//draw_text_ext_transformed(xspot+4,yspot+yspottwo,string_hash_to_newline(levelgold),1,1000,0.5,0.5,0)
}else{
//draw_text_ext_transformed(xspot,yspot+yspottwo,string_hash_to_newline(levelgold),1,1000,0.5,0.5,0)
}
yspottwo+=22
levelreward=levelgold+levelkills
if(levelreward<10){
//draw_text_ext_transformed(xspot+4,yspot+yspottwo,string_hash_to_newline(levelreward),1,1000,0.5,0.5,0)
}else{
//draw_text_ext_transformed(xspot,yspot+yspottwo,string_hash_to_newline(levelreward),1,1000,0.5,0.5,0)
}
}else{

if(chestopt!=0){
equipment_endingdraw_scr()
}}}else{

}}



if(room!=room4&&pause==0&&Me.dead==1){
draw_sprite(gameover,option,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2)
xspot=-32
yspot=-32
draw_sprite(gameover,option,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2)
}

xpos=215
ypos=49
if(room==room4&&type==1){
draw_text_ext_transformed(xpos,70,string_hash_to_newline("KILLS"),1,1000,0.5,0.5,0)
draw_text_ext_transformed(xpos,16,string_hash_to_newline(mekills),1,1000,0.5,0.5,0)
draw_text_ext_transformed(xpos,32,string_hash_to_newline("WINS"),1,1000,0.5,0.5,0)
draw_text_ext_transformed(xpos,32,string_hash_to_newline(mewins),1,1000,0.5,0.5,0)
draw_text_ext_transformed(xpos,48,string_hash_to_newline("DEATHS"),1,1000,0.5,0.5,0)
draw_text_ext_transformed(xpos,49,string_hash_to_newline(medeaths),1,1000,0.5,0.5,0)
draw_text_ext_transformed(16,64,string_hash_to_newline("JUMP COMBO"),1,1000,0.5,0.5,0)
draw_text_ext_transformed(95,64,string_hash_to_newline(mecombo),1,1000,0.5,0.5,0)
draw_text_ext_transformed(16,80,string_hash_to_newline("APPLES SMASHED"),1,1000,0.5,0.5,0)
draw_text_ext_transformed(95,80,string_hash_to_newline(memana),1,1000,0.5,0.5,0)
}

drawforme_scr()

}else{
if(startup==1){

/*
if(deleteopt<=0){
draw_sprite(menuload_spr,0,0,0)
draw_sprite(menuloadselect_spr,2,63,15+(28*option))
charselectperson_scr(0)

}else{
draw_sprite(menuload_spr,1,0,0)
draw_sprite(menuloadselect_spr,0,63,15+(28*option))
charselectperson_scr(0)
draw_sprite(menudelete_spr,-1,72,23+(28*option))
}
*/
}else{
if(startup==2){
charselectperson_scr()
}}}

//Controls
if(pause==3){
draw_sprite(actchoose_spr,31,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ))
drawcontrols_scr()
}else{
//EQUIPMENT
if(pause==5){
equipment_draw_scr()
}else{
//WORLD SELECT
if(pause==6&&worldlock==0){
	if(room!=room4){
draw_sprite(actchoose_spr,26+equipopttwo,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ))
draw_sprite(overorld_worldicons_spr,0+equipopttwo,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ))
	}
}else{
//Store
if(pause==7){
equipment_storedraw_scr()
}else{
//Arcade
if(pause==8){

}else{
if(pause==9){
settings_draw_scr()
}}}}}}
screeneffects_scr()

//draw_text(10,10,world)

/* */
/*  */


