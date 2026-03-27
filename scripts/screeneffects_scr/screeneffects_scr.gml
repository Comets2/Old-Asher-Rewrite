function screeneffects_scr() {
	if(screenroll>0){
	screenroll-=1
	checkscreen=1
	dir2=(dir1+6+360)mod(360)
	dir1=dir2
	__view_set( e__VW.XView, 0, lengthdir_x(25,dir2)+Me.x )
	__view_set( e__VW.YView, 0, lengthdir_y(25,dir2)+Me.y )
	__background_set( e__BG.Blend, 0, c_purple )
	}else{
	__background_set( e__BG.Blend, 0, c_white )
	}

	if(screenshake>0){
	screenshake-=1
	if(screenshake*0.5-floor(screenshake*0.5)>0){
	__view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) - (3) )
	__view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) - (3) )
	}else{
	__view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (3) )
	__view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (3) )
	}

	vibrate+=1
	}

	if(vibrate>0){
	vibrate-=1
	    gamepad_set_vibration(0, 1, 1);
    
	}else{
	    gamepad_set_vibration(0, 0, 0);
	}



}
