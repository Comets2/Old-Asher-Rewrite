function itemscreate_scr() {
	itemid+=1
	itemsArray[itemtotal+4,16]=itemid

	if(irandom(3)==0){
	//itemcreate=choose(18,18,19,19,20)
	}

	//________________________________________________________________************<<{Honeycomb}>>************________________________________________________________________
	//itemsArray[]abilarray_add(0-itemslot,0-itemid,1-Value,2-Hp,3-Mana,4-Damage,5-Regen,6-Movespeed,7-Xp,8-Gold,9-Looting,10-Avoidence,11-Lifesteal,12-Crit,13-Move negitive,14-Rarity)
	if(itemcreate==0){
	itemsArray[itemtotal+4,15]="Honey Comb"
	chance=irandom(100-itemsArray[0,9]-bonus)
	//chance=0
	//Purple
	if(chance<25){
	//itemsarray_add(itemtotal+4,1,300,4,0,0.02,0,0,0,0,0,0,0,0,0,colrare3)
	itemsarray_add(itemtotal+4,1,200,4,0,0.04,0,0,0,0,0,0,0,0,0,colrare3)
	}else{
	//Blue
	if(chance<=100){
	//itemsarray_add(itemtotal+4,1,200,3,0,0,0,0,0,0,0,0,0,0,0,colrare2)
	itemsarray_add(itemtotal+4,1,100,2,0,0,0,0,0,0,0,0,0,0,0,colrare2)
	}else{
	//White
	//itemsarray_add(itemtotal+4,1,100,2,0,0,0,0,0,0,0,0,0,0,0,colrare1)
	itemsarray_add(itemtotal+4,1,100,4,0,0,0,0,0,0,0,0,0,0,0,colrare1)
	}}
	}else{
	//________________________________________________________________************<<{Cake Slice}>>************________________________________________________________________
	//itemsArray[]abilarray_add(0-itemslot,0-itemid,1-Value,2-Hp,3-Mana,4-Damage,5-Regen,6-Movespeed,7-Xp,8-Gold,9-Looting,10-Avoidence,11-Lifesteal,12-Crit,13-Move negitive,14-Rarity)
	if(itemcreate==1){
	itemsArray[itemtotal+4,15]="Cake Slice"
	chance=irandom(100-itemsArray[0,9]-bonus)
	//chance=0
	//Purple
	if(chance<25){
	//itemsarray_add(itemtotal+4,2,400,3,20,0,0,0,0,0,0,0,0,0,0,colrare3)
	itemsarray_add(itemtotal+4,2,250,3,40,0,0,0,0,0,0,0,0,0,0,colrare3)
	}else{
	//Blue
	if(chance<=100){
	//itemsarray_add(itemtotal+4,2,250,1,15,0,0,0,0,0,0,0,0,0,0,colrare2)
	itemsarray_add(itemtotal+4,2,150,1,30,0,0,0,0,0,0,0,0,0,0,colrare2)
	}else{
	//White
	//itemsarray_add(itemtotal+4,2,150,0.5,10,0,0,0,0,0,0,0,0,0,0,colrare1)
	itemsarray_add(itemtotal+4,2,150,1,20,0,0,0,0,0,0,0,0,0,0,colrare1)
	}}}else{

	//________________________________________________________________************<<{Bat Wing}>>************________________________________________________________________
	//itemsArray[]abilarray_add(0-itemslot,0-itemid,1-Value,2-Hp,3-Mana,4-Damage,5-Regen,6-Movespeed,7-Xp,8-Gold,9-Looting,10-Avoidence,11-Lifesteal,12-Crit,13-Move negitive,14-Rarity)
	if(itemcreate==2){
	itemsArray[itemtotal+4,15]="Bat Wing"
	chance=irandom(100-itemsArray[0,9]-bonus)
	//chance=0
	//Purple
	if(chance<25){
	//itemsarray_add(0,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)
	//itemsarray_add(itemtotal+4,3,400,0,5,0,0.03,0,0,5,0,0,0,0,0,colrare3)
	itemsarray_add(itemtotal+4,3,400,0,10,0,0.06,0,0,10,0,0,0,0,0,colrare3)
	}else{
	//Blue
	if(chance<=100){
	//itemsarray_add(itemtotal+4,3,200,0,0,0,0.02,0,0,2,0,0,0,0,0,colrare2)
	itemsarray_add(itemtotal+4,3,200,0,0,0,0.04,0,0,4,0,0,0,0,0,colrare2)
	}else{
	//White
	//itemsarray_add(itemtotal+4,3,100,0,0,0,0.02,0,0,1,0,0,0,0,0,colrare1)
	itemsarray_add(itemtotal+4,3,100,0,0,0,0.01,0,0,0,0,0,0,0,0,colrare1)
	}}}else{

	}
	//________________________________________________________________************<<{Yeti Horn}>>************________________________________________________________________
	//itemsArray[]abilarray_add(0-itemslot,0-itemid,1-Value,2-Hp,3-Mana,4-Damage,5-Regen,6-Movespeed,7-Xp,8-Gold,9-Looting,10-Avoidence,11-Lifesteal,12-Crit,13-Move negitive,14-Rarity)
	if(itemcreate==3){
	itemsArray[itemtotal+4,15]="Yeti Horn"
	chance=irandom(100-itemsArray[0,9]-bonus)
	//chance=0
	//Purple
	if(chance<25){
	//itemsarray_add(0,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)
	itemsarray_add(itemtotal+4,4,500,6,0,0,0,0,0,0,0,10,0,0,0,colrare3)
	//itemsarray_add(itemtotal+4,4,500,4,0,0,0,0,0,0,0,5,0,0,0,colrare3)
	}else{
	//Blue
	if(chance<=100){
	itemsarray_add(itemtotal+4,4,300,3,0,0,0,0,0,0,0,2,0,0,0,colrare2)
	//itemsarray_add(itemtotal+4,4,300,3,0,0,0,0,0,0,0,1,0,0,0,colrare2)
	}else{
	//White
	itemsarray_add(itemtotal+4,4,150,4,0,0,0,0,0,0,0,1,0,0,0,colrare1)
	//itemsarray_add(itemtotal+4,4,150,2,0,0,0,0,0,0,0,0,0,0,0,colrare1)
	}}}else{

	}
	//________________________________________________________________************<<{Sapling}>>************________________________________________________________________
	//itemsArray[]abilarray_add(0-itemslot,0-itemid,1-Value,2-Hp,3-Mana,4-Damage,5-Regen,6-Movespeed,7-Xp,8-Gold,9-Looting,10-Avoidence,11-Lifesteal,12-Crit,13-Move negitive,14-Rarity)
	if(itemcreate==4){
	itemsArray[itemtotal+4,15]="Sapling"
	chance=irandom(100-itemsArray[0,9]-bonus)
	//chance=0
	//Purple
	if(chance<15){
	//itemsarray_add(0,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)
	//itemsarray_add(itemtotal+4,5,700,0,6,0,0.02,0,0,0,0,0,2,0,0,colrare3)
	itemsarray_add(itemtotal+4,5,700,0,12,0,0.04,0,0,0,0,0,4,0,0,colrare3)
	}else{
	//Blue
	if(chance<=100){
	//itemsarray_add(itemtotal+4,5,400,0,3,0,0.01,0,0,0,0,0,1,0,0,colrare2)
	itemsarray_add(itemtotal+4,5,400,0,6,0,0.02,0,0,0,0,0,2,0,0,colrare2)
	}else{
	//White
	itemsarray_add(itemtotal+4,5,200,0,1,0,0.005,0,0,0,0,0,0,0,0,colrare1)
	itemsarray_add(itemtotal+4,5,200,0,1,0,0.005,0,0,0,0,0,0,0,0,colrare1)
	}}}else{

	}
	//________________________________________________________________************<<{Crown}>>************________________________________________________________________
	//itemsArray[]abilarray_add(0-itemslot,0-itemid,1-Value,2-Hp,3-Mana,4-Damage,5-Regen,6-Movespeed,7-Xp,8-Gold,9-Looting,10-Avoidence,11-Lifesteal,12-Crit,13-Move negitive,14-Rarity)
	if(itemcreate==5){
	itemsArray[itemtotal+4,15]="Crown"
	chance=irandom(100-itemsArray[0,9]-bonus)
	//chance=0
	//Purple
	if(chance<15){
	//itemsarray_add(0,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)
	itemsarray_add(itemtotal+4,6,500,3,0,0,0,0,8,8,0,0,0,0,0,colrare3)
	itemsarray_add(itemtotal+4,6,500,3,0,0,0,0,8,8,0,0,0,0,0,colrare3)
	}else{
	//Blue
	if(chance<=100){
	itemsarray_add(itemtotal+4,6,350,2,0,0,0,0,3,3,0,0,0,0,0,colrare2)
	itemsarray_add(itemtotal+4,6,350,2,0,0,0,0,3,3,0,0,0,0,0,colrare2)
	}else{
	//White
	itemsarray_add(itemtotal+4,6,200,1,0,0,0,0,1,1,0,0,0,0,0,colrare1)
	itemsarray_add(itemtotal+4,6,200,1,0,0,0,0,1,1,0,0,0,0,0,colrare1)
	}}}else{

	}
	//________________________________________________________________************<<{Ghostly Sheet}>>************________________________________________________________________
	//itemsArray[]abilarray_add(0-itemslot,0-itemid,1-Value,2-Hp,3-Mana,4-Damage,5-Regen,6-Movespeed,7-Xp,8-Gold,9-Looting,10-Avoidence,11-Lifesteal,12-Crit,13-Move negitive,14-Rarity)
	if(itemcreate==6){
	itemsArray[itemtotal+4,15]="Ghostly Sheet"
	chance=irandom(100-itemsArray[0,9]-bonus)
	//chance=0
	//Purple
	if(chance<15){
	//itemsarray_add(0,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)
	//itemsarray_add(itemtotal+4,7,500,0,0,0.06,0,0,5,0,0,15,0,4,0,colrare3)
	itemsarray_add(itemtotal+4,7,500,0,0,0.12,0,0,10,0,0,25,0,4,0,colrare3)
	}else{
	//Blue
	if(chance<=100){
	//itemsarray_add(itemtotal+4,7,350,0,0,0.025,0,0,2.5,0,0,10,0,3,0,colrare2)
	itemsarray_add(itemtotal+4,7,350,0,0,0.05,0,0,5,0,0,15,0,3,0,colrare2)
	}else{
	//White
	//itemsarray_add(itemtotal+4,7,200,0,0,0.01,0,0,1.25,0,0,5,0,2,0,colrare1)
	itemsarray_add(itemtotal+4,7,200,0,0,0.01,0,0,1.25,0,0,10,0,2,0,colrare1)
	}}}else{

	}
	//________________________________________________________________************<<{Doubloon}>>************________________________________________________________________
	//itemsArray[]abilarray_add(0-itemslot,0-itemid,1-Value,2-Hp,3-Mana,4-Damage,5-Regen,6-Movespeed,7-Xp,8-Gold,9-Looting,10-Avoidence,11-Lifesteal,12-Crit,13-Move negitive,14-Rarity)
	if(itemcreate==7){
	itemsArray[itemtotal+4,15]="Doubloon"
	chance=irandom(100-itemsArray[0,9]-bonus)
	//chance=0
	//Purple
	if(chance<15){
	//itemsarray_add(0,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)
	itemsarray_add(itemtotal+4,8,500,0,0,0.08,0,0,0,50,0,0,0,0,0,colrare3)
	//itemsarray_add(itemtotal+4,8,500,0,0,0.04,0,0,0,20,0,0,0,0,0,colrare3)
	}else{
	//Blue
	if(chance<=100){
	itemsarray_add(itemtotal+4,8,300,0,0,0.05,0,0,0,25,0,0,0,0,0,colrare2)
	//itemsarray_add(itemtotal+4,8,300,0,0,0.025,0,0,0,10,0,0,0,0,0,colrare2)
	}else{
	//White
	itemsarray_add(itemtotal+4,8,150,0,0,0.01,0,0,0,5,0,0,0,0,0,colrare1)
	//itemsarray_add(itemtotal+4,8,150,0,0,0.01,0,0,0,5,0,0,0,0,0,colrare1)
	}}}else{

	}
	//________________________________________________________________************<<{Skullfly Wing}>>************________________________________________________________________
	//itemsArray[]abilarray_add(0-itemslot,0-itemid,1-Value,2-Hp,3-Mana,4-Damage,5-Regen,6-Movespeed,7-Xp,8-Gold,9-Looting,10-Avoidence,11-Lifesteal,12-Crit,13-Move negitive,14-Rarity)
	if(itemcreate==8){
	itemsArray[itemtotal+4,15]="Skullfly Wing"
	chance=irandom(100-itemsArray[0,9]-bonus)
	//chance=0
	//Purple
	if(chance<15){
	//itemsarray_add(0,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)
	//itemsarray_add(itemtotal+4,9,1000,0,20,0.04,0,0,0,0,0,20,6,3,0,colrare3)
	itemsarray_add(itemtotal+4,9,1000,0,20,0.04,0,0,0,0,0,20,6,3,0,colrare3)
	}else{
	//Blue
	if(chance<=100){
	//itemsarray_add(itemtotal+4,9,750,0,15,0.01,0,0,0,0,0,12,4,2,0,colrare2)
	itemsarray_add(itemtotal+4,9,750,0,15,0.01,0,0,0,0,0,12,4,2,0,colrare2)
	}else{
	//White
	//itemsarray_add(itemtotal+4,9,300,0,10,0,0,0,0,0,0,8,2,1,0,colrare1)
	itemsarray_add(itemtotal+4,9,300,0,10,0,0,0,0,0,0,8,2,1,0,colrare1)
	}}}else{

	}
	//________________________________________________________________************<<{Cracked Bat}>>************________________________________________________________________
	//itemsArray[]abilarray_add(0-itemslot,0-itemid,1-Value,2-Hp,3-Mana,4-Damage,5-Regen,6-Movespeed,7-Xp,8-Gold,9-Looting,10-Avoidence,11-Lifesteal,12-Crit,13-Move negitive,14-Rarity)
	if(itemcreate==9){
	//itemsarray_add(0,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)
	itemsArray[itemtotal+4,15]="Cracked Bat"
	itemsarray_add(itemtotal+4,10,50,0,0,0.1,0,0,0,0,0,0,0,0,0,colrare1)
	itemsarray_add(itemtotal+4,10,50,0,0,0.1,0,0,0,0,0,0,0,0,0,colrare1)
	}else{
	//________________________________________________________________************<<{Bat}>>************________________________________________________________________
	//itemsArray[]abilarray_add(0-itemslot,0-itemid,1-Value,2-Hp,3-Mana,4-Damage,5-Regen,6-Movespeed,7-Xp,8-Gold,9-Looting,10-Avoidence,11-Lifesteal,12-Crit,13-Move negitive,14-Rarity)
	if(itemcreate==10){
	itemsArray[itemtotal+4,15]="Bat"
	//itemsarray_add(0,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)
	itemsarray_add(itemtotal+4,11,150,0,0,0.07,0,0,0,0,0,0,0,0,0,colrare2)
	itemsarray_add(itemtotal+4,11,150,0,0,0.07,0,0,0,0,0,0,0,0,0,colrare2)
	}else{
	//________________________________________________________________************<<{Homerun Bat}>>************________________________________________________________________
	//itemsArray[]abilarray_add(0-itemslot,0-itemid,1-Value,2-Hp,3-Mana,4-Damage,5-Regen,6-Movespeed,7-Xp,8-Gold,9-Looting,10-Avoidence,11-Lifesteal,12-Crit,13-Move negitive,14-Rarity)
	if(itemcreate==11){
	itemsArray[itemtotal+4,15]="Homerun Bat"
	//itemsarray_add(0,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)
	itemsarray_add(itemtotal+4,12,400,0,0,0.15,0,0,0,0,0,0,0,0,0,colrare3)
	itemsarray_add(itemtotal+4,12,400,0,0,0.15,0,0,0,0,0,0,0,0,0,colrare3)
	}else{
	//________________________________________________________________************<<{Scratchy Sweater}>>************________________________________________________________________
	//itemsArray[]abilarray_add(0-itemslot,0-itemid,1-Value,2-Hp,3-Mana,4-Damage,5-Regen,6-Movespeed,7-Xp,8-Gold,9-Looting,10-Avoidence,11-Lifesteal,12-Crit,13-Move negitive,14-Rarity)
	if(itemcreate==12){
	itemsArray[itemtotal+4,15]="Dirty Sweater"
	//itemsarray_add(0,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)
	itemsarray_add(itemtotal+4,13,25,1,0,0,0,0,0,0,0,0,0,0,0,colrare1)
	itemsarray_add(itemtotal+4,13,25,1,0,0,0,0,0,0,0,0,0,0,0,colrare1)
	}else{
	//________________________________________________________________************<<{Stuffy Sweater}>>************________________________________________________________________
	//itemsArray[]abilarray_add(0-itemslot,0-itemid,1-Value,2-Hp,3-Mana,4-Damage,5-Regen,6-Movespeed,7-Xp,8-Gold,9-Looting,10-Avoidence,11-Lifesteal,12-Crit,13-Move negitive,14-Rarity)
	if(itemcreate==13){
	itemsArray[itemtotal+4,15]="Stuffy Sweater"
	//itemsarray_add(0,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)
	itemsarray_add(itemtotal+4,14,150,3,0,0,0,0,0,0,0,0,0,0,0,colrare2)
	itemsarray_add(itemtotal+4,14,150,3,0,0,0,0,0,0,0,0,0,0,0,colrare2)
	}else{
	//________________________________________________________________************<<{Christmas Sweater}>>************________________________________________________________________
	//itemsArray[]abilarray_add(0-itemslot,0-itemid,1-Value,2-Hp,3-Mana,4-Damage,5-Regen,6-Movespeed,7-Xp,8-Gold,9-Looting,10-Avoidence,11-Lifesteal,12-Crit,13-Move negitive,14-Rarity)
	if(itemcreate==14){
	itemsArray[itemtotal+4,15]="ChristmasSweatr"
	//itemsarray_add(0,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)
	itemsarray_add(itemtotal+4,15,300,6,15,0,0,0,0,0,0,5,0,0,0,colrare3)
	itemsarray_add(itemtotal+4,15,300,6,15,0,0,0,0,0,0,5,0,0,0,colrare3)
	}else{
	//________________________________________________________________************<<{Soggy boots}>>************________________________________________________________________
	//itemsArray[]abilarray_add(0-itemslot,0-itemid,1-Value,2-Hp,3-Mana,4-Damage,5-Regen,6-Movespeed,7-Xp,8-Gold,9-Looting,10-Avoidence,11-Lifesteal,12-Crit,13-Move negitive,14-Rarity)
	if(itemcreate==15){
	itemsArray[itemtotal+4,15]="Soggy Boots"
	//itemsarray_add(0,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)
	itemsarray_add(itemtotal+4,16,100,0,0,0,0,0.1,0,0,0,0,0,0,0,colrare1)
	itemsarray_add(itemtotal+4,16,100,0,0,0,0,0.1,0,0,0,0,0,0,0,colrare1)
	}else{
	//________________________________________________________________************<<{Lucky Running Shoes}>>************________________________________________________________________
	//itemsArray[]abilarray_add(0-itemslot,0-itemid,1-Value,2-Hp,3-Mana,4-Damage,5-Regen,6-Movespeed,7-Xp,8-Gold,9-Looting,10-Avoidence,11-Lifesteal,12-Crit,13-Move negitive,14-Rarity)
	if(itemcreate==16){
	itemsArray[itemtotal+4,15]="Lucky RunShoes"
	//itemsarray_add(0,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)
	itemsarray_add(itemtotal+4,17,300,0,0,0,0,0.25,0,0,15,0,0,0,0,colrare3)
	itemsarray_add(itemtotal+4,17,300,0,0,0,0,0.25,0,0,15,0,0,0,0,colrare3)
	}else{
	//________________________________________________________________************<<{Medallion}>>************________________________________________________________________
	//itemsArray[]abilarray_add(0-itemslot,0-itemid,1-Value,2-Hp,3-Mana,4-Damage,5-Regen,6-Movespeed,7-Xp,8-Gold,9-Looting,10-Avoidence,11-Lifesteal,12-Crit,13-Move negitive,14-Rarity)
	if(itemcreate==17){
	itemsArray[itemtotal+4,15]="Grandma\'s Medal"
	//itemsarray_add(0,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)
	itemsarray_add(itemtotal+4,18,500,0,0,0,0,0,45,45,15,0,0,0,0,colrare4)
	itemsarray_add(itemtotal+4,18,500,0,0,0,0,0,45,45,15,0,0,0,0,colrare4)
	}else{
	//_________________________________________________________________________________________________________________________________________************<<{CHRISTMAS}>>************_______________________________________________________________________________________________________________________

	//________________________________________________________________************<<{Candy Cane}>>************________________________________________________________________
	//itemsArray[]abilarray_add(0-itemslot,0-itemid,1-Value,2-Hp,3-Mana,4-Damage,5-Regen,6-Movespeed,7-Xp,8-Gold,9-Looting,10-Avoidence,11-Lifesteal,12-Crit,13-Move negitive,14-Rarity)
	if(itemcreate==18){
	itemsArray[itemtotal+4,15]="Candy Cane"
	chance=irandom(100-itemsArray[0,9]-bonus)
	//chance=0
	//Purple
	if(chance<25){
	//itemsarray_add(0,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)
	itemsarray_add(itemtotal+4,19,700,0,10,0.04,0.02,0,0,0,0,0,0,0,0,colrare3)
	}else{
	//Blue
	if(chance<=100){
	itemsarray_add(itemtotal+4,19,400,0,5,0.02,0.01,0,0,0,0,0,0,0,0,colrare2)
	}else{
	//White
	itemsarray_add(itemtotal+4,19,200,0,1,0,0.005,0,0,0,0,0,0,0,0,colrare1)
	}}}else{
	//________________________________________________________________************<<{Gingerbread Man}>>************________________________________________________________________
	//itemsArray[]abilarray_add(0-itemslot,0-itemid,1-Value,2-Hp,3-Mana,4-Damage,5-Regen,6-Movespeed,7-Xp,8-Gold,9-Looting,10-Avoidence,11-Lifesteal,12-Crit,13-Move negitive,14-Rarity)
	if(itemcreate==19){
	itemsArray[itemtotal+4,15]="Gingerbread"
	chance=irandom(100-itemsArray[0,9]-bonus)
	//chance=0
	//Purple
	if(chance<25){
	//itemsarray_add(0,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)
	itemsarray_add(itemtotal+4,20,700,4,8,0,0,0,0,0,0,0,0,0,0,colrare3)
	}else{
	//Blue
	if(chance<=100){
	itemsarray_add(itemtotal+4,20,400,2,4,0,0,0,0,0,0,0,0,0,0,colrare2)
	}else{
	//White
	itemsarray_add(itemtotal+4,20,200,0,1,0,0.005,0,0,0,0,0,0,0,0,colrare1)
	}}}else{
	//________________________________________________________________************<<{Ice Skates}>>************________________________________________________________________
	//itemsArray[]abilarray_add(0-itemslot,0-itemid,1-Value,2-Hp,3-Mana,4-Damage,5-Regen,6-Movespeed,7-Xp,8-Gold,9-Looting,10-Avoidence,11-Lifesteal,12-Crit,13-Move negitive,14-Rarity)
	if(itemcreate==20){
	itemsArray[itemtotal+4,15]="Ice Skates"
	chance=irandom(100-itemsArray[0,9]-bonus)
	//chance=0
	//Purple
	if(chance<25){
	//itemsarray_add(0,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)
	itemsarray_add(itemtotal+4,21,700,0,0,0,0,0.25,10,0,0,0,0,0,0,colrare3)
	}else{
	//Blue
	if(chance<=100){
	itemsarray_add(itemtotal+4,21,400,0,0,0,0,0.12,5,0,0,0,0,0,0,colrare2)
	}else{
	//White
	itemsarray_add(itemtotal+4,21,200,0,1,0,0.005,0,0,0,0,0,0,0,0,colrare1)
	}}}else{
	}}}}}}}}}}}}}
	}





}
