if(Control.pause==0){
if(hp<=0&&undie==0){
//Boss Death
mask_index=dummy_spr
if(deathtick==1){
deathtick=0
for(i=0;i<16;i+=1){
created=instance_create(x+sprite_width/2-6+random(12),y+sprite_height/2-6+random(12),Dummy_three_object)
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
if(deathcd==10){
visible=false
with(Control){
soundposx=other.x+(other.sprite_width/2)
soundposy=other.y+(other.sprite_height/2)
sfx_play_at(endies1, soundposx, soundposy, 0, 90, 150, 0.5, false, 1)
}}
if(deathcd==7){
visible=true
}
deathcd-=1
if(deathcd<=0){
//Coins
for(i=0;i<extragold;i+=1){
created=instance_create(x+sprite_width/2+random(8),y+random(8),Item)
created.itemtype=2
}
//XP
for(i=0;i<extraxp;i+=1){
created=instance_create(x+sprite_width/2+random(8),y+random(8),Item)
created.itemtype=1
}
//Heart Container (once per boss)
var _hbit=0
if(room==Forest_rm4) _hbit=1
else if(room==Cathedral_rm) _hbit=2
else if(room==Tomb_rm1) _hbit=4
else if(room==Circus_rm1) _hbit=8
if(_hbit>0&&(Control.bosshearts & _hbit)==0){
Control.bosshearts=Control.bosshearts | _hbit
created=instance_create(x+sprite_width/2,y,Item)
created.itemtype=6
if(room==Forest_rm4){
created.image_index=0
}else{
created.image_index=1
}
}
instance_create(x+sprite_width/2,y,Goal)
with(Control){
rmcheck=1
musicchange=music_endresolution
}
instance_destroy()
}
}else{
if(bossindex==0){
if(nograv==0){
gravitypure_scr()
}
statuseffects_scr()
bosscontrol_scr()
}else{
if(bossindex==1){
boss_tree_scr()
}}
}

}

