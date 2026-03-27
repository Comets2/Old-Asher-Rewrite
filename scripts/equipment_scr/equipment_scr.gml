function equipment_scr() {
	if(equipopt==0){
	equipselected=0
	if(ending<=0||ending==6){
	itemselected=4
	}
	equipopt=1
	equipopttwo=0
	equipcheck=0
	equipcheck=1
	itemdrawtick=4
	itemdrawbase=0
	itemtotalsafety=0
	}else{
	//________________________________________________________________************<<{INVENTORY}>>************________________________________________________________________
	if(equipopt==1){
	if(con_p_enter||con_p_e||conp_p_space||conp_p_enter){
	if(itemtotal>0){
	equipopt=2
	equipopttwo=0
	}}
	if(delay<=0){
	if(con_p_escape||conp_p_escape||con_p_w||conp_p_q){
	if(ending<=0){
	pause=1
	option=0
	}else{
	pause=4
	equipopt=0
	equipopttwo=0
	if(ending==5){
	if(chesttimes==0){
	chesttimes=1
	equipopt=0
	chestticktwo=0
	chesttickthree=0
	chesttick=0
	ending=4
	}else{
	ending=10
	}}}}}
	if(itemtotal>0){
	if(con_p_down||conp_p_down){
	if(itemselected<itemtotal+3){
	itemselected+=1
	}else{
	itemselected=4
	}}else{
	if(con_p_up||conp_p_up){
	if(itemselected>4){
	itemselected-=1
	}else{
	itemselected=itemtotal+3
	}}}}

	}else{
	//________________________________________________________________************<<{Equip Sell Cancel}>>************________________________________________________________________
	if(equipopt==2){
	if(con_p_enter||con_p_e||conp_p_space||conp_p_enter){
	//Equip
	if(equipopttwo==0){
	if(itemtotal>0){
	equipopt=3
	equipopttwo=0
	}}else{
	//UNequip
	if(equipopttwo==1){
	if(itemtotal>0){
	for(a=0;a<3;a+=1){
	if(itemsArray[itemselected,16]==itemsArray[a+1,16]){
	for(i=0;i<17;i+=1){
	if(i==15){
	itemsArray[a+1,i]="EMPTY"
	}else{
	itemsArray[a+1,i]=0
	}}}}
	equipopt=1
	equipcheck=1
	}}else{
	//Sell
	if(equipopttwo==2){
	if(itemtotal>0){
	equipopt=4
	equipopttwo=0
	}}else{
	//Cancel
	if(equipopttwo==3){
	equipopt=1
	}}}}
	}
	if(con_p_escape||conp_p_escape||con_p_w||conp_p_q){
	equipopt=1
	delay=3
	}
	if(con_p_down||conp_p_down){
	if(equipopttwo<3){
	equipopttwo+=1
	}else{
	equipopttwo=0
	}}else{
	if(con_p_up||conp_p_up){
	if(equipopttwo>0){
	equipopttwo-=1
	}else{
	equipopttwo=3
	}}}

	}else{
	//________________________________________________________________************<<{EQUIP SLOTS}>>************________________________________________________________________
	if(equipopt==3){
	if(con_p_enter||con_p_e||conp_p_space||conp_p_enter){
	equipopt=1
	if(equipopttwo!=3){
	for(a=0;a<3;a+=1){
	if(itemsArray[itemselected,0]==itemsArray[a+1,0]){
	for(i=0;i<17;i+=1){
	if(i==15){
	itemsArray[a+1,i]="EMPTY"
	}else{
	itemsArray[a+1,i]=0
	}}}}
	for(i=0;i<17;i+=1){
	itemsArray[equipopttwo+1,i]=itemsArray[itemselected,i]
	}
	equipcheck=1
	}
	}
	if(con_p_escape||conp_p_escape||con_p_w||conp_p_q){
	equipopt=1
	delay=3
	}
	if(con_p_down||conp_p_down){
	if(equipopttwo<3){
	equipopttwo+=1
	}else{
	equipopttwo=0
	}}else{
	if(con_p_up||conp_p_up){
	if(equipopttwo>0){
	equipopttwo-=1
	}else{
	equipopttwo=3
	}}}

	}else{
	//________________________________________________________________************<<{SELL}>>************________________________________________________________________
	if(equipopt==4){
	if(con_p_enter||con_p_e||conp_p_space||conp_p_enter){
	if(equipopttwo==0){
	equipopt=1
	}else{
	//SELL
	if(equipopttwo==1){

	if(ending==6){
	justsold=1
	}else{
	if(itemsArray[itemselected,16]==itemsArray[itemtotal+3,16]){
	justsold=1
	}}

	Control.charArray[Control.charselected,11]+=floor(itemsArray[itemselected,1]*0.5)

	for(a=0;a<3;a+=1){
	if(itemsArray[itemselected,16]==itemsArray[a+1,16]){
	for(i=0;i<17;i+=1){
	if(i==15){
	itemsArray[a+1,i]="EMPTY"
	}else{
	itemsArray[a+1,i]=0
	}}}}

	for(a=itemselected;a<itemtotal+4;a+=1){
	for(b=0;b<17;b+=1){
	if(a<itemtotal+3){
	itemsArray[a,b]=itemsArray[a+1,b]
	}else{
	if(i==15){
	itemsArray[a,b]="EMPTY"
	}else{
	itemsArray[a,b]=0
	}
	}}}
	itemtotal-=1
	equipopt=1
	itemselected=4
	equipcheck=1
	}}
	}
	if(con_p_escape||conp_p_escape||con_p_w||conp_p_q){
	equipopt=1
	delay=3
	}
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

	}}}}
	//________________________________________________________________************<<{ALWAYS}>>************________________________________________________________________


	//________________________________________________________________************<<{LOAD GEAR STATS}>>************________________________________________________________________
	if(equipcheck==1){
	equipcheck=0
	//Loop
	for(a=2;a<13;a+=1){
	itemsArray[0,a]=itemsArray[1,a]+itemsArray[2,a]+itemsArray[3,a]
	if(a==4||a==5||a==6){
	itemsArray[0,a]+=1
	}}
	//Out of loop
	if(itemsArray[0,10]>50){
	itemsArray[0,10]=50
	}
	Me.meequipcheck=1

	//________________________________________________________________************<<{Equipment Save}>>************________________________________________________________________
	if(file_exists("Equipment.sav")){
	file_delete("Equipment.sav")
	}

	saveslot = file_text_open_write("Equipment.sav")

	file_text_write_real(saveslot,itemtotal)
	file_text_writeln(saveslot)

	file_text_write_real(saveslot,itemid)
	file_text_writeln(saveslot)

	for(a=0;a<itemtotal+4;a+=1){
	for(b=0;b<17;b+=1){
	//Equipment
	if(b==15){
	file_text_write_string(saveslot,itemsArray[a,b])
	}else{
	file_text_write_real(saveslot,itemsArray[a,b])
	}
	//new line
	file_text_writeln(saveslot)
	}}

	file_text_close(saveslot)
	}}



}
