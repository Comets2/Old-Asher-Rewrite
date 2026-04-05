function charloadhelp_scr(argument0) {
	//**CHARACTERS**
	file_text_readln(loadslot)

	for(i=0;i<13;i+=1){
	charArray[argument0,i]=file_text_read_real(loadslot)
	//new line
	file_text_readln(loadslot)
	}

	//**EQUIPMENTS**
	file_text_readln(loadslot)

	for(i=0;i<7;i+=1){
	charEquip[argument0,i]=file_text_read_real(loadslot)
	//new line
	file_text_readln(loadslot)
	}

	//**MASKS**
	file_text_readln(loadslot)

	for(i=0;i<10;i+=1){
	for(j=0;j<10;j+=1){
	//masks
	maskArray[i,j]=file_text_read_real(loadslot)
	//new line
	file_text_readln(loadslot)
	}}

	//**MASKS STATS**
	file_text_readln(loadslot)

	for(i=0;i<16;i+=1){
	for(j=0;j<16;j+=1){
	//stats
	statsArray[i,j]=file_text_read_real(loadslot)
	//new line
	file_text_readln(loadslot)
	}}

	//**LEVEL**
	file_text_readln(loadslot)

	for(i=0;i<30;i+=1){
	for(j=0;j<16;j+=1){
	//stats
	levelsArray[i,j]=file_text_read_real(loadslot)
	//new line
	file_text_readln(loadslot)
	}}

	//end
	file_text_close(loadslot)

	//************************************************************EXTRA************************************************************
	if(file_exists("Extra.sav")){

	loadslot=file_text_open_read("Extra.sav")

	worldlock=file_text_read_real(loadslot)
	file_text_readln(loadslot)

	worldlast=file_text_read_real(loadslot)
	file_text_readln(loadslot)

	world=file_text_read_real(loadslot)
	file_text_readln(loadslot)

	if(!file_text_eof(loadslot)){
	heartcontainers=file_text_read_real(loadslot)
	file_text_readln(loadslot)
	}
	if(!file_text_eof(loadslot)){
	bosshearts=file_text_read_real(loadslot)
	file_text_readln(loadslot)
	}

	world=worldlast

	file_text_close(loadslot)

	if(world==2){
	overworldlevels_scr(99)
	}
	}
	world=1



}
