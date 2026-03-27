draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

if(startanim>=0){
if(direction==0||direction==20||direction==340){
draw_sprite(startanimspr,startanim,startx+6,starty)
}else{
draw_sprite(startanimspr,startanim,startx-6,starty)
}
startanim+=1
if(startanim>=startanimdur){
startanim=-1
}}

//draw_text(x,y-5,creator)
//draw_text(x,y-25,phase)


