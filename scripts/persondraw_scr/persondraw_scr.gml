function persondraw_scr() {
	if(direction==0){
	extrax=0
	}else{
	extrax=20
	}
	with(Control){
	if(maskArray[charArray[charselected,8],2]==0){
	helmskin=helm_spr
	}else{
	if(maskArray[charArray[charselected,8],2]==1){
	helmskin=helm_spr_alt1
	}else{
	if(maskArray[charArray[charselected,8],2]==2){
	helmskin=helm_spr_alt2
	}else{
	if(maskArray[charArray[charselected,8],2]==3){
	helmskin=helm_spr_alt2
	}else{


	}}}}
	}

	if(hurt<=0){
	if(Control.nohair<2){
	draw_sprite_ext(heads_spr, 0, x+persondrawx+extrax, y+persondrawy, drawflip, image_yscale, image_angle, skincolor, image_alpha);
	}else{
	draw_sprite_ext(heads_spr, 1, x+persondrawx+extrax, y+persondrawy, drawflip, image_yscale, image_angle, skincolor, image_alpha);
	}
	draw_sprite_ext(eyes_spr, 0, x+persondrawx+extrax, y+persondrawy, drawflip, image_yscale, image_angle, image_blend, image_alpha);
	if(Control.nohair==0){
	draw_sprite_ext(hair_spr, 0, x+persondrawx+extrax, y+persondrawy, drawflip, image_yscale, image_angle, haircolor, image_alpha);
	}
	draw_sprite_ext(extra_spr, 0, x+persondrawx+extrax, y+persondrawy, drawflip, image_yscale, image_angle, haircolor, image_alpha);
	draw_sprite_ext(eyebrows_spr, 0, x+persondrawx+extrax, y+persondrawy, drawflip, image_yscale, image_angle, haircolor, image_alpha);

	draw_sprite_ext(shirt_alone, Control.charEquip[Control.charselected,3], x+persondrawx+extrax, y+persondrawy, drawflip, image_yscale, image_angle, image_blend, image_alpha);
	draw_sprite_ext(belt_alone, Control.charEquip[Control.charselected,2], x+persondrawx+extrax, y+persondrawy, drawflip, image_yscale, image_angle, image_blend, image_alpha);
	draw_sprite_ext(pants_alone, action, x+persondrawx+extrax, y+persondrawy, drawflip, image_yscale, image_angle, pantcolor, image_alpha);
	draw_sprite_ext(boots_alone, action, x+persondrawx+extrax, y+persondrawy, drawflip, image_yscale, image_angle, image_blend, image_alpha);
	draw_sprite_ext(arms_alone, action, x+persondrawx+extrax, y+persondrawy, drawflip, image_yscale, image_angle, armcolor, image_alpha);
	draw_sprite_ext(hands_alone, action, x+persondrawx+extrax, y+persondrawy, drawflip, image_yscale, image_angle, skincolor, image_alpha);
	if(Control.charEquip[Control.charselected,5]<999){
	if(Control.helmanimspr!=0){
	Control.imgindexsecure+=0.3
	draw_sprite_ext(Control.helmanimspr, Control.imgindexsecure, x+persondrawx+extrax, y+persondrawy, drawflip, image_yscale, image_angle, image_blend, image_alpha);
	}
	if(Control.charEquip[Control.charselected,5]>=6&&image_index<3){
	draw_sprite_ext(Control.helmskin, Control.charEquip[Control.charselected,5]+1, x+persondrawx+extrax, y+persondrawy, drawflip, image_yscale, image_angle, image_blend, image_alpha);
	}else{
	draw_sprite_ext(Control.helmskin, Control.charEquip[Control.charselected,5], x+persondrawx+extrax, y+persondrawy, drawflip, image_yscale, image_angle, image_blend, image_alpha);
	}
	}}else{
	if(Control.nohair<2){
	draw_sprite_ext(heads_spr, 0, x+persondrawx+extrax, y+persondrawy, drawflip, image_yscale, image_angle, image_blend, image_alpha);
	}else{
	draw_sprite_ext(heads_spr, 1, x+persondrawx+extrax, y+persondrawy, drawflip, image_yscale, image_angle, Control.skincolor, image_alpha);
	}
	draw_sprite_ext(eyes_spr, 0, x+persondrawx+extrax, y+persondrawy, drawflip, image_yscale, image_angle, image_blend, image_alpha);
	if(Control.nohair==0){
	draw_sprite_ext(hair_spr, 0, x+persondrawx+extrax, y+persondrawy, drawflip, image_yscale, image_angle, image_blend, image_alpha);
	}
	draw_sprite_ext(extra_spr, 0, x+persondrawx+extrax, y+persondrawy, drawflip, image_yscale, image_angle, image_blend, image_alpha);
	draw_sprite_ext(eyebrows_spr, 0, x+persondrawx+extrax, y+persondrawy, drawflip, image_yscale, image_angle, image_blend, image_alpha);

	draw_sprite_ext(shirt_alone, Control.charEquip[Control.charselected,3], x+persondrawx+extrax, y+persondrawy, drawflip, image_yscale, image_angle, image_blend, image_alpha);
	draw_sprite_ext(belt_alone, Control.charEquip[Control.charselected,2], x+persondrawx+extrax, y+persondrawy, drawflip, image_yscale, image_angle, image_blend, image_alpha);
	draw_sprite_ext(pants_alone, action, x+persondrawx+extrax, y+persondrawy, drawflip, image_yscale, image_angle, image_blend, image_alpha);
	draw_sprite_ext(boots_alone, action, x+persondrawx+extrax, y+persondrawy, drawflip, image_yscale, image_angle, image_blend, image_alpha);
	draw_sprite_ext(arms_alone, action, x+persondrawx+extrax, y+persondrawy, drawflip, image_yscale, image_angle, image_blend, image_alpha);
	draw_sprite_ext(hands_alone, action, x+persondrawx+extrax, y+persondrawy, drawflip, image_yscale, image_angle, image_blend, image_alpha);
	if(Control.charEquip[Control.charselected,5]<999){
	if(Control.helmanimspr!=0){
	Control.imgindexsecure+=0.3
	draw_sprite_ext(Control.helmanimspr, Control.imgindexsecure, x+persondrawx+extrax, y+persondrawy, drawflip, image_yscale, image_angle, image_blend, image_alpha);
	}
	draw_sprite_ext(Control.helmskin, Control.charEquip[Control.charselected,5], x+persondrawx+extrax, y+persondrawy, drawflip, image_yscale, image_angle, image_blend, image_alpha);
	}}



}
