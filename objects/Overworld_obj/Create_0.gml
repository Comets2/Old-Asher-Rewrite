sprite_index=memap_d
image_speed=0
moving=0

up=0
down=0
right=0
left=0
Me.gravtotal = 0.1
Me.shield=0
Me.mana=Me.manatotal
Me.nowep=0
Me.image_index=0
Me.image_speed=0.15

with(Control){
bottles=1

if(itemsloaded==0){
itemsloaded=1
itemsload_scr()
inven_scr(0)
}

//mask prices
maskArray[5,6]=800
maskArray[6,6]=800

//if(weatheron==1){
weatheron=0
part_system_destroy(snow)
snow=0
deathdisplaycounter=0
rmcheck=1
musicchange=music_overworld_theme1
cpsave=0
}
//}

worldx=Control.charArray[Control.charselected,6]
worldy=Control.charArray[Control.charselected,7]
with(Control){
if(actchoose==1){
actchoose=2
}else{
actchoose=0
}}
mex=worldx
mey=worldy
borderx=77
bordery=23
gridx=40
gridy=30
tox=x
toy=y

animdel=0
check=1
x=(mex*gridx)+borderx
y=(mey*gridy)+bordery

animdraw=0
animdraw2=0
animdraw3=0
animdraw4=0
animdraw5=0
animdraw6=0
animdraw7=0
animdraw8=0
delay=0

