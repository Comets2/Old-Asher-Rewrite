function simple_enemy_scr(argument0) {
	if(argument0==1){
	if(check==1){
	hp=7
	entypes=2
	check=1
	option=1
	dir=choose(0,1)
	needsgrav=1
	sprite_index=tree_w
	if(room==Forest_rm3){
	sprite_index=slime_spr
	hp=7
	walksnd1=slimewalk1_snd
	walksnd2=slimewalk2_snd
	needsgrav=0
	}
	mask_index=sprite_index
	xmid=sprite_width/2
	ymid=sprite_height/2
	check=0
	sounddelay=0
	}
	if(point_distance(x,y,Me.x,Me.y)<275){
	if(image_index<=1&&sounddelay<=0){
	sounddelay=3
	chance=choose(0,1)
	if(chance==0){
	chance=walksnd1
	}else{
	chance=walksnd2
	}
	sfx_play_at(chance, x+8, y+8, 0, 90, 150, 1, false, 1)
	}else{
	if(sounddelay>0){
	sounddelay-=1
	}}}
	simplemove_scr(0)
	}



}
