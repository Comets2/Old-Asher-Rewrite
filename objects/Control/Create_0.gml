game_set_speed(60, gamespeed_fps)
global.myFont = font_add_sprite(alpha2,ord("!"),true,1)
//global.myFont = font_add_sprite(alpha1,ord('!'),true,-1)

global.myCol = c_white
storydelay=1
story=-1
storyone=instance_create(126+1,99,Dummy_four_object)
with(storyone){
	phase=0
	pin=0
sprite_index=meghost_sleep_spr
image_speed=0.015
visible=false
}
storytwo=instance_create(242,99-15,Dummy_four_object)
with(storytwo){
	pin=0
sprite_index=skell_minion
image_speed=0.05
visible=false
sped=1.25
phase=0
delay=40
dw=1
}

storythree=instance_create(242+11,99-10,Dummy_four_object)
with(storythree){
	pin=0
sprite_index=ghost_sack_spr
image_speed=0.075
visible=false
talkcd=0
talkx=x
talky=y
sped=1.25
phase=0
}

storyfour=instance_create(242+19,99-15,Dummy_four_object)
with(storyfour){
	pin=0
sprite_index=ghost_miniontwo_spr
image_speed=0.05
phase=0
visible=false
dw=1
}

storyfive=instance_create(126+8-20,99+4,Dummy_four_object)
with(storyfive){
	pin=0
sprite_index=ghost_snooze_spr
image_speed=0.025
phase=0
visible=false
}

storysix=instance_create(126+100-20,99+4,Dummy_four_object)
with(storysix){
	pin=0
sprite_index=ghost_ball_spr
image_speed=0
phase=0
visible=false
cd=24
}

storyseven=instance_create(126+7-10,99-25,Dummy_four_object)
with(storyseven){
	pin=0
sprite_index=ghost_dream_spr
image_speed=0
phase=0
visible=false
cd=24
tick=0
}


textcolgold=make_color_rgb(228-60,194-60,136-60)
textcolgoldtwo=make_color_rgb(228+25,194+25,136+25)

maskcol=make_color_rgb(213,153,51)

lvlupcolor=make_color_rgb(54,223,54)

colrare1 = c_white
colrare2 = make_color_rgb(100,225,83)
colrare3 = make_color_rgb(83,83,227)
colrare4 = make_color_rgb(157,83,225)
colrare5 = make_color_rgb(225,150,83)

//UI Style Colors
ui_hurtcolor = $5959BB
poisoncolor = $A86984
pathcolor = $332F55
ui_border = $2C1E37
ui_btn_outline = $6384A9
ui_btn_outline_sel = $433058
pathcolortwo = $4E6089
colorgold = $78A5D1
colorgoldmed = $5E7EC4
colorgoldlight = $8EDDCA
colorblue = $A8945E
colorbluelight = $D8DEBC
colorgreen = $72C074
colorpurple = $A86984
colorpurpledark = $75495F
colorgray = $B3ABC2
colorred = $5959BB
colorbrown = $3F4169
colorlightgreen = $8EDDCA

//Settings
settings_tab = 0
settings_row = -1
master_vol = 1
music_vol = 1
sfx_vol = 1
window_mode = 1
window_scale = 4
settings_apply_window()

draw_set_font(global.myFont) 
draw_set_color(global.myCol) 

controlopt=1
conp_h_up=0
conp_h_down=0
conp_h_right=0
conp_h_left=0
conp_p_up=0
conp_p_down=0
conp_p_right=0
conp_p_left=0
controlschoose_scr(0)

instance_create(x,y,Title_obj)

randomize();

drawvar1=0
drawvar2=0
pausesafetytwo=0
cpsave=0
arcadepause=0
gamemodeactive=0
dpsdone=0
chestopt=2
chestoptforce=0
worldlock=1
worldlast=1
vibrate=0
worldx=0
worldy=3
storeloaded=1
deathdisplaycounter=0
rolldisplayimage=0
rolldisplaytime=0
arcadepause=0
bottles=1

animdraw=0
animdraw2=0
animdraw3=0
animdraw4=0
animdraw5=0
cloud_surf1=-1
cloud_surf2=-1
cloud_surf3=-1
cloud_surf4=-1
cloud_surf5=-1
regularview=0
regularview=0
bg_layer0=-1
bg_layer1=-1
bg_layer2=-1
bg_layer5=-1
bg_cached_room=-1

enemytarget=0
enemytargettwo=0
enemytargetthree=0
version=2.0
levelid=0
world=1
rounds=1
imgindexsecure=0
leveldeaths=0
levelgold=0
levelkills=0
levelreward=0
leveltime=0
snow=0
delay=0
actchar=0
actopt=0
actopttwo=0
saveactopt=0
saveactopttwo=0
timertime=0
actchoose=0
ending=0
mapcheck=0
pausecheck=1
debug=0
screennum=0
healthcontotal=10
healthcon=healthcontotal
rmcheck=0
wr1=0
wr2=0
writing=0
ready=0
startup=1
charselected=0
screenshake=0
screenroll=0
dir1=0
dir2=0
nohair=0
lightcheck=1

//MUSIC
//audio_channel_num(1)
music=0
musicchange=0
musiccheck=0
musicother=0

helmskin=helm_spr
saveoption=0
saveoptiontwo=0
optiontwo=0
cycle=0.99
time=0

abilpan=abilpan_pump_spr
abilpancd=abilpancd_pump_spr

overworldlevels_scr(0)

//STATS
for(i=0;i<10;i+=1){
statsArray[i,0]=0
statsArray[i,1]=0
statsArray[i,2]=0
statsArray[i,3]=0
statsArray[i,4]=0
statsArray[i,5]=0
}

//Abils
abilcreate_scr(0)
for(i=0;i<5;i+=1){
charcdArray[i,0]=0
charcdArray[i,1]=0
charcdArray[i,2]=0
charcdArray[i,3]=0
}

//ITEMS
itemtotal=0
itemcreate=0
itemselected=0
itemsloaded=0
equipopt=0

//Particles
weather=1
weathertick=1
weatheron=0
spelleffectscreate_scr()
if(!file_exists("Version.sav")){
if(file_exists("Charslot1.sav")){
file_delete("Charslot1.sav")
}

saveslot=file_text_open_write("Version.sav")
//**Version**
file_text_write_string(saveslot,"**Version**")
//new line
file_text_writeln(saveslot)
//Version
file_text_write_real(saveslot,version)
//new line
file_text_writeln(saveslot)
//end
file_text_close(saveslot)
}

//Chararraysetup
charload_scr(0)
//charload_scr(1)
//charload_scr(2)

overworldlevels_scr(0)

//achievments
medeaths=0
mewins=0
mekills=0
mecombo=0
metimeone=0
metimetwo=0
metimethree=0
metimetotal=0
memoney=0
haircolor=0
skincolor=make_color_rgb(245,197,158)
pantcolor=0
armcolor=0

option=0
opt=0
opttwo=0
equipselected=0
deleteopt=0

slot1=0
slot2=0
slot3=0

saves=0
savetime=0
justloaded=1
pause=0
type=0
cd=0

//settings
mute=1

rmcheck=1
musicchange=music_title_theme1
music=musicchange
//audio_play_sound(music,5,false)

instance_create(16,16,Me)

/* */
/*  */
