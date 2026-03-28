if(Control.ending!=0){
instance_destroy()
}else{
if(Control.pause==0){
if(classtype==0){
abilstrig_miner_scr(abil)
}else{
if(classtype==1){
abilstrig_wizard_scr(abil)
}else{
if(classtype==2){
abilstrig_skeleton_scr(abil)
}else{
if(classtype==3){
abilstrig_bee_scr(abil)
}else{
if(classtype==4){
abilstrig_tree_scr(abil)
}else{
if(classtype==5){
abilstrig_burger_scr(abil)
}else{
if(classtype==6){
abilstrig_robot_scr(abil)
}else{
if(classtype==7){
abilstrig_santa_scr(abil)
}else{
if(classtype==8){
abilstrig_gingerbread_scr(abil)
}else{
}}}}}}}}}
//Other
//abilstrig_scr(abil,classtype)


if(y>room_height){
duration=0
}

if(duration>0){
duration-=1
}else{
if(phase>=0){
phase=-1
}}

//SOUND
if(useaudio==1){
audio_emitter_position(spellsnd,x,y,0)
audio_emitter_falloff(spellsnd, audiosize, 300, 1);
}

//*******DEATH**********
if(deathphase==1){
if(useaudio==1){
audio_emitter_free(spellsnd)
spellsnd=-1
}
if(selfcreated!=0){
if(instance_exists(selfcreated)){
with(selfcreated){
instance_destroy()
}}}
instance_destroy()
}}}

/* */
/*  */
