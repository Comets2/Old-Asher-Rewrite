if(!instance_place(x,y,Poop)){
gravity_scr()
}

if(cap<capcap){
image_index=(cooldown/cooldowncap)*40

if(cooldown>0){
cooldown-=1
}else{
if(cap<capcap){
cooldown=cooldowncap
cap+=1
createds=instance_create(x-12,y-12,Enemy)

createds.spawner=id
}}
}else{
image_index=39
}

