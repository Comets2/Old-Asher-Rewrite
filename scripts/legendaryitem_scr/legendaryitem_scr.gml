function legendaryitem_scr() {
//Legendary Item Cooldown
if(legendaryitemcd>0){
legendaryitemcd-=1
}

//________________________________________________________________************<<{CHECK EQUIPPED ITEMS}>>************________________________________________________________________
for(s=1;s<=3;s+=1){
var itemtype=Control.itemsArray[s,0]
var itemrarity=Control.itemsArray[s,14]

if(justhurt==1&&legendaryitemcd<=0){

//________________________________________________________________************<<{Honey Comb - Spawn Bees}>>************________________________________________________________________
if(itemtype==1&&itemrarity!=0){
var beecount=0
if(itemrarity==Control.colrare1){beecount=1
}else{if(itemrarity==Control.colrare2){beecount=1
}else{if(itemrarity==Control.colrare3){beecount=2
}else{if(itemrarity==Control.colrare4){beecount=3
}else{if(itemrarity==Control.colrare5){beecount=5
}}}}}
legendaryitemcd=90
justhurt=0
for(i=0;i<beecount;i+=1){
created=instance_create(x+10+irandom(16)-8,y+irandom(10)-5,Dummy_two_object)
with(created){
pin=130
sprite_index=beesmall_spr
hsp=random(1)-0.5
vsp=random(1)-0.5
damage=0.5
attackdelay=60
target=Me
targettype=0
dmgsafety=0
hp=1
xrand=-6+random(12)
yrand=-4+random(8)
drifttick=irandom(1000)
driftspeedx=0.03+random(0.03)
driftspeedy=0.04+random(0.03)
}}
}

}}

//________________________________________________________________************<<{PER-FRAME BEHAVIOR}>>************________________________________________________________________

//________________________________________________________________************<<{Honey Comb Bees (pin=130)}>>************________________________________________________________________
with(Dummy_two_object){
if(pin==130){

//Attack delay countdown
if(attackdelay>0){
attackdelay-=1
}

if(dmgsafety>0){
dmgsafety-=1
}

//________________________________________________________________<<{FOLLOW - Trail behind player}>>________________________________________________________________
if(targettype==0){
//Target position - lower and behind the player
var trailx=Me.x+10+xrand
var traily=Me.y+12+yrand
//Offset behind based on player horizontal movement
if(Me.hsp>0){
trailx-=14+xrand
}else{
if(Me.hsp<0){
trailx+=14+xrand
}}

//Gentle drift
drifttick+=1
trailx+=sin(drifttick*driftspeedx)*3
traily+=cos(drifttick*driftspeedy)*2

//Soft acceleration toward target
var dx=trailx-x
var dy=traily-y
hsp+=dx*0.004
vsp+=dy*0.004
//Friction
hsp*=0.97
vsp*=0.97

//Apply speed
x+=hsp
y+=vsp

//Face movement direction
if(hsp>0.05){
image_xscale=1
}else{
if(hsp<-0.05){
image_xscale=-1
}}

//Detect nearest enemy (only after attack delay)
if(attackdelay<=0){
var nearest=noone
var nearestdist=80
var en_count=instance_number(Enemy)
for(var e=0;e<en_count;e+=1){
var en=instance_find(Enemy,e)
if(en.hp>0){
var dist=point_distance(x,y,en.x+10,en.y+10)
if(dist<nearestdist){
//Line of sight check - not through Solid blocks
if(!collision_line(x,y,en.x+10,en.y+10,Solid,true,false)){
nearest=en
nearestdist=dist
}}}}

//Switch to attack
if(nearest!=noone){
target=nearest
targettype=1
}}

}else{
//________________________________________________________________<<{ATTACK - Fly at enemy}>>________________________________________________________________
if(targettype==1){
if(!instance_exists(target)||target.hp<=0){
target=Me
targettype=0
}else{
//Accelerate toward enemy
var tox=target.x+10
var toy=target.y+10
var dx=tox-x
var dy=toy-y
var dist=point_distance(x,y,tox,toy)
if(dist>0){
hsp+=(dx/dist)*0.06
vsp+=(dy/dist)*0.06
}
hsp*=0.97
vsp*=0.97
x+=hsp
y+=vsp
//Face movement direction
if(hsp>0.05){
image_xscale=1
}else{
if(hsp<-0.05){
image_xscale=-1
}}
}}}

//Enemy collision - deal damage and destroy
hit=instance_place(x,y,Enemy)
if(hit!=noone){
if(attackdelay<=0){
with(hit){
if(other.dmgsafety<=0){
other.dmgsafety=6
debuff=1
debufftimer=6
if(x+10<other.x){
debuffopt=-1.5
}else{
debuffopt=1.5
}
dr+=other.damage*Control.itemsArray[0,4]
drdraw+=other.damage*Control.itemsArray[0,4]
if(hurt<=0){
hurttick=1
}}}
instance_destroy()
}}

}}


}