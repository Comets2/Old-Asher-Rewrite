function inventory_scr() {
	if(room==Overworld_rm){
	/*
	xpos=-43
	ypos=0
	//draw_text((view_wview[0]/2)+xpos, (view_hview[0]/2)+ypos,statsArray[charArray[charselected,8],0]);
	xpos=86
	ypos=58
	for(i=1;i<6;i+=1){
	draw_text((view_wview[0]/2)+xpos, (view_hview[0]/2)+ypos,statsArray[charArray[charselected,8],i])
	ypos+=10
	}
	*/
	//Abilities
	xpos=172-37
	ypos=37
	for(i=0;i<3;i+=1){
	draw_sprite(abilpan,i,xpos,ypos)
	ypos+=27
	}

	xpossave=160+13
	ypossave=32
	yposplus=17
	xpostwo=-43
	ypostwo=10
	xposthree=49
	yposthree=52
	maskcol=c_white
	//Abil/info
	if(charArray[charselected,8]==0){
	//________________________________________________________________************<<{Pumpkin}>>************________________________________________________________________
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	draw_text_ext_transformed_color(xposthree, yposthree,string_hash_to_newline("Pumpkin"),1,300,0.5,0.5,0,maskcol,maskcol,maskcol,maskcol,1);
	draw_text_ext_transformed(20, 70,string_hash_to_newline("Explosive abilities"),3,1000,0.5,0.5,0);
	draw_text_ext_transformed(20, 70+10,string_hash_to_newline("Area damage"),3,1000,0.5,0.5,0);
	xpos=xpossave
	ypos=ypossave
	draw_text_ext_transformed(xpos, ypos,string_hash_to_newline("Bouncekins"),3,1000,0.5,0.5,0);
	ypos+=yposplus
	draw_text_ext_transformed(xpos, ypos+ypostwo,string_hash_to_newline("Harvest Charge"),3,1000,0.5,0.5,0);
	ypos+=yposplus
	draw_text_ext_transformed(xpos, ypos+ypostwo*2,string_hash_to_newline("Gourd Bomb"),3,1000,0.5,0.5,0);
	}else{
	//__________________________________________________<<{Miner}>>__________________________________________________
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	draw_text_ext_transformed_color(xposthree, yposthree,string_hash_to_newline("Miner"),1,300,0.5,0.5,0,maskcol,maskcol,maskcol,maskcol,1);

	draw_text_ext_transformed(20, 70,string_hash_to_newline("Explosive abilities"),3,3000,0.5,0.5,0);

	draw_text_ext_transformed(20, 70+10,string_hash_to_newline("Area damage"),3,3000,0.5,0.5,0);

	xpos=xpossave
	ypos=ypossave
	draw_text_ext_transformed(xpos, ypos,string_hash_to_newline("Bouncing Bombs"),3,3000,0.5,0.5,0);
	ypos+=yposplus
	draw_text_ext_transformed(xpos, ypos+ypostwo,string_hash_to_newline("Explosive Charge"),3,3000,0.5,0.5,0);
	ypos+=yposplus
	draw_text_ext_transformed(xpos, ypos+ypostwo*2,string_hash_to_newline("Bomb"),3,3000,0.5,0.5,0);
	}}}else{
	if(charArray[charselected,8]==1){
	//________________________________________________________________************<<{Witch}>>************________________________________________________________________
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	draw_text_ext_transformed_color(xposthree, yposthree,string_hash_to_newline("Witch"),1,300,0.5,0.5,0,maskcol,maskcol,maskcol,maskcol,1);
	draw_text_ext_transformed(20, 70,string_hash_to_newline("Movement options using"),1,1000,0.5,0.5,0);
	draw_text_ext_transformed(20, 70+10,string_hash_to_newline("broom and doves."),1,1000,0.5,0.5,0);
	//draw_text_ext_transformed(20, 70+20,string_hash_to_newline("with further flight."),1,1000,0.5,0.5,0);
	xpos=xpossave
	ypos=ypossave
	draw_text_ext_transformed(xpos, ypos,string_hash_to_newline("Broom"),1,1000,0.5,0.5,0);
	ypos+=yposplus
	draw_text_ext_transformed(xpos, ypos+ypostwo,string_hash_to_newline("Bats"),1,1000,0.5,0.5,0);
	ypos+=yposplus
	draw_text_ext_transformed(xpos, ypos+ypostwo*2,string_hash_to_newline("Spell"),1,1000,0.5,0.5,0);
	}else{
	//__________________________________________________<<{Wizard}>>__________________________________________________
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==1){
	draw_text_ext_transformed_color(xposthree, yposthree,string_hash_to_newline("Wizard"),1,300,0.5,0.5,0,maskcol,maskcol,maskcol,maskcol,1);
	draw_text_ext_transformed(20, 70,string_hash_to_newline("Movement options using"),1,1000,0.5,0.5,0);
	draw_text_ext_transformed(20, 70+10,string_hash_to_newline("broom and doves."),1,1000,0.5,0.5,0);
	//draw_text_ext_transformed(20, 70+20,string_hash_to_newline("with further flight."),1,1000,0.5,0.5,0);
	xpos=xpossave
	ypos=ypossave
	draw_text_ext_transformed(xpos, ypos,string_hash_to_newline("Broom"),1,1000,0.5,0.5,0);
	ypos+=yposplus
	draw_text_ext_transformed(xpos, ypos+ypostwo,string_hash_to_newline("Doves"),1,1000,0.5,0.5,0);
	ypos+=yposplus
	draw_text_ext_transformed(xpos, ypos+ypostwo*2,string_hash_to_newline("Spell"),1,1000,0.5,0.5,0);
	}else{
	//__________________________________________________<<{Retro Wizard}>>__________________________________________________
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==2){
	draw_text_ext_transformed_color(xpostwo, 0,string_hash_to_newline("GameWiz"),1,300,0.5,0.5,0,maskcol,maskcol,maskcol,maskcol,1);
	xpos=xpossave
	ypos=30
	draw_text_ext_transformed(xpos, ypos,string_hash_to_newline("Spirit"),1,1000,0.5,0.5,0);
	ypos+=yposplus
	draw_text_ext_transformed(xpos, ypos+ypostwo,string_hash_to_newline("Broom"),1,1000,0.5,0.5,0);
	ypos+=yposplus
	draw_text_ext_transformed(xpos, ypos+ypostwo*2,string_hash_to_newline("Bats"),1,1000,0.5,0.5,0);
	}else{

	}}}}else{
	//________________________________________________________________************<<{Skeleton}>>************________________________________________________________________
	if(charArray[charselected,8]==2){
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	draw_text_ext_transformed_color(xposthree, yposthree,string_hash_to_newline("Bone"),1,300,0.5,0.5,0,maskcol,maskcol,maskcol,maskcol,1);
	draw_text_ext_transformed(20, 70,string_hash_to_newline("Boomerang resets "),1,1000,0.5,0.5,0);
	draw_text_ext_transformed(20, 70+10,string_hash_to_newline("cooldown and mana"),1,1000,0.5,0.5,0);
	draw_text_ext_transformed(20, 70+20,string_hash_to_newline("on pickup."),1,1000,0.5,0.5,0);
	xpos=xpossave
	ypos=ypossave
	draw_text_ext_transformed(xpos, ypos,string_hash_to_newline("Bone Club"),1,1000,0.5,0.5,0);
	ypos+=yposplus
	draw_text_ext_transformed(xpos, ypos+ypostwo,string_hash_to_newline("Rib Aura"),1,1000,0.5,0.5,0);
	ypos+=yposplus
	draw_text_ext_transformed(xpos, ypos+ypostwo*2,string_hash_to_newline("Bonemerang"),1,1000,0.5,0.5,0);
	}else{
	draw_text_ext_transformed_color(xposthree, yposthree,string_hash_to_newline("Yeti"),1,300,0.5,0.5,0,maskcol,maskcol,maskcol,maskcol,1);
	draw_text_ext_transformed(20, 70,string_hash_to_newline("Boomerang resets cooldown"),1,1000,0.5,0.5,0);
	draw_text_ext_transformed(20, 70+10,string_hash_to_newline("and mana on pickup."),1,1000,0.5,0.5,0);
	xpos=xpossave
	ypos=ypossave
	draw_text_ext_transformed(xpos, ypos,string_hash_to_newline("Horn Club"),1,1000,0.5,0.5,0);
	ypos+=yposplus
	draw_text_ext_transformed(xpos, ypos+ypostwo,string_hash_to_newline("Ice Aura"),1,1000,0.5,0.5,0);
	ypos+=yposplus
	draw_text_ext_transformed(xpos, ypos+ypostwo*2,string_hash_to_newline("Tuskmerang"),1,1000,0.5,0.5,0);
	}}else{
	//________________________________________________________________************<<{Bee}>>************________________________________________________________________
	if(charArray[charselected,8]==3){
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	draw_text_ext_transformed_color(xposthree, yposthree,string_hash_to_newline("Honey"),1,300,0.5,0.5,0,maskcol,maskcol,maskcol,maskcol,1);
	draw_text_ext_transformed(20, 70,string_hash_to_newline("Damage over time."),1,1000,0.5,0.5,0);
	draw_text_ext_transformed(20, 70+10,string_hash_to_newline("Control your swarm."),1,1000,0.5,0.5,0);
	xpos=xpossave
	ypos=ypossave
	draw_text_ext_transformed(xpos, ypos,string_hash_to_newline("Honey"),1,1000,0.5,0.5,0);
	ypos+=yposplus
	draw_text_ext_transformed(xpos, ypos+ypostwo,string_hash_to_newline("Swarm Lift"),1,1000,0.5,0.5,0);
	ypos+=yposplus
	draw_text_ext_transformed(xpos, ypos+ypostwo*2,string_hash_to_newline("Stinger"),1,1000,0.5,0.5,0);
	}else{
	xpos=xpossave
	ypos=ypossave
	draw_text_ext_transformed_color(xposthree, yposthree,string_hash_to_newline("ScareCrow"),1,300,0.5,0.5,0,maskcol,maskcol,maskcol,maskcol,1);
	draw_text_ext_transformed(20, 70,string_hash_to_newline("Damage over time."),1,1000,0.5,0.5,0);
	draw_text_ext_transformed(20, 70+10,string_hash_to_newline("Control your swarm."),1,1000,0.5,0.5,0);
	xpos=xpossave
	ypos=ypossave
	draw_text_ext_transformed(xpos, ypos,string_hash_to_newline("Haunt"),1,1000,0.5,0.5,0);
	ypos+=yposplus
	draw_text_ext_transformed(xpos, ypos+ypostwo,string_hash_to_newline("Crow Lift"),1,1000,0.5,0.5,0);
	ypos+=yposplus
	draw_text_ext_transformed(xpos, ypos+ypostwo*2,string_hash_to_newline("Wheat"),1,1000,0.5,0.5,0);
	}}else{
	//________________________________________________________________************<<{Tree}>>************________________________________________________________________
	if(charArray[charselected,8]==4){
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	draw_text_ext_transformed_color(xposthree, yposthree,string_hash_to_newline("Bark"),1,300,0.5,0.5,0,maskcol,maskcol,maskcol,maskcol,1);
	draw_text_ext_transformed(20, 70,string_hash_to_newline("Use vine mobility."),1,1000,0.5,0.5,0);
	draw_text_ext_transformed(20, 70+10,string_hash_to_newline("Passive at low health."),1,1000,0.5,0.5,0);
	xpos=xpossave
	ypos=ypossave
	draw_text_ext_transformed(xpos, ypos,string_hash_to_newline("Vine"),1,1000,0.5,0.5,0);
	ypos+=yposplus
	draw_text_ext_transformed(xpos, ypos+ypostwo,string_hash_to_newline("Acorns"),1,1000,0.5,0.5,0);
	ypos+=yposplus
	draw_text_ext_transformed(xpos, ypos+ypostwo*2,string_hash_to_newline("Leaf Blast"),1,1000,0.5,0.5,0);
	}else{
	draw_text_ext_transformed_color(xpostwo, 0,string_hash_to_newline("Pirate"),1,300,0.5,0.5,0,maskcol,maskcol,maskcol,maskcol,1);
	draw_text_ext_transformed(20, 70,string_hash_to_newline("Use anchor mobility."),1,1000,0.5,0.5,0);
	draw_text_ext_transformed(20, 70+10,string_hash_to_newline("Passive at low health."),1,1000,0.5,0.5,0);
	xpos=xpossave
	ypos=ypossave
	draw_text_ext_transformed(xpos, ypos,string_hash_to_newline("Anchor"),1,1000,0.5,0.5,0);
	ypos+=yposplus
	draw_text_ext_transformed(xpos, ypos+ypostwo,string_hash_to_newline("Fish"),1,1000,0.5,0.5,0);
	ypos+=yposplus
	draw_text_ext_transformed(xpos, ypos+ypostwo*2,string_hash_to_newline("Bullets"),1,1000,0.5,0.5,0);
	}}else{
	//________________________________________________________________************<<{Burger Boy}>>************________________________________________________________________
	if(charArray[charselected,8]==5){
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	draw_text_ext_transformed_color(xposthree, yposthree,string_hash_to_newline("Deep Fried"),1,300,0.5,0.5,0,maskcol,maskcol,maskcol,maskcol,1);
	draw_text_ext_transformed(20, 70,string_hash_to_newline("Passive on burger"),1,1000,0.5,0.5,0);
	draw_text_ext_transformed(20, 70+10,string_hash_to_newline("hits."),1,1000,0.5,0.5,0);
	draw_text_ext_transformed(20, 70+30,string_hash_to_newline("Regen mana"),1,1000,0.5,0.5,0);
	draw_text_ext_transformed(20, 70+40,string_hash_to_newline("on ketchup."),1,1000,0.5,0.5,0);
	xpos=xpossave
	ypos=ypossave
	draw_text_ext_transformed(xpos, ypos,string_hash_to_newline("Fries"),1,1000,0.5,0.5,0);
	ypos+=yposplus
	draw_text_ext_transformed(xpos, ypos+ypostwo,string_hash_to_newline("Condiments"),1,1000,0.5,0.5,0);
	ypos+=yposplus
	draw_text_ext_transformed(xpos, ypos+ypostwo*2,string_hash_to_newline("Burger toss"),1,1000,0.5,0.5,0);
	}else{
	draw_text_ext_transformed_color(xposthree, yposthree,string_hash_to_newline("Dessert"),1,300,0.5,0.5,0,maskcol,maskcol,maskcol,maskcol,1);
	draw_text_ext_transformed(20, 70,string_hash_to_newline("Passive on dessert"),1,1000,0.5,0.5,0);
	draw_text_ext_transformed(20, 70+10,string_hash_to_newline("hits."),1,1000,0.5,0.5,0);
	draw_text_ext_transformed(20, 70+30,string_hash_to_newline("Regen mana"),1,1000,0.5,0.5,0);
	draw_text_ext_transformed(20, 70+40,string_hash_to_newline("on frosting"),1,1000,0.5,0.5,0);
	xpos=xpossave
	ypos=ypossave
	draw_text_ext_transformed(xpos, ypos,string_hash_to_newline("Candy Canes"),1,1000,0.5,0.5,0);
	ypos+=yposplus
	draw_text_ext_transformed(xpos, ypos+ypostwo,string_hash_to_newline("Frosting"),1,1000,0.5,0.5,0);
	ypos+=yposplus
	draw_text_ext_transformed(xpos, ypos+ypostwo*2,string_hash_to_newline("Cake toss"),1,1000,0.5,0.5,0);
	}}else{
	//________________________________________________________________************<<{Robot}>>************________________________________________________________________
	if(charArray[charselected,8]==6){
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	draw_text_ext_transformed_color(xposthree, yposthree,string_hash_to_newline("Mech"),1,300,0.5,0.5,0,maskcol,maskcol,maskcol,maskcol,1);
	draw_text_ext_transformed(20, 70,string_hash_to_newline("Charged shot applies"),1,1000,0.5,0.5,0);
	draw_text_ext_transformed(20, 70+10,string_hash_to_newline("passive."),1,1000,0.5,0.5,0);

	draw_text_ext_transformed(20, 70+20,string_hash_to_newline("Passive resets"),1,1000,0.5,0.5,0);
	draw_text_ext_transformed(20, 70+30,string_hash_to_newline("missile cd."),1,1000,0.5,0.5,0);
	draw_text_ext_transformed(20, 70+50,string_hash_to_newline("Block with shield."),1,1000,0.5,0.5,0);
	draw_text_ext_transformed(20, 70+60,string_hash_to_newline("to gain mana."),1,1000,0.5,0.5,0);

	xpos=xpossave
	ypos=ypossave
	draw_text_ext_transformed(xpos, ypos,string_hash_to_newline("Ion Missile"),1,1000,0.5,0.5,0);
	ypos+=yposplus
	draw_text_ext_transformed(xpos, ypos+ypostwo,string_hash_to_newline("Phaser Shield"),1,1000,0.5,0.5,0);
	ypos+=yposplus
	draw_text_ext_transformed(xpos, ypos+ypostwo*2,string_hash_to_newline("Plasma Shot"),1,1000,0.5,0.5,0);
	}else{
	draw_text_ext_transformed_color(xposthree, yposthree,string_hash_to_newline("Death Mech"),1,300,0.5,0.5,0,maskcol,maskcol,maskcol,maskcol,1);
	draw_text_ext_transformed(20, 70,string_hash_to_newline("Charged shot applies"),1,1000,0.5,0.5,0);
	draw_text_ext_transformed(20, 70+10,string_hash_to_newline("passive."),1,1000,0.5,0.5,0);

	draw_text_ext_transformed(20, 70+20,string_hash_to_newline("Passive resets"),1,1000,0.5,0.5,0);
	draw_text_ext_transformed(20, 70+30,string_hash_to_newline("missile cd."),1,1000,0.5,0.5,0);
	draw_text_ext_transformed(20, 70+50,string_hash_to_newline("Block with shield."),1,1000,0.5,0.5,0);
	draw_text_ext_transformed(20, 70+60,string_hash_to_newline("to gain mana."),1,1000,0.5,0.5,0);
	xpos=xpossave
	ypos=ypossave
	draw_text_ext_transformed(xpos, ypos,string_hash_to_newline("Dark Stinger"),1,1000,0.5,0.5,0);
	ypos+=yposplus
	draw_text_ext_transformed(xpos, ypos+ypostwo,string_hash_to_newline("Matter Shield"),1,1000,0.5,0.5,0);
	ypos+=yposplus
	draw_text_ext_transformed(xpos, ypos+ypostwo*2,string_hash_to_newline("Blood Blast"),1,1000,0.5,0.5,0);
	}
	}else{
	//________________________________________________________________************<<{Santa}>>************________________________________________________________________
	if(charArray[charselected,8]==7){
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	draw_text_ext_transformed_color(xposthree, yposthree,string_hash_to_newline("Santa"),1,300,0.5,0.5,0,maskcol,maskcol,maskcol,maskcol,1);
	draw_text_ext_transformed(20, 70,string_hash_to_newline("Present has 3 charges."),1,1000,0.5,0.5,0);
	draw_text_ext_transformed(20, 70+10,string_hash_to_newline("Holding wreath"),1,1000,0.5,0.5,0);
	draw_text_ext_transformed(20, 70+20,string_hash_to_newline("gives mobility."),1,1000,0.5,0.5,0);
	xpos=xpossave
	ypos=ypossave
	draw_text_ext_transformed(xpos, ypos,string_hash_to_newline("Presents"),1,1000,0.5,0.5,0);
	ypos+=yposplus
	draw_text_ext_transformed(xpos, ypos+ypostwo,string_hash_to_newline("Slam"),1,1000,0.5,0.5,0);
	ypos+=yposplus
	draw_text_ext_transformed(xpos, ypos+ypostwo*2,string_hash_to_newline("Wreath"),1,1000,0.5,0.5,0);
	}else{
	draw_text_ext_transformed_color(xposthree, yposthree,string_hash_to_newline("King"),1,300,0.5,0.5,0,maskcol,maskcol,maskcol,maskcol,1);
	draw_text_ext_transformed(20, 70,string_hash_to_newline("Meat has 3 charges."),1,1000,0.5,0.5,0);
	draw_text_ext_transformed(20, 70+10,string_hash_to_newline("Holding crown"),1,1000,0.5,0.5,0);
	draw_text_ext_transformed(20, 70+20,string_hash_to_newline("gives mobility."),1,1000,0.5,0.5,0);
	xpos=xpossave
	ypos=ypossave
	draw_text_ext_transformed(xpos, ypos,string_hash_to_newline("Meat"),1,1000,0.5,0.5,0);
	ypos+=yposplus
	draw_text_ext_transformed(xpos, ypos+ypostwo,string_hash_to_newline("Slam"),1,1000,0.5,0.5,0);
	ypos+=yposplus
	draw_text_ext_transformed(xpos, ypos+ypostwo*2,string_hash_to_newline("Crown"),1,1000,0.5,0.5,0);
	}
	}else{
	//________________________________________________________________************<<{Gingerbread}>>************________________________________________________________________
	if(charArray[charselected,8]==8){
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	draw_text_ext_transformed_color(xposthree, yposthree,string_hash_to_newline("Gingerbread"),1,300,0.5,0.5,0,maskcol,maskcol,maskcol,maskcol,1);
	draw_text_ext_transformed(20, 70,string_hash_to_newline("Create and control."),1,1000,0.5,0.5,0);
	draw_text_ext_transformed(20, 70+10,string_hash_to_newline("a turret."),1,1000,0.5,0.5,0);
	xpos=xpossave
	ypos=ypossave
	draw_text_ext_transformed(xpos, ypos,string_hash_to_newline("Cookie"),1,1000,0.5,0.5,0);
	ypos+=yposplus
	draw_text_ext_transformed(xpos, ypos+ypostwo,string_hash_to_newline("Gum Drop"),1,1000,0.5,0.5,0);
	ypos+=yposplus
	draw_text_ext_transformed(xpos, ypos+ypostwo*2,string_hash_to_newline("Ginger Turret"),1,1000,0.5,0.5,0);
	}else{
	draw_text_ext_transformed_color(xposthree, yposthree,string_hash_to_newline("Snowman"),1,300,0.5,0.5,0,maskcol,maskcol,maskcol,maskcol,1);
	draw_text_ext_transformed(20, 70,string_hash_to_newline("Create and control."),1,1000,0.5,0.5,0);
	draw_text_ext_transformed(20, 70+10,string_hash_to_newline("a turret."),1,1000,0.5,0.5,0);
	xpos=xpossave
	ypos=ypossave
	draw_text_ext_transformed(xpos, ypos,string_hash_to_newline("Snowball"),1,1000,0.5,0.5,0);
	ypos+=yposplus
	draw_text_ext_transformed(xpos, ypos+ypostwo,string_hash_to_newline("Frost bounce"),1,1000,0.5,0.5,0);
	ypos+=yposplus
	draw_text_ext_transformed(xpos, ypos+ypostwo*2,string_hash_to_newline("Snow Turret"),1,1000,0.5,0.5,0);
	}
	}else{

	}}}}}}}}
	}

	xpos=24
	ypos=17
	//level
	if(maskArray[charArray[charselected,8],0]<10){
	draw_text_ext_transformed(xpos,ypos,string_hash_to_newline(maskArray[charArray[charselected,8],0]),1,1000,0.5,0.5,0);
	}else{
	if(maskArray[charArray[charselected,8],0]<100){
	draw_text_ext_transformed(xpos-3,ypos,string_hash_to_newline(maskArray[charArray[charselected,8],0]),1,1000,0.5,0.5,0);
	}else{
	draw_text_ext_transformed(xpos-3,ypos,string_hash_to_newline(maskArray[charArray[charselected,8],0]),1,1000,0.5,0.5,0);
	}}


	//Me
	xpos=30
	ypos=19

	if(nohair<2){
	draw_sprite_ext(heads_spr, 0, xpos+Me.persondrawx, ypos+Me.persondrawy, image_xscale, image_yscale, image_angle, Me.skincolor, image_alpha);
	}else{
	draw_sprite_ext(heads_spr, 1, xpos+Me.persondrawx, ypos+Me.persondrawy, image_xscale, image_yscale, image_angle, Me.skincolor, image_alpha);
	}
	draw_sprite_ext(eyes_spr, 0, xpos+Me.persondrawx, ypos+Me.persondrawy, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	if(nohair==0){
	draw_sprite_ext(hair_spr, 0, xpos+Me.persondrawx, ypos+Me.persondrawy, image_xscale, image_yscale, image_angle, Me.haircolor, image_alpha);
	}
	draw_sprite_ext(extra_spr, 0, xpos+Me.persondrawx, ypos+Me.persondrawy, image_xscale, image_yscale, image_angle, Me.haircolor, image_alpha);
	draw_sprite_ext(eyebrows_spr, 0, xpos+Me.persondrawx, ypos+Me.persondrawy, image_xscale, image_yscale, image_angle, Me.haircolor, image_alpha);

	draw_sprite_ext(shirt_alone, charEquip[charselected,3], xpos+Me.persondrawx, ypos+Me.persondrawy, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	draw_sprite_ext(belt_alone, charEquip[charselected,2], xpos+Me.persondrawx, ypos+Me.persondrawy, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	draw_sprite_ext(pants_alone, image_index, xpos+Me.persondrawx, ypos+Me.persondrawy, image_xscale, image_yscale, image_angle, Me.pantcolor, image_alpha);
	draw_sprite_ext(boots_alone, image_index, xpos+Me.persondrawx, ypos+Me.persondrawy, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	draw_sprite_ext(arms_alone, image_index, xpos+Me.persondrawx, ypos+Me.persondrawy, image_xscale, image_yscale, image_angle, Me.armcolor, image_alpha);
	draw_sprite_ext(hands_alone, image_index, xpos+Me.persondrawx, ypos+Me.persondrawy, image_xscale, image_yscale, image_angle, Me.skincolor, image_alpha);
	if(charEquip[charselected,5]<999){
	draw_sprite_ext(helmskin, charEquip[charselected,5], xpos+Me.persondrawx, ypos+Me.persondrawy, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	}

	if(Control.maskArray[Control.charArray[Control.charselected,8],5]!=0){
		draw_text_ext_transformed_color(xpos-4,ypos+11,string_hash_to_newline("LOCKED"),1,1000,0.5,0.5,0,c_maroon,c_maroon,c_maroon,c_maroon,1);

	draw_text_ext_transformed(xpos-7,ypos+20,string_hash_to_newline(Control.maskArray[Control.charArray[Control.charselected,8],6]),1,1000,0.5,0.5,0);
	draw_text_ext_transformed(xpos+12,ypos+20,string_hash_to_newline("Gold"),1,1000,0.5,0.5,0);
	if(actchar==2||actchar==3){
	draw_sprite(ui_equipment_spr,26+actchar-2,xpos-7,ypos+44)
	if(actchar==3){
	draw_text_ext_transformed(xpos+33,ypos+54+15,string_hash_to_newline(Control.maskArray[Control.charArray[Control.charselected,8],6]),1,1000,0.5,0.5,0);
	}}}

	}



}
