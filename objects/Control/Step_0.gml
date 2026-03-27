if(delay>0){
delay-=1
}
/*
if (keyboard_check_pressed(vk_f8)){

instance_create(0,0,Arcade_control)

Me.x=16
Me.y=16
mapcheck=1
option=0

pause=6
equipopt=0
equipopttwo=worldlast

}
*/

if(mapcheck==1){
mapcheck=0
pause=6
equipopt=0
equipopttwo=worldlast-1
weatheron=0
part_system_destroy(snow)
snow=0
}else{
if(mapcheck==2){
weatheron=0
part_system_destroy(snow)
snow=0
pause=0
option=0
mapcheck=0
room=Overworld_rm
rmcheck=1
musicchange=0
actchoose=0
actchar=0
}
}

if (keyboard_check_pressed(vk_f2)){
screen_save(working_directory + "\\Screens\\Screen_"+string(screennum)+".png")
screennum += 1;
}

if (keyboard_check_pressed(vk_f1)){
timertime=0
dpsdone=0
}

if(story>=0&&story<100&&room==room4){
	/*
if(con_p_enter||con_p_e||conp_p_space||conp_p_enter){
	story=100
	Me.x=16
Me.y=16
mapcheck=1
option=0
}
*/
if(story==0){
	story=1
	musicchange=music_intro
	rmcheck=1
}else{
if(story==1){
	if(instance_exists(Dummy_four_object)){
		with(Dummy_four_object){
	if(pin==1){
	if(dur>0){
	dur-=1
	x+=hsp
	y+=vsp
	}else{
	instance_destroy()
	}}}
	}
	if(con_p_enter||con_p_e||conp_p_space||conp_p_enter){
		Control.con_p_e=true
		Control.storydelay=0
	}
	with(storyone){
		if(phase==0){
		if(image_index>=2){
		image_index=0
		}}else{
		Control.con_p_e=true
		Control.storydelay=0
		}
	}
	
	with(storytwo){
		if(x>106){
			if(image_index<1){
			if(x>176){
				x-=0.45
			other.storythree.x-=0.45
			other.storyfour.x-=0.45
			}else{
			if(other.storyfour.phase==0){
			other.storyfour.phase=1
			}else{
			if(other.storyfour.phase==4){
				x-=0.45
			other.storythree.x-=0.45
			other.storyfour.x-=0.45
			}else{
			x-=0.125
			other.storythree.x-=0.125
//			other.storyfour.x-=0.75
			}}
			}}
		}else{
		image_index=1
		other.storyfour.image_index=1
		if(other.storythree.sped>-1){
		other.storythree.y-=other.storythree.sped
		other.storythree.sped-=0.025
		}else{
		if(other.storythree.phase==0){
		other.storythree.phase=10
		other.storythree.image_speed=1
		other.storythree.sprite_index=sister_ghost_spr
		other.storythree.x-=3
		other.storythree.image_index=0
		other.storythree.talkcd=0
		
		for(i=0;i<16;i+=1){
		created=instance_create(126+7+random(6)-13,99-25+random(6)-3,Dummy_four_object)
		with(created){
			image_index=irandom(7)
			image_speed=0
		sprite_index=abil_witch_part1
		hsp=choose(-0.2,-0.05,0.05,0.2)
		vsp=choose(-0.2,-0.05,0.05,0.2)
		pin=1
		dur=random_range(30,44)
		}
		}}else{
		if(other.storythree.phase==10){
			if(image_index>=3){
			other.storythree.phase=11
			}
		}
		}
		
		if(sped>-1.5){
					if(sped<-1.3){
					dw=0
					other.storyfour.dw=0
					}
			if(sped<=-1.5){
			if(delay<=0){
			}}else{
				sprite_index=ghost_minion_spr1
				image_speed=0
				other.storyfour.sprite_index=ghost_miniontwo_fall_spr
				other.storyfour.image_speed=0
				if(image_xscale==1){
				image_xscale=-1
				
				}
			if(sped>0){
			other.storyfour.image_index=23
			image_index=23
			}else{
			other.storyfour.image_index=24
			image_index=24
			}
		y-=sped
		other.storyfour.y-=sped
		sped-=0.025
			
			}
		
		}else{
			delay-=1
		if(phase<10&&delay<0){
		phase=10
		other.storyfour.phase=10
		other.storythree.phase=11
		other.storyseven.phase=3
		other.storyone.image_speed=0
		other.storyone.image_index=2
		other.storyone.phase=1
		for(i=0;i<16;i+=1){
		created=instance_create(126+7+random(6)-13,99-25+random(6)-3,Dummy_four_object)
		with(created){
			image_index=irandom(7)
			image_speed=0
		sprite_index=abil_witch_part1
		hsp=choose(-0.2,-0.05,0.05,0.2)
		vsp=choose(-0.2,-0.05,0.05,0.2)
		pin=1
		dur=random_range(30,44)
		}
		}}
		
		}}
		}
	}
	if(storythree.talkcd==0){
	//audio_play_sound_at(choose(hurt_snd1),storythree.x,storythree.y, 0, 90, 150, 0.5, false, 1) 
	}
		if(storytwo.x<130){
			if(storyseven.phase==0){
		storyseven.tick=1
			}
		}
	with(storyfour){
		if(phase==1){
			sprite_index=ghost_miniontwo_fall_spr
			image_speed=0.15
			phase=2
			other.storysix.phase=1
		}else{
		if(phase==2){
			if(image_index>=26){
			phase=3
			sprite_index=ghost_minion_spr
			image_index=0
			}
		}else{
			if(phase==3){
		if(x>other.storytwo.x+19){
			x-=0.25
		}else{
			phase=4
			sprite_index=ghost_miniontwo_spr
			image_speed=0.05

		}}}
		}
	}
	with(storysix){
		if(phase==1){
		if(cd>0){
		cd-=1
		x-=cd*0.05
		y+=cd*0.05
		}}
	}
	with(storyseven){
		if(phase==0){
		if(tick==1){
		image_speed=0.1
		tick=0
		phase=1
		}
		}else{
		
		if(phase==1){
		if(image_index>=4){
		image_speed=0.05
		phase=2
		}
		}else{
		if(phase==2){
		if(image_index>=8||image_index<4){
			image_index=4
		}}else{
		if(phase==3){
			image_speed=-0.075
			if(image_index<=0){
			image_index=0
			image_speed=0
			phase=4
			Control.con_p_e=true
			}
		}else{
		if(phase==4){
		Control.con_p_e=true
		}}}
		}}
	}
}
}}

if(startup==0){


if(room==room4&&type==0&&pause!=6){
if(con_p_escape||conp_p_escape){
game_end()
}
if(con_p_up||conp_p_up){
if(option>0){
option-=1
}}
if(con_p_down||conp_p_down){
if(option<3){
option+=1
}}

if(pause==3){
//controlschoose_scr(1)
}
delay=0
cd=0
Me.x=16
Me.y=16
mapcheck=1
option=0

pause=6
equipopt=0
equipopttwo=worldlast
//MAIN MENU
if(delay==1000){

if(con_p_enter||con_p_e||conp_p_space||conp_p_enter){
delay=10
cd=1
if(option==0){
Me.x=16
Me.y=16
mapcheck=1
option=0

pause=6
equipopt=0
equipopttwo=worldlast
}else{
if(option==1){
/*
instance_create(0,0,Arcade_control)

Me.x=16
Me.y=16
mapcheck=1
option=0

pause=6
equipopt=0
equipopttwo=worldlast
*/
}else{
if(option==2){
//pause=5
//equipopt=0
}else{
if(option==3){
game_end()
}else{
if(option==4){
game_end()
}}}}}}}
}else{
if(pause==0){
//*********{SNOW}**********
if(weatheron==1){
weather_scr()
}
if(delay<=0){
if(con_p_escape||conp_p_enter){
delay=10
if(instance_exists(Overworld_obj)){
if(actchoose>0){
actchoose=0
actchar=0
}else{
pause=1
pausecheck=1
}}else{
pause=1
pausecheck=1
}}
if(instance_exists(Overworld_obj)){
if(con_p_w||conp_p_q){
delay=10
if(actchoose>0){
actchoose=0
actchar=0
}else{
pause=1
pausecheck=1
}}}
}
if(pausecheck==1){
if(room!=Overworld_rm&&room!=room4){
pausecheck=0
if(instance_exists(Dummy_object)){
with(Dummy_object){
psped=0
if(speed!=0){
psped=speed
speed=0
}}}
if(instance_exists(Projectile)){
with(Projectile){
psped=0
if(speed!=0){
psped=speed
speed=0
}}}
if(instance_exists(ProjEn)){
with(ProjEn){
psped=0
if(speed!=0){
psped=speed
speed=0
}}}}
}
}else{
if(pause!=4&&pause!=3){

if(con_p_right||conp_p_right){
optiontwo+=1
}
if(con_p_left||conp_p_left){
optiontwo-=1
}

if(con_p_up||conp_p_up){
if(pause==1){
if(option>0){
option-=1
}}else{
if(pause==2){
if(option>0){
option-=1
}}else{
if(pause==3){
if(option>0){
option-=1
}}}
}}
if(con_p_down||conp_p_down){
if(pause==1){
if(option<5){
option+=1
}}else{
if(pause==2){
if(option<9){
option+=1
}}else{
if(pause==3){
if(option<14){
option+=1
}}else{
}}}}

if(delay<=0&&pause!=5){
if(con_p_escape||con_p_w||conp_p_q||conp_p_escape){
delay=10
pause=0
pausecheck=1
option=0
}}

if(delay<=0){
if(con_p_enter||con_p_e||conp_p_enter||conp_p_space){
delay=10
pauseoption_scr(pause)
}}
if(pausecheck==1){
pausecheck=0
if(instance_exists(Dummy_object)){
with(Dummy_object){
if(psped!=0){
speed=psped
}}}
if(instance_exists(Projectile)){
with(Projectile){
if(psped!=0){
speed=psped
}}}
if(instance_exists(ProjEn)){
with(ProjEn){
if(psped!=0){
speed=psped
}}}
}

}else{

//CONTROLS PAUSE
if(pause==3){
if(con_p_enter||con_p_e||con_p_w||con_p_escape||conp_p_escape||conp_p_enter||conp_p_q||conp_p_space){
pause=1
option=0
}}else{
}

}}
}

if(savetime==1){
savetime=0
}

if(type==1&&cd<=0){
if(con_p_enter||con_p_e||conp_p_enter||conp_p_space){
type=0
}

}else{
cd-=1
}
}else{
charselection_scr()
}


if(musicchange!=0){
//Room
if(rmcheck==1){
rmcheck=0
if(audio_is_playing(music)){
audio_stop_sound(music)
}}

//MUSIC
if(!audio_is_playing(musicother)){
music=musicchange
if(audio_is_paused(music)){
audio_resume_sound(music)
}else{
if(!audio_is_playing(music)){
audio_play_sound(music,5,false)
}}}
}else{
if(audio_is_playing(music)){
audio_stop_sound(music)
}}



if(regularview==0){
//Background
if(room!=Worldtwo_rm6_boss){
__background_set( e__BG.X, 0, __view_get( e__VW.XView, 0 )/1.5 )
__background_set( e__BG.X, 1, __view_get( e__VW.XView, 0 )/2 )
__background_set( e__BG.X, 2, __view_get( e__VW.XView, 0 )/3 )
__background_set( e__BG.X, 5, __view_get( e__VW.XView, 0 )/7 )
}}

//Level
if(maskArray[charArray[charselected,8],1]>=10+(maskArray[charArray[charselected,8],0]*10)){
maskArray[charArray[charselected,8],1]-=10+(maskArray[charArray[charselected,8],0]*10)
maskArray[charArray[charselected,8],0]+=1
Me.hp+=1
audio_pause_sound(music)
musicother=lvlup_snd
audio_play_sound(musicother,10,false)
musiccheck=0
writing=120
wr1=0
wr2=0
}

if(pause==2&&room!=room4){
if(saveoption!=option||saveoptiontwo!=optiontwo){
inven_scr(0)
}}

if(ending>=1){
if(ending==1){
weatheron=0
part_system_destroy(snow)
snow=0
ending=2
equipopt=0
equipopttwo=0
if(music!=end_theme1_music){
rmcheck=1
musicchange=end_theme1_music
}
pause=4
}
if(ending<10){
equipment_ending_scr()
}else{
//ACTUAL ENDING
if(ending==10){

deathdisplaycounter=0
charsave_scr(charselected)
with(Me){
if(minigame!=0){
minigame=0
}}
if(actchoose>0){
xspot=charArray[charselected,6]
yspot=charArray[charselected,7]
//levelsArray_add(i,Level,Act,Startx,Starty,Locked,DB1,DB2,DB3,Chest,Time,Unlock,Unlock2,Opt1,Opt2)
if(levelsArray[owLevels[xspot,yspot]+actchoose-1,10]!=0){
levelsArray[levelsArray[owLevels[xspot,yspot]+actchoose-1,10],4]=0
}
if(levelsArray[owLevels[xspot,yspot]+actchoose-1,11]!=0){
levelsArray[levelsArray[owLevels[xspot,yspot]+actchoose-1,11],4]=0
}
if(timertime<levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]]+actchoose-1,9]||levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]]+actchoose-1,9]==0){
levelsArray[owLevels[charArray[charselected,6],charArray[charselected,7]]+actchoose-1,9]=timertime
}}
actchar=0
pause=0
option=0
ending=0
mapcheck=2
Me.gravtotal = 0.1
if(room==Forest_rm4){
worldlock=0
world=2
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
mex=worldx
mey=worldy
overworldlevels_scr(99)

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
if(mapcheck==2){
pause=0
option=0
mapcheck=0
room=Overworld_rm
rmcheck=1
musicchange=0
actchoose=0
actchar=0
}
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
}
}}

}else{
if(pause==0){
timertime+=1
}}

/*
if(keyboard_check(ord("J"))){
Control.charArray[Control.charselected,11]=1200
if(keyboard_check_pressed(ord("1"))){
ending=1
}else{
if(keyboard_check_pressed(ord("2"))){
pause=6
}else{
if(keyboard_check_pressed(ord("3"))){
worldlock=0
pause=6
equipopt=0
equipopttwo=0
}else{

if(keyboard_check_pressed(ord("4"))){
world=2
room=Worldtwo_rm1_part2
Me.x=768
Me.y=10
actchoose=2
charArray[charselected,3]=Me.x
charArray[charselected,4]=Me.y
}else{

if(keyboard_check_pressed(ord("5"))){
world=2
room=Worldtwo_rm3
Me.x=10
Me.y=10
charArray[charselected,3]=Me.x
charArray[charselected,4]=Me.y
}else{
if(keyboard_check_pressed(ord("6"))){
world=2
room=Worldtwo_rm6_boss
Me.x=10
Me.y=10
charArray[charselected,3]=Me.x
charArray[charselected,4]=Me.y
}else{

}}}}}}}
*/


//Equipment
if(pause==5){
equipment_scr()
}else{
//World Select
if(pause==6){
	if(storydelay==1){
	equipopt=0
	equipopttwo=worldlast-1
	}
worldselect_scr()
}else{
//Store
if(pause==7){
equipment_store_scr()
}}}

/* */
/*  */
