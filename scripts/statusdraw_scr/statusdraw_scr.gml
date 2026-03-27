function statusdraw_scr() {
	if(hurt>0&&immune==0&&id!=Me.id){
	draw_text_ext_transformed_color(x+xmid-5,(y-10)+hurt/2,string_hash_to_newline(drdraw),5,120,0.5,0.5,0,c_maroon,c_maroon,c_maroon,c_maroon,1)
	}



}
