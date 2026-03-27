if(room!=Circus_rm1&&room!=Forest_rm4){
if(dir==1){
drawflip=-1
if(wep!=0){
draw_sprite_ext(enemyweps_spr, wep, x+xaction, y+yaction, drawflip, image_yscale, wepangle, image_blend, image_alpha);
}
draw_sprite_ext(sprite_index, image_index, x+20, y, drawflip, image_yscale, image_angle, image_blend, image_alpha);
}else{
drawflip=1
draw_sprite_ext(sprite_index, image_index, x, y, drawflip, image_yscale, image_angle, image_blend, image_alpha);
if(wep!=0){
draw_sprite_ext(enemyweps_spr, wep, x+xaction, y+yaction, drawflip, image_yscale, wepangle, image_blend, image_alpha);
}}
}else{
if(room==Circus_rm1){
backupimagespeed+=0.2
//ROBOT
if(dir==1){
drawflip=-1
}else{
drawflip=1
}

//Hand2
if(phase==0){
draw_sprite_ext(roboclown_guntwo_spr, 0, x+24, y-height+52, drawflip, image_yscale, armangle, c_white, image_alpha);
}else{
draw_sprite_ext(roboclown_guntwo_spr, backupimagespeed*2, x+24, y-height+52, drawflip, image_yscale, armangle, c_white, image_alpha);
}
//Motor
draw_sprite_ext(sprite_index, 1, x, y, drawflip, image_yscale, 0, image_blend, image_alpha);
//Key
draw_sprite_ext(roboclown_key_spr, backupimagespeed, x, y-height, drawflip, image_yscale, image_angle, c_white, image_alpha);
//Robo
draw_sprite_ext(sprite_index, robosprite, x, y-height, drawflip, image_yscale, image_angle, c_white, image_alpha);
//Arm
draw_sprite_ext(roboclown_arm_spr, 1, x+27, y-height+52, drawflip, image_yscale, armangle, c_white, image_alpha);
//Hand1
if(phase==0){
draw_sprite_ext(roboclown_gun_spr, 0, x+27, y-height+52, drawflip, image_yscale, armangle, c_white, image_alpha);
}else{
draw_sprite_ext(roboclown_gun_spr, backupimagespeed*2, x+27, y-height+52, drawflip, image_yscale, armangle, c_white, image_alpha);
}
//Traction
draw_sprite_ext(roboclown_traction_spr, distancetrav, x, y, drawflip, image_yscale, 0, c_white, image_alpha);
}

statusdraw_scr()

if(draw>0){
draw_sprite(x+20,y+20,image_index,drawsprite)
draw-=1
}
else{
if(room==Forest_rm4){
draw_sprite(tree_boss_spr,0,x,y)
draw_sprite(tree_boss_eye_spr,1,x+61+eyex,y+88+eyey)
draw_sprite(tree_boss_eye_spr,1,x+95+eyex,y+88+eyey)
draw_sprite(tree_boss_spr,1,x,y)
draw_sprite(tree_boss_walk_spr,anim,x-95,y+125)

}
}}

