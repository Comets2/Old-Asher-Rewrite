function equipment_store_scr() {
	//________________________________________________________________************<<{STORE OPTION SELECT}>>************________________________________________________________________
	if(equipopt==0){
	if(storeloaded==1){
	storeloaded=0
	storecreate_scr()
	}

	if(con_p_enter||con_p_e||conp_p_space||conp_p_enter){
	//Equipment
	if(equipopttwo==0){
	equipopt=1
	equipopttwo=0
	}else{
	//Masks
	if(equipopttwo==1){
	equipopt=2
	equipopttwo=0
	}else{
	//Cancel
	if(equipopttwo==2){
	pause=1
	option=0
	}}}
	}

	if(con_p_escape||conp_p_escape||con_p_w||conp_p_q){
	pause=1
	option=0
	}

	if(con_p_down||conp_p_down){
	if(equipopttwo<2){
	equipopttwo+=1
	}else{
	equipopttwo=0
	}}else{
	if(con_p_up||conp_p_up){
	if(equipopttwo>0){
	equipopttwo-=1
	}else{
	equipopttwo=2
	}}}
	}else{
	//________________________________________________________________************<<{STORE EQUIPMENT}>>************________________________________________________________________
	if(equipopt==1){
	if(con_p_enter||con_p_e||conp_p_space||conp_p_enter){
	if(charArray[charselected,11]>=storeArray[equipopttwo,1]){
	equipoptthree=0
	equipopt=3
	}}

	if(con_p_escape||conp_p_escape||con_p_w||conp_p_q){
	equipopt=0
	equipopttwo=0
	}

	if(con_p_down||conp_p_down){
	if(equipopttwo<8){
	equipopttwo+=1
	}else{
	equipopttwo=0
	}}else{
	if(con_p_up||conp_p_up){
	if(equipopttwo>0){
	equipopttwo-=1
	}else{
	equipopttwo=8
	}}}
	}else{
	//________________________________________________________________************<<{STORE MASKS}>>************________________________________________________________________
	if(equipopt==2){
	if(con_p_down||conp_p_down){
	if(equipopttwo<1){
	equipopttwo+=1
	}else{
	equipopttwo=0
	}}else{
	if(con_p_up||conp_p_up){
	if(equipopttwo>0){
	equipopttwo-=1
	}else{
	equipopttwo=1
	}}}

	}else{
	//________________________________________________________________************<<{Confirm Purchase}>>************________________________________________________________________
	if(equipopt==3){
	if(con_p_enter||con_p_e||conp_p_space||conp_p_enter){
	charArray[charselected,11]-=storeArray[equipopttwo,1]
	equipopt=1

	itemcreate=equipopttwo+9
	itemscreate_scr()
	itemtotal+=1
	equipopttwo=0
	}

	if(con_p_escape||conp_p_escape||con_p_w||conp_p_q){
	equipopt=1
	}

	if(con_p_down||conp_p_down){
	if(equipoptthree<1){
	equipoptthree+=1
	}else{
	equipoptthree=0
	}}else{
	if(con_p_up||conp_p_up){
	if(equipoptthree>0){
	equipoptthree-=1
	}else{
	equipoptthree=1
	}}}
	}}}}



}
