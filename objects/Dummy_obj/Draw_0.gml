if(Control.world==1){
//Forest rm3
if(type==3){
if(instance_exists(Dummy_object)){
with(Dummy_object){
if(pin==11){
if(duration>28||duration<5){
draw_sprite_ext(abil_witch_dis1,other.tempo,x,y,image_xscale,image_yscale,other.rotation,image_blend,1)
}}}
}}else{
//Cavern Minigame
if(type==70){
with(Control){

//Gem Filler
xspot=__view_get( e__VW.WView, 0 )+__view_get( e__VW.XView, 0 )-15
yspot=__view_get( e__VW.YView, 0 )+64
other.gemsfilled=(other.gems/other.gemsgoal)*15
for(i=0;i<other.gemsfilled;i+=1){
//irandom(sprite_get_number(gemfiller_spr))
draw_sprite(gemfiller_spr,other.gemdrawrand+i,xspot,yspot)
yspot-=2
}

draw_sprite(gemcount_spr,0,__view_get( e__VW.WView, 0 )+__view_get( e__VW.XView, 0 )-sprite_get_width(gemcount_spr),__view_get( e__VW.YView, 0 )+20)
if(other.gems<10){
xspot=12
}else{
if(other.gems<100){
xspot=14
}else{
if(other.gems<1000){
xspot=16
}else{

}}}
yspot=69
//Gem Counter
draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-xspot,__view_get( e__VW.YView, 0 )+yspot,string_hash_to_newline(other.gems))
xspot=16
yspot=25
//Gem Goal
draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-xspot,__view_get( e__VW.YView, 0 )+yspot,string_hash_to_newline(other.gemsgoal))

//Timer
if(floor((other.timertime)/30 mod 60)<10){
draw_text((__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2),__view_get( e__VW.YView, 0 )+5,string_hash_to_newline(string(floor((other.timertime)/30/60)) + ".0" + string(floor((other.timertime)/30 mod 60))))
}else{
draw_text((__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2),__view_get( e__VW.YView, 0 )+5,string_hash_to_newline(string(floor((other.timertime)/30/60)) + "." + string(floor((other.timertime)/30 mod 60))))
}

}}else{


}}
}else{

if(Control.world==2){
if(room==Worldtwo_rm1){
worldtwo_rm1_controldraw_scr()
}

}}

if(key>0){
	for(i=0;i<key;i+=1){
draw_sprite(items_spr,0,__view_get( e__VW.XView, 0 )-3,__view_get( e__VW.YView, 0 )+143-18-(i*6))	
	}

}
