for(a=0;a<10;a+=1){
for(b=0;b<10;b+=1){
draw_sprite(cloudscroll_spr,0,(a*32)+(animdraw)-32,(b*32)+(animdraw)-32)
}}
for(a=0;a<5;a+=1){
for(b=0;b<5;b+=1){
draw_sprite(cloudscroll3_spr,0,(a*128)+(animdraw3)-128,(b*128)+(animdraw3)-128)
}}

for(a=0;a<5;a+=1){
for(b=0;b<5;b+=1){
draw_sprite(cloudscroll5_spr,0,(a*128)+(animdraw5)-128,(b*128)+(animdraw5)-128)
}}
for(a=0;a<10;a+=1){
for(b=0;b<10;b+=1){
draw_sprite(cloudscroll2_spr,0,(a*64)+(animdraw2)-64,(b*64)+(animdraw2)-64)
}}
for(a=0;a<10;a+=1){
for(b=0;b<10;b+=1){
draw_sprite(cloudscroll4_spr,0,(a*64)+(animdraw4)-64,(b*64)+(animdraw4)-64)
}}

//World Map
if(Control.world==1){
draw_sprite(overworld_map1_spr,0,0,0)
draw_sprite(owanim2_map1_spr,animdraw7,121,71)
draw_sprite(owanim_map1_spr,animdraw8,151,24)
}else{
draw_sprite(overworld_map2_spr,0,0,0)
}

yposspot=0

//levelsArray_add(i,Level,Act,Startx,Starty,Locked,DB1,DB2,DB3,Chest,Time,Checkpoint,Opt1,Opt2,opt3)
for(a=0;a<4;a+=1){
for(b=0;b<4;b+=1){
if(Control.owLevels[a,b]<99){
if(Control.levelsArray[Control.owLevels[a,b],4]==0){
draw_sprite(mapmarker_spr,0,(gridx*a)+borderx-3,(gridy*b)+bordery-3)
}else{
draw_sprite(mapmarker_spr,1,(gridx*a)+borderx-3,(gridy*b)+bordery-3)
}}}}

draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

/*
draw_text(100,100,locked)
with(Control){
draw_text(120,100,owLevelsinfo[owLevels[other.mex,other.mey],4])
}
*/

//levelsArray_add(i,Level,Act,Startx,Starty,Locked,DB1,DB2,DB3,Chest,Time,Checkpoint,Opt1,Opt2,opt3)

with(Control){
if(actchoose>0&&actchoose<9&&actchar==0){
if(gamemodeactive==0){
	
	if(other.mex==2&&other.mey==1&&world==1||other.mex==2&&other.mey==0&&world==2){
	draw_sprite(actchoose_spr,32,0,0)
	}else{
	draw_sprite(actchoose_spr,actchoose,0,0)
	}
	
if(other.mex==2&&other.mey==1&&world==1||other.mex==2&&other.mey==0&&world==2){

}else{
if(actchoose==1){
//GOAL
xspot=88
yspot=78
//GOAL TIME
//if(floor(timertime/30 mod 60)<10){
//draw_text(xspot,yspot,string(floor(timertime/30/60)) + '.0' + string(floor(timertime/30 mod 60)))
//}else{
//draw_text(xspot,yspot,string(floor(timertime/30/60)) + '.' + string(floor(timertime/30 mod 60)))
//}
xspot=88
yspot=67
//BEST
if(levelsArray[owLevels[other.mex,other.mey],9]>0){
if(floor((levelsArray[owLevels[other.mex,other.mey],9])/30 mod 60)<10){
draw_text_ext_transformed(xspot,yspot,string_hash_to_newline(string(floor((levelsArray[owLevels[other.mex,other.mey],9])/30/60)) + ".0" + string(floor((levelsArray[owLevels[other.mex,other.mey],9])/30 mod 60))),1,1000,0.5,0.5,0)
}else{
draw_text_ext_transformed(xspot,yspot,string_hash_to_newline(string(floor((levelsArray[owLevels[other.mex,other.mey],9])/30/60)) + "." + string(floor((levelsArray[owLevels[other.mex,other.mey],9])/30 mod 60))),1,1000,0.5,0.5,0)
}}}else{
//BEST
xspot=88+114
yspot=67
if(levelsArray[owLevels[other.mex,other.mey]+1,9]>0){
if(floor((levelsArray[owLevels[other.mex,other.mey]+1,9])/30 mod 60)<10){
	draw_text_ext_transformed(xspot,yspot,string_hash_to_newline(string(floor((levelsArray[owLevels[other.mex,other.mey]+1,9])/30/60)) + ".0" + string(floor((levelsArray[owLevels[other.mex,other.mey]+1,9])/30 mod 60))),1,1000,0.5,0.5,0)
}else{
	draw_text_ext_transformed(xspot,yspot,string_hash_to_newline(string(floor((levelsArray[owLevels[other.mex,other.mey]+1,9])/30/60)) + "." + string(floor((levelsArray[owLevels[other.mex,other.mey]+1,9])/30 mod 60))),1,1000,0.5,0.5,0)
}}}
}

xspot=61
yspot=107

if(actchoose==1){
//BOTTLES
if(levelsArray[owLevels[other.mex,other.mey],5]!=0){
draw_sprite(items_spr,3,xspot,yspot)
}
xspot+=15
if(levelsArray[owLevels[other.mex,other.mey],6]!=0){
draw_sprite(items_spr,3,xspot,yspot)
}
xspot+=15
if(levelsArray[owLevels[other.mex,other.mey],7]!=0){
draw_sprite(items_spr,3,xspot,yspot)
}}else{
xspot=61+114
if(levelsArray[owLevels[other.mex,other.mey]+1,5]!=0){
draw_sprite(items_spr,3,xspot,yspot)
}
xspot+=15
if(levelsArray[owLevels[other.mex,other.mey]+1,6]!=0){
draw_sprite(items_spr,3,xspot,yspot)
}
xspot+=15
if(levelsArray[owLevels[other.mex,other.mey]+1,7]!=0){
draw_sprite(items_spr,3,xspot,yspot)
}}

}
}else{
if(actchar>0){
draw_sprite(actchoose_spr,4,0,0)
inventory_scr()
}}
}


/* */
/*  */
