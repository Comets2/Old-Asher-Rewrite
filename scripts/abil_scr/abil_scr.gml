function abil_scr(argument0, argument1) {
	if(stun==0){
	temp0=argument0
	temp1=argument1
	if(Control.abilArray[argument0,0]<=mana&&Control.charcdArray[charid,argument0]<=0){

	abilselected=argument0
	animdel=Control.abilArray[Control.charselected,7]
	//wepangle=Control.abilArray[Control.charselected,10]

	image_index=0
	if(direction==0){
	moveaction=Control.abilArray[argument0,6]
	}else{
	moveaction=Control.abilArray[argument0,6]+1
	}

	mana-=Control.abilArray[argument0,0]
	if(direction==0){
	for(i=0;i<Control.abilArray[argument0,3];i+=1){
	spellcreated=instance_create(x+(sprite_width/2)+2,y+(sprite_height/2)+5.5,Projectile)
	with(spellcreated){
	num=other.i
	enemy=0
	abil=other.temp0
	option=other.temp1
	creator=other.id
	direction=other.direction
	duration=Control.abilArray[other.temp0,5]
	damage=Control.abilArray[other.temp0,2]

	}}
	}else{
	for(i=0;i<Control.abilArray[argument0,3];i+=1){
	spellcreated=instance_create(x+(sprite_width/2)-2,y+(sprite_height/2)+5.5,Projectile)
	with(spellcreated){
	num=other.i
	enemy=0
	abil=other.temp0
	option=other.temp1
	creator=other.id
	direction=other.direction
	duration=Control.abilArray[other.temp0,5]
	damage=Control.abilArray[other.temp0,2]
	}
	}}

	Control.charcdArray[charid,argument0]=Control.abilArray[argument0,1]
	}}





}
