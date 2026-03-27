if(startanim>=0){
if(direction==0||direction==20||direction==340){
draw_sprite(startanimspr,startanim,startx+6,starty)
}else{
draw_sprite(startanimspr,startanim,startx-6,starty)
}
startanim+=1
if(startanim>=startanimdur){
startanim=-1
}}else{
if(startanim==-2){
var x1, y1, x2, y2, spr, dist, dir, w, r, xx, yy, xo, yo;
x1=x;
y1=y;
x2=Me.x+10;
y2=Me.y+16;
if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
spr=abil_tree2_vine
}else{
if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
spr=abil_tree2_vine_pirate
}else{
spr=abil_tree2_vine
}}

w=sprite_get_width(spr);
xo=sprite_get_xoffset(spr);
yo=sprite_get_yoffset(spr);

dist=point_distance(x1, y1, x2, y2);
dir=point_direction(x1, y1, x2, y2);

for (r=0; r<dist; r+=w) {
  if (r<dist - w) {
    xx = x1 + lengthdir_x(r, dir);
    yy = y1 + lengthdir_y(r, dir);
    draw_sprite_ext(spr, version-1, xx, yy, 1, 1, dir, c_white, 1);
  }
}
// Take care of partial-pieces if the rope length is not a multiple of the sprite width 
if (r > dist) {
  r-=w+floor(point_distance(0, 0, xo, yo));
  xx = x1 + lengthdir_x(r, dir)+lengthdir_x(xo, dir+90);
  yy = y1 + lengthdir_y(r, dir)+lengthdir_y(yo, dir+90);
  draw_sprite_general(spr, version-1, 0, 0, dist-r, sprite_get_height(spr), xx, yy, 1, 1, dir, c_white, c_white, c_white, c_white, 1);
}

}}

//draw_text(x,y-10,shield)
//draw_text_ext_transformed(x,y-30,option,5,120,0.75,0.75,0)

draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

