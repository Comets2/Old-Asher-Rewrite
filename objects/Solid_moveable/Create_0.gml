y+=16
xpos=1120-16+48
ypos=350
typepin=1
tick=0
typespr=retro_platone_spr
spikes=0
solidtype=0

depth=1000005
//depth=0
type=80
delay=0
image_speed=0
tick=other.tick
starty=y
startx=x
movespeed=0.5
range=32
typepin=other.typepin
sprite_index=other.typespr
visible=true

if(other.spikes!=0){
spikes=instance_create(x,y-16,Dummy_object)
with(spikes){
pin=72
sprite_index=retro_spikes_spr
image_speed=0
if(other.sprite_index==retro_plattwo_spr){
image_index=1
}else{
image_index=0
}}
}else{
spikes=0
}

