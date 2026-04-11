function itemsload_scr() {
	//itemsArray[]abilarray_add(0-itemslot,0-itemid,1-Value,2-Hp,3-Mana,4-Damage,5-Regen,6-Movespeed,7-Xp,8-Gold,9-Looting,10-Avoidence,11-Lifesteal,12-Hp negitive,13-Move negitive,14-Rarity)
	//itemsarray_add(0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0)
	//itemsarray_add(0,0,0,12,100,1.5,3,1.50,100,100,100,25,100,0,0,0)

	if(file_exists("Equipment.sav")){
	loadslot=file_text_open_read("Equipment.sav")

	itemtotal=file_text_read_real(loadslot)
	file_text_readln(loadslot)

	itemid=file_text_read_real(loadslot)
	file_text_readln(loadslot)

	for(a=0;a<itemtotal+4;a+=1){
	for(b=0;b<17;b+=1){
	//stats
	if(b==15){
	itemsArray[a,b]=file_text_read_string(loadslot)
	}else{
	itemsArray[a,b]=file_text_read_real(loadslot)
	}
	//new line
	file_text_readln(loadslot)
	}}
	//end
	file_text_close(loadslot)

	}else{
	itemsarray_add(0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0)
	itemsArray[0,15]="FALSE"
	itemsArray[0,16]=0
	itemsarray_add(1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
	itemsArray[1,15]="Empty"
	itemsArray[1,16]=0
	itemsarray_add(2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
	itemsArray[2,15]="Empty"
	itemsArray[2,16]=0
	itemsarray_add(3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
	itemsArray[3,15]="Empty"
	itemsArray[3,16]=0

	itemtotal=0
	itemid=1

	for(a=0;a<44;a+=1){
	for(b=0;b<17;b+=1){
	if(b==15){
	itemsArray[a,b]="Empty"
	}else{
	itemsArray[a,b]=0
	}}}}

	//TEST: Start with Legendary Honey Comb equipped in slot 1
	itemsarray_add(4,1,500,6,0,0.06,0,0,0,0,0,0,0,0,0,colrare5)
	itemsArray[4,15]="Honey Comb"
	itemid+=1
	itemsArray[4,16]=itemid
	for(b=0;b<17;b+=1){
	itemsArray[1,b]=itemsArray[4,b]
	}
	itemtotal=1

	bonus=0
	itemcap=40

	//________________________________________________________________************<<{Equipment Save}>>************________________________________________________________________
	equipselected=0
	itemselected=4
	equipopt=1
	equipopttwo=0
	equipcheck=0
	equipcheck=1
	itemdrawtick=4
	itemdrawbase=0
	itemtotalsafety=0

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


	/*
	itemcreate=0
	itemscreate_scr()
	itemtotal+=1

	itemcreate=1
	itemscreate_scr()
	itemtotal+=1

	itemcreate=2
	itemscreate_scr()
	itemtotal+=1

	itemcreate=3
	itemscreate_scr()
	itemtotal+=1

	itemcreate=4
	itemscreate_scr()
	itemtotal+=1

	itemcreate=5
	itemscreate_scr()
	itemtotal+=1

	itemcreate=6
	itemscreate_scr()
	itemtotal+=1

	itemcreate=7
	itemscreate_scr()
	itemtotal+=1

	itemcreate=8
	itemscreate_scr()
	itemtotal+=1

	itemcreate=9
	itemscreate_scr()
	itemtotal+=1

	itemcreate=10
	itemscreate_scr()
	itemtotal+=1

	itemcreate=11
	itemscreate_scr()
	itemtotal+=1

	itemcreate=12
	itemscreate_scr()
	itemtotal+=1

	itemcreate=13
	itemscreate_scr()
	itemtotal+=1

	itemcreate=14
	itemscreate_scr()
	itemtotal+=1

	itemcreate=15
	itemscreate_scr()
	itemtotal+=1

	itemcreate=16
	itemscreate_scr()
	itemtotal+=1

	itemcreate=17
	itemscreate_scr()
	itemtotal+=1

	//del
	itemcreate=0
	itemscreate_scr()
	itemtotal+=1

	itemcreate=1
	itemscreate_scr()
	itemtotal+=1

	itemcreate=2
	itemscreate_scr()
	itemtotal+=1

	itemcreate=3
	itemscreate_scr()
	itemtotal+=1

	itemcreate=4
	itemscreate_scr()
	itemtotal+=1

	itemcreate=5
	itemscreate_scr()
	itemtotal+=1

	itemcreate=6
	itemscreate_scr()
	itemtotal+=1

	itemcreate=7
	itemscreate_scr()
	itemtotal+=1

	itemcreate=8
	itemscreate_scr()
	itemtotal+=1

	itemcreate=9
	itemscreate_scr()
	itemtotal+=1

	itemcreate=10
	itemscreate_scr()
	itemtotal+=1

	itemcreate=11
	itemscreate_scr()
	itemtotal+=1

	itemcreate=12
	itemscreate_scr()
	itemtotal+=1

	itemcreate=13
	itemscreate_scr()
	itemtotal+=1

	itemcreate=14
	itemscreate_scr()
	itemtotal+=1

	itemcreate=15
	itemscreate_scr()
	itemtotal+=1

	itemcreate=16
	itemscreate_scr()
	itemtotal+=1

	itemcreate=17
	itemscreate_scr()
	itemtotal+=1

	itemcreate=16
	itemscreate_scr()
	itemtotal+=1

	itemcreate=17
	itemscreate_scr()
	itemtotal+=1

	itemcreate=16
	itemscreate_scr()
	itemtotal+=1

	itemcreate=16
	itemscreate_scr()
	itemtotal+=1



/* end itemsload_scr */
}
