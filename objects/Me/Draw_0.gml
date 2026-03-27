if(room!=room4&&dead==0){

// Round position for drawing to prevent sub-pixel jitter
var _real_x=x
var _real_y=y
x=round(x)
y=round(y)

if(direction==0){
drawflip=1
}else{
drawflip=-1
}
if(minigame==0){
mewep_scr(moveaction)
//WepDraw Behind
if(nowep<=0){
if(direction!=0&&wepdrawx!=0&&wepdrawy!=0){
draw_sprite_ext(mewep, Control.charEquip[Control.charselected,6], x+wepdrawx, y+wepdrawy, drawflip, image_yscale, wepangle+180, image_blend, image_alpha)
}}
//SpriteDraw
persondraw_scr()
//WepDraw Front
if(nowep<=0){
if(direction==0&&wepdrawx!=0&&wepdrawy!=0){
draw_sprite_ext(mewep, Control.charEquip[Control.charselected,6], x+wepdrawx, y+wepdrawy, drawflip, image_yscale, wepangle, image_blend, image_alpha)
}}
if(abilpassivedraw!=0){
abilpassivedraw_scr(Control.charArray[Control.charselected,8])
}
}else{
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,1)
}

statusdraw_scr()

// Restore real position
x=_real_x
y=_real_y
}
//draw_sprite(title_spr,0,view_xview[0]+50,view_yview[0]+50)
//draw_text(x,y-10,Control.charArray[Control.charselected,3])
//draw_text(x,y-20,shields)
//draw_text(x+50,y-10,action)

