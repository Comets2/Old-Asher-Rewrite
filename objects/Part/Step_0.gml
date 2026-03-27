x+=(num-3)*0.1
if(image_index>=5){
instance_destroy()
}

grounded=instance_place(x,y+1,Solid)
if(grounded==noone){
y+=0.75
}else{
y-=0.1
}

image_angle+=irandom_range(130,230)

hitme=instance_place(x,y,Me)
if(hitme!=noone){
if(subtype==0){
hitme.hp+=1
}else{
if(hitme.mana<hitme.manatotal-15){
hitme.mana+=5
}else{
hitme.mana=hitme.manatotal
}
}
instance_destroy()
}


