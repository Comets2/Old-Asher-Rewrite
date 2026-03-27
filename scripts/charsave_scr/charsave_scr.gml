function charsave_scr(argument0) {

	if(argument0==0){
	if(file_exists("Charslot1.sav")){
	file_delete("Charslot1.sav")
	}
	saveslot = file_text_open_write("Charslot1.sav")
	}else{
	if(argument0==1){
	if(file_exists("Charslot2.sav")){
	file_delete("Charslot2.sav")
	}
	saveslot = file_text_open_write("Charslot2.sav")
	}else{
	if(argument0==2){
	if(file_exists("Charslot3.sav")){
	file_delete("Charslot3.sav")
	}
	saveslot = file_text_open_write("Charslot3.sav")
	}}}

	//**CHARACTER**
	file_text_write_string(saveslot,"**CHARACTER**")
	//new line
	file_text_writeln(saveslot)

	for(i=0;i<13;i+=1){
	file_text_write_real(saveslot,charArray[argument0,i])
	//new line
	file_text_writeln(saveslot)
	}

	//**EQUPMENTS**
	file_text_write_string(saveslot,"**EQUPMENTS**")
	//new line
	file_text_writeln(saveslot)

	for(i=0;i<7;i+=1){
	file_text_write_real(saveslot,charEquip[argument0,i])
	//new line
	file_text_writeln(saveslot)
	}

	//**MASKS**
	file_text_write_string(saveslot,"**MASKS**")
	//new line
	file_text_writeln(saveslot)

	for(i=0;i<10;i+=1){
	for(j=0;j<10;j+=1){
	//masks
	file_text_write_real(saveslot,maskArray[i,j])
	//new line
	file_text_writeln(saveslot)
	}}
	//**MASKS STATS**
	file_text_write_string(saveslot,"**MASKS STATS**")
	//new line
	file_text_writeln(saveslot)
	//**MASK STATS**
	for(i=0;i<16;i+=1){
	for(j=0;j<16;j+=1){
	//masks
	file_text_write_real(saveslot,statsArray[i,j])
	//new line
	file_text_writeln(saveslot)
	}}
	//**LEVELS**
	file_text_write_string(saveslot,"**LEVEL INFO**")
	//new line
	file_text_writeln(saveslot)
	//**MASK STATS**
	for(i=0;i<30;i+=1){
	for(j=0;j<16;j+=1){
	//masks
	file_text_write_real(saveslot,levelsArray[i,j])
	//new line
	file_text_writeln(saveslot)
	}}
	//end
	file_text_close(saveslot)

	if(itemsloaded==1){
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
	}

	//________________________________________________________________************<<{Extras Save}>>************________________________________________________________________
	if(file_exists("Extra.sav")){
	file_delete("Extra.sav")
	}
	saveslot = file_text_open_write("Extra.sav")

	file_text_write_real(saveslot,worldlock)
	file_text_writeln(saveslot)

	file_text_write_real(saveslot,worldlast)
	file_text_writeln(saveslot)

	file_text_write_real(saveslot,world)
	file_text_writeln(saveslot)

	file_text_close(saveslot)



}
