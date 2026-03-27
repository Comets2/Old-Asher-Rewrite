function encontrol_scr() {

	if(enemytype==1){

	if(dir==1){
	if(stopped==1&&stopcd==0){
	dir=0
	stopped=0
	stopcd=5

	key_left=1
	key_right=0

	if(animdel<=0){
	sprite_index=mew
	}
	}
	}else{
	if(stopped==1&&stopcd==0){
	dir=1
	stopped=0
	stopcd=5

	key_left=0
	key_right=-1

	if(animdel<=0){
	sprite_index=mew
	}
	}}

	movespeed=movespeedtotal*movedebuff

	//Input reaction
	hsp = (move * movespeed);

	move = key_left + key_right


	if(stopcd>0){
	stopped=0
	stopcd-=1
	}
	}else{

	}



}
