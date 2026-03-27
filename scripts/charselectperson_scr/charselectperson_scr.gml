function charselectperson_scr() {
	/*CharArray_add(charslot,Hair,Skin,Beard,Brow,Eye)
	0 - Skin
	1 - Eyes
	2 - Hair
	3 - Beard
	4 - Brow
	5 - Hair Color
	*/
	drawspotx=53
	drawspoty=0
	if(pausesafetytwo==1){

	with(Me){
	image_speed=0.25
	if(other.nohair<2){
	draw_sprite_ext(heads_spr, other.charArray[other.i,0], x+other.drawspotx, y+other.drawspoty, image_xscale, image_yscale, image_angle, skincolor, image_alpha);
	}else{
	draw_sprite_ext(heads_spr, 1, x+other.drawspotx, y+other.drawspoty, image_xscale, image_yscale, image_angle, skincolor, image_alpha);
	}

	draw_sprite_ext(eyes_spr, other.charArray[other.i,1], x+other.drawspotx, y+other.drawspoty, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	if(other.nohair==0){
	draw_sprite_ext(hair_spr, other.charArray[other.i,2], x+other.drawspotx, y+other.drawspoty, image_xscale, image_yscale, image_angle, haircolor, image_alpha);
	}
	draw_sprite_ext(extra_spr, other.charArray[other.i,3], x+other.drawspotx, y+other.drawspoty, image_xscale, image_yscale, image_angle, haircolor, image_alpha);
	draw_sprite_ext(eyebrows_spr, other.charArray[other.i,4], x+other.drawspotx, y+other.drawspoty, image_xscale, image_yscale, image_angle, haircolor, image_alpha);

	draw_sprite_ext(shirt_alone, other.charEquip[other.i,3], x+other.drawspotx, y+other.drawspoty, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	draw_sprite_ext(belt_alone, other.charEquip[other.i,2], x+other.drawspotx, y+other.drawspoty, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	draw_sprite_ext(pants_alone, 0, x+other.drawspotx, y+other.drawspoty, image_xscale, image_yscale, image_angle, pantcolor, image_alpha);
	draw_sprite_ext(boots_alone, 0, x+other.drawspotx, y+other.drawspoty, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	draw_sprite_ext(arms_alone, 0, x+other.drawspotx, y+other.drawspoty, image_xscale, image_yscale, image_angle, armcolor, image_alpha);
	draw_sprite_ext(hands_alone, 0, x+other.drawspotx, y+other.drawspoty, image_xscale, image_yscale, image_angle, skincolor, image_alpha);
	if(other.charEquip[other.i,5]<999){
	if(other.charEquip[other.i,5]>=6&&image_index<3){
	draw_sprite_ext(other.helmskin, other.charEquip[other.i,5]+1, x+other.drawspotx, y+other.drawspoty, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	}else{
	draw_sprite_ext(other.helmskin, other.charEquip[other.i,5], x+other.drawspotx, y+other.drawspoty, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	}}
	}
	}

	drawspoty+=28




}
