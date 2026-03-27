	if(tick==0){
	tick=1
	timer=140
	}
	
if(Me.x>=0&&Me.x<520){
if(ticktwo!=1){
tick=0
ticktwo=1
}
}else{
if(Me.x>=520&&Me.x<1300){
if(ticktwo!=2){
tick=0
ticktwo=2
}
}else{

if(Me.x>=1300&&Me.x<2400){
if(ticktwo!=3){
tick=0
ticktwo=3
}
}else{

if(Me.x>=2400&&Me.x<2610){
if(ticktwo!=4){
tick=0
ticktwo=4
}
}else{

}}}
}

if(timer>0){
	timer-=1
if(Me.x>=0&&Me.x<420){
draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+30,__view_get( e__VW.YView, 0 )+30,"Keyboard use arrow keys to move. Space to jump",1,1000,0.5,0.5,0)
draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+30,__view_get( e__VW.YView, 0 )+45,"Controller use dpad or control stick to move. A to jump",1,1000,0.5,0.5,0)
}else{
if(Me.x>=420&&Me.x<1200){
draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+30,__view_get( e__VW.YView, 0 )+30,"Keyboard use Q W E for ability Attacks",1,1000,0.5,0.5,0)
draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+30,__view_get( e__VW.YView, 0 )+45,"Controller use X Y B for ability attacks ",1,1000,0.5,0.5,0)
}else{

if(Me.x>=1200&&Me.x<2300){
draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+30,__view_get( e__VW.YView, 0 )+30,"Keyboard use space in air to double jump",1,1000,0.5,0.5,0)
draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+30,__view_get( e__VW.YView, 0 )+45,"Controller use a in air to double jump",1,1000,0.5,0.5,0)
}else{

if(Me.x>=2300&&Me.x<2610){
draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+10,__view_get( e__VW.YView, 0 )+30,"Keyboard use space near wall to wall jump. Alternate walls to top",1,1000,0.5,0.5,0)
draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+10,__view_get( e__VW.YView, 0 )+45,"Controller use a near wall to wall jump. Alternate walls to top",1,1000,0.5,0.5,0)
}else{

}}}
}}