if(point_distance(Me.x+10,Me.y+10,x+sprite_width/2,y+sprite_height/2)<merange){
if(Control.pause==0&&Control.arcadepause==0){
inrange=1
if(hp>0||undie==1){
//Code Run
if(Control.world==1){
if(room==Forest_rm3){
forestenemy_3_scr()
}else{
if(room==Forest_rm1){
forestenemy_1_scr()
}else{
if(room==Forest_snow_rm2){
forestenemy_snow_scr()
}else{
if(room==Forest_rm4){
forestenemy_4_scr()
}else{
if(room==Birthday_rm1){
worldone_rm5_enemy_scr()
}else{
if(enemytype==2){
skullenemy_scr()
}else{
if(enemytype==3){
gravity_scr()
encontrol_scr()
}else{
if(enemytype==4){

}else{
if(enemytype==5){

}else{
if(enemytype==6){

}
}}}}}}}
}}
}else{
if(Control.world==2){
if(room==Worldtwo_rm1){
worldtwo_rm1_enemy_scr()
}else{
if(room==Worldtwo_rm2){
worldtwo_rm2_enemy_scr()
}else{
if(room==Worldtwo_rm1_part2){
worldtwo_rm1_enemy_scr()
}else{
if(room==Worldtwo_rm3){
worldtwo_rm3_enemy_scr()
}else{
if(room==Worldtwo_rm6_boss){
worldtwo_boss_enemy_scr()
}
}}}}}}
}

//All
statuseffects_scr()

if(animdel>0){
animdel-=1
}

//Death
if(hp<=0&&undie==0){
mask_index=dummy_spr
if(deathtick==1){
deathtick=0
for(i=0;i<16;i+=1){
created=instance_create(x+xmid-6+random(12),y+ymid-6+random(12),Dummy_three_object)
with(created){
type=1
pin=300
creator=other.id
sprite_index=enemy_part1_spr
depth=other.depth+1
image_angle=random(360)
image_speed=1
image_index=irandom(image_number)
duration=5+irandom(15)
durationtotal=duration
speed=random_range(0.1,0.6)
direction=other.i*40
hsp=hspeed
vsp=vspeed
speed=0
}}
}
image_speed=0
if(selfcreated!=0){
if(instance_exists(selfcreated)){
with(selfcreated){
instance_destroy()
}}}
if(deathcd==10){
visible=false
if(point_distance(x,y,Me.x,Me.y)<275){

with(Control){
soundposx=other.x+(other.sprite_width/2)
soundposy=other.y+(other.sprite_height/2)
audio_play_sound_at(endies1, soundposx, soundposy, 0, 90, 150, 0.5, false, 1)
}
}}
if(deathcd==7){
visible=true
}
deathcd-=1
if(deathcd<=0){
if(drop==1){
chance=irandom(1)
if(instance_exists(spawner)){
if(spawner!=0){
spawner.cap-=1
}}
if(chance==1){
created=instance_create(x+8,y+6,Item)
created.itemtype=2
}
created=instance_create(x+8,y+6,Item)
created.itemtype=1
//xp loot
if(irandom(100)<=Control.itemsArray[0,7]){
created=instance_create(x+8,y+6-4,Item)
created.itemtype=1
Control.rolldisplaytime=30
Control.rolldisplayimage=2
}
for(i=0;i<extraxp;i+=1){
created=instance_create(x+6+random(4),y+6-2+random(4),Item)
created.itemtype=1
}
//gold loot
if(irandom(100)<=Control.itemsArray[0,8]){
created=instance_create(x+8,y+6-4,Item)
created.itemtype=2
Control.rolldisplaytime=30
Control.rolldisplayimage=3
}

if(ending==0){
chance=irandom(1)
if(chance==1){
created=instance_create(x+8,y+6,Item)
created.itemtype=2
}
created=instance_create(x+8,y+6,Item)
created.itemtype=1
Control.charArray[Control.charselected,9]+=1
//Key
if(key==1){
created=instance_create(x+(sprite_width/2)-(sprite_get_width(items_spr)/2),y,Item)
created.itemtype=10
}
if(heart==1){
created=instance_create(x+sprite_width/2,y,Item)
created.itemtype=2
created.subtype=1
}}else{


//Ending
if(ending==1){
//Control.ending=1
instance_create(endingx,endingy,Goal)
		with(Control){
	rmcheck=1
	musicchange=music_endresolution
		}
for(i=0;i<extragold;i+=1){
created=instance_create(endingx+random(8),endingy+random(8),Item)
created.itemtype=2
}

for(i=0;i<extraxp;i+=1){
created=instance_create(endingx+random(8),endingy+random(8),Item)
created.itemtype=1
}}
}
Control.levelkills+=1
}

instance_destroy()
}}

//Out of Room
if(y>room_height){
if(instance_exists(spawner)){
if(spawner!=0){
spawner.cap-=1
}}
instance_destroy()
}

nope=0

}}else{
inrange=0
}

