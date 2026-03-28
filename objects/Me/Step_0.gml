if(dr>2){
dr=2
}

if(hpstealcd>0){
hpstealcd-=1
}

if(drdraw>2){
drdraw=2
}
if(meequipcheck==1){
meequipcheck=0
hpplus=floor((Control.maskArray[Control.charArray[Control.charselected,8],0]-1)/2)
hptotal=8+Control.itemsArray[0,2]-Control.itemsArray[0,12]+hpplus
meequipcheck=2
}else{
if(meequipcheck==2){
hpplus=floor((Control.maskArray[Control.charArray[Control.charselected,8],0]-1)/2)
hptotal=8+Control.itemsArray[0,2]-Control.itemsArray[0,12]+hpplus
}}
if(hp>hptotal){
hp=hptotal
manatotal=manatotal+Control.itemsArray[0,3]
}
//Class
if(mana+manaregen<manatotal){
mana+=(manaregen*Control.itemsArray[0,5])
}else{
mana=manatotal
}

//Char Passive
abilpassive_scr(Control.charArray[Control.charselected,8])

audio_listener_position(x+10, y+10, 0)

if(room!=Overworld_rm){
charactercheck_scr()
if(Control.pause==0&&room!=room4&&dead==0){
visible=true
statuseffects_scr()

//**********{Regular}**********
if(minigame==0){
if(minigamecheck==1){
mask_index=me_w_knight
minigamecheck=0
image_angle=0
}
if(Control.arcadepause==0){
mecontrol_scr()
}

g=0
if(grounded==1){
if(combo>2){
if(combo/3>Control.mecombo){
Control.mecombo=floor(combo/3)
}
for(i=0;i<floor((combo/3));i+=1){
created=instance_create(x+8,y-16-g,Item)
created.itemtype=2
g+=10
}
}
combo=0
}
megravity_scr()

// Smooth camera follow
var view_w=__view_get(e__VW.WView,0)
var view_h=__view_get(e__VW.HView,0)
var target_x=clamp(x+10-view_w/2,0,room_width-view_w)
var target_y=clamp(y+10-view_h/2,0,room_height-view_h)
cam_x_float=lerp(cam_x_float,target_x,cam_smooth)
cam_y_float=lerp(cam_y_float,target_y,cam_smooth)
__view_set(e__VW.XView,0,cam_x_float)
__view_set(e__VW.YView,0,cam_y_float)

//Abils
for(i=0;i<3;i+=1){
if(Control.charcdArray[charid,i]>0){
Control.charcdArray[charid,i]-=1
}}

//Abil1
if(Control.abilArray[1,4]!=2){
if(Control.con_p_q&&!Control.con_h_up&&!Control.con_h_down||Control.conp_p_q&&!Control.conp_h_up&&!Control.conp_h_down){
abil_scr(1,0)
}else{
if(Control.con_p_q&&!Control.con_h_up&&Control.con_h_down||Control.conp_p_q&&!Control.conp_h_up&&Control.conp_h_down){
abil_scr(1,1)
}else{
if(Control.con_p_q&&Control.con_h_up&&!Control.con_h_down||Control.conp_p_q&&Control.conp_h_up&&!Control.conp_h_down){
abil_scr(1,2)
}}}
}else{
if(Control.con_h_q&&!Control.con_h_up&&!Control.con_h_down||Control.conp_h_q&&!Control.conp_h_up&&!Control.conp_h_down){
abil_scr(1,0)
}else{
if(Control.con_h_q&&!Control.con_h_up&&Control.con_h_down||Control.conp_h_q&&!Control.conp_h_up&&Control.conp_h_down){
abil_scr(1,1)
}else{
if(Control.con_h_q&&Control.con_h_up&&!Control.con_h_down||Control.conp_h_q&&Control.conp_h_up&&!Control.conp_h_down){
abil_scr(1,2)
}}}
}
//Abil2
if(Control.abilArray[0,4]!=2){
if(Control.con_p_e&&!Control.con_h_up&&!Control.con_h_down||Control.conp_p_e&&!Control.conp_h_up&&!Control.conp_h_down){
abil_scr(0,0)
}else{
if(Control.con_p_e&&!Control.con_h_up&&Control.con_h_down||Control.conp_p_e&&!Control.conp_h_up&&Control.conp_h_down){
abil_scr(0,1)
}else{
if(Control.con_p_e&&Control.con_h_up&&!Control.con_h_down||Control.conp_p_e&&Control.conp_h_up&&!Control.conp_h_down){
abil_scr(0,2)
}}}
}else{
if(Control.con_h_e&&!Control.con_h_up&&!Control.con_h_down||Control.conp_h_e&&!Control.conp_h_up&&!Control.conp_h_down){
abil_scr(0,0)
}else{
if(Control.con_h_e&&!Control.con_h_up&&Control.con_h_down||Control.conp_h_e&&!Control.conp_h_up&&Control.conp_h_down){
abil_scr(0,1)
}else{
if(Control.con_h_e&&Control.con_h_up&&!Control.con_h_down||Control.conp_h_e&&Control.conp_h_up&&!Control.conp_h_down){
abil_scr(0,2)
}}}
}
//Abil3
if(Control.abilArray[2,4]!=2){
if(Control.con_p_w||Control.conp_p_w){
abil_scr(2,0)
}
}else{
if(Control.con_h_w||Control.conp_h_w){
abil_scr(2,0)
}}

if(grounded==1){
if(Control.abilArray[1,4]==5){
Control.charcdArray[charid,1]=0
}}

if(autocast>0){
autocast-=1
abil_scr(autocastspell,0)
}
}else{

//**********{Minigame}**********
if(room==Forest_snow_rm){
sled_scr()
}
}

simple_enemyhurt_scr()
if(Control.writing>30){
image_blend=Control.textcolgold
}

if(dmgsafety>0){
dmgsafety-=1
}

if(sounddel>0){
sounddel-=1
}

if(animdel>0){
animdel-=1
}

if(afterdeath==1){
afterdeath=0
with(Control){
if(gamemodeactive==0){
charArray[charselected,11]-=5
leveldeaths+=1
deathdisplaycounter+=1
healthcon=healthcontotal
charsave_scr(charselected)
if(other.live>0){
other.x=charArray[charselected,3]
other.y=charArray[charselected,4]
}else{
//dead=1
//x=16
//y=10
other.x=charArray[charselected,3]
other.y=charArray[charselected,4]
}}else{
if(gamemodeactive==1){
Arcade_control.reset=1
}}}}
if(hp<=0&&Control.gamemodeactive==0){
with(Control){
for(i=0;i<5;i+=1){
charcdArray[i,0]=0
charcdArray[i,1]=0
charcdArray[i,2]=0
charcdArray[i,3]=0
}}
room_goto(room)
Me.x=10
Me.y=10
Me.stun=0
Me.slow=0
Me.slowamount=1
Me.jumpamount=1
Me.gravamount=1
hp=hptotal
live-=1
sound_play(die1)
Control.medeaths+=1
afterdeath=1
}

if(y>room_height+16){
if(Control.gamemodeactive==0){
hp=0
Control.conhealth=0
}}

if(immune>0){
immune-=1
}

if(room==room0){
grab_scr()
}
}else{
visible=false
}

hit=instance_place(x,y,Item)
if(hit!=noone){
with(Item){
if(instance_place(x,y,Me)){
if(duration<2994||keep==1){
opened=1
}
}}}

if(shields<=0){
shield=0
}}

/* */
/*  */
