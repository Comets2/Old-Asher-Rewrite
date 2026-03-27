if(point_distance(Me.x,Me.y,x,y)<360){
if(Me.grabbing!=id){
gravity_scr()
}
if(opened==1){
sound_play(box1)
sprite_index=presentopened
opened=3
created=instance_create(x+3,y+3,Item)
if(type!=4){
created.itemtype=2
}
chance=irandom(1)
if(chance==0&&type!=4){
created=instance_create(x+3,y+3,Item)
created.itemtype=2
}
if(chance==1&&type!=4){
created=instance_create(x+3,y+3,Item)
created.itemtype=2
created=instance_create(x+3,y+3,Item)
created.itemtype=2
}
}else{
if(opened==4){
sound_play(box1)
instance_destroy()
}
}

if(Me.grabbing!=id&&hsp=0&&vsp=0){
opening=instance_place(x,y+1,Me)

if(opening!=noone){
if(opening.vsp<0.5){
if(opened!=3){
opened=1
}else{
opened=4
}}}

crateslam=instance_place(x,y-2,Me)

if(crateslam!=noone){
if(crateslam.slamcd>0){
if(opened!=3){
opened=1
}else{
opened=4
}}}
}

if(hsp>0){
hsp-=0.015
}
if(hsp<0){
hsp+=0.015
}
if(hsp<0.075&&hsp>-0.075){
hsp=0
}
}

