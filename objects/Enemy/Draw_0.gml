if(dir==1){
drawflip=-1
if(wep!=0){
draw_sprite_ext(enemyweps_spr, wep, x+xaction, y+yaction, drawflip, image_yscale, wepangle, image_blend, image_alpha);
}
draw_sprite_ext(sprite_index, image_index, x+sprite_width, y, drawflip, image_yscale, image_angle, image_blend, image_alpha);
}else{
drawflip=1
draw_sprite_ext(sprite_index, image_index, x, y, drawflip, image_yscale, image_angle, image_blend, image_alpha);
if(wep!=0){
draw_sprite_ext(enemyweps_spr, wep, x+xaction, y+yaction, drawflip, image_yscale, wepangle, image_blend, image_alpha);
}}

statusdraw_scr()

//draw_text(x,y-15,hp)

/*
if(point_distance(Me.x+10,Me.y+6,x+14,y+14)<150){
draw_line(x+10,y+10,Me.x+10,Me.y+10)
}

/* */
/*  */
