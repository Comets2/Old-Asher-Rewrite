hp=0
duration=0

type=0
maxgrav=0.05
canjump=0

if(type==0){
sprite_index=weblrg_spr
slow=1
slowamount=1
gravamount=1
jumpamount=1
canjump=1
}else{
if(type==1){
sprite_index=web_spr
slow=1
slowamount=0.25
}}

if(room==Forest_rm1){
created=instance_create(x,y,Dummy_object)
created.sprite_index=poisonpool_spr
created.image_speed=0
created.image_index=1
created.depth=102
sprite_index=poisonpool_spr
image_index=0
image_speed=0
slow=1
slowamount=0.5
gravamount=.5
jumpamount=1
canjump=1
maxgrav=0.625
}

