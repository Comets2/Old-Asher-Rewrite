function worldtwo_rm1_controldraw_scr() {

	if(instance_exists(Dummy_object)){
	with(Dummy_object){
	//Anchor
	if(pin==70){
	/*
	if(duration>0){
	var x1, y1, x2, y2, spr, dist, dir, w, r, xx, yy, xo, yo;
	x1=x;
	y1=y;
	x2=startx-2;
	y2=starty+3;
	spr=rope_spr;

	w=sprite_get_width(spr);
	xo=sprite_get_xoffset(spr);
	yo=sprite_get_yoffset(spr);

	dist=point_distance(x1, y1, x2, y2);
	dir=point_direction(x1, y1, x2, y2);

	for (r=0; r<dist; r+=w) {
	  if (r<dist - w) {
	    xx = x1 + lengthdir_x(r, dir);
	    yy = y1 + lengthdir_y(r, dir);
	    draw_sprite_ext(spr, 0, xx, yy, 1, 1, dir, c_white, 1);
	  }
	}
	// Take care of partial-pieces if the rope length is not a multiple of the sprite width 
	if (r > dist) {
	  r-=w+floor(point_distance(0, 0, xo, yo));
	  xx = x1 + lengthdir_x(r, dir)+lengthdir_x(xo, dir+90);
	  yy = y1 + lengthdir_y(r, dir)+lengthdir_y(yo, dir+90);
	  draw_sprite_general(spr, 0, 0, 0, dist-r, sprite_get_height(spr), xx, yy, 1, 1, dir, c_white, c_white, c_white, c_white, 1);
	}}
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	*/
	}}

	}

	if(room==Worldtwo_rm1_part2){
	if(rangeneeded==1){
	if(miss<=0){
	if(firetick==0){
	if(firetime<28){
	firetime+=0.5
	}else{
	firetick=1
	}}else{
	if(firetick==1){
	if(firetime>0){
	firetime-=0.5
	}else{
	firetick=0
	}}}}
	draw_sprite(cannon_info_spr,0,Me.x+35,Me.y-40)
	if(miss<=0){
	draw_sprite(cannon_fire_spr,0,Me.x+40,Me.y-20)
	}else{
	draw_sprite(cannon_fire_spr,2+misstype,Me.x+40,Me.y-20)
	}
	draw_sprite(cannon_fire_spr,1,Me.x+40,Me.y-19+firetime)
	}
	with(Dummy_two_object){
	if(pin==75){
	if(cannonvsp==0){
	draw_sprite(cannon_spr,cannonhsp,x,y)
	}else{
	if(cannonvsp==1){
	draw_sprite(cannon_up_spr,cannonhsp,x,y)
	}else{
	if(cannonvsp==2){
	draw_sprite(cannon_upup_spr,cannonhsp,x,y)
	}}}}}


	//Health
	xposone=__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-sprite_get_width(shiphealth_spr)
	yposone=__view_get( e__VW.YView, 0 )+24
	draw_sprite(shiphealth_spr,0,xposone,yposone)
	xpos=1
	ypos=12
	for(i=0;i<ship.hp/4;i+=1){
	xpos+=6
	if(i+1>=(ship.hp/4)){
	mehealth=(ship.hp-i*4)
	draw_sprite(life, mehealth, xposone+xpos, yposone+ypos);
	}else{
	draw_sprite(life, 4, xposone+xpos, yposone+ypos);
	}}

	xpos=1-100
	ypos=35
	for(i=0;i<ship.hp/4;i+=1){
	xpos+=6
	if(i+1>=(ship.hp/4)){
	mehealth=(ship.hp-i*4)
	draw_sprite(life, mehealth, xposone+xpos, yposone+ypos);
	}else{
	draw_sprite(life, 4, xposone+xpos, yposone+ypos);
	}}
	}



}
