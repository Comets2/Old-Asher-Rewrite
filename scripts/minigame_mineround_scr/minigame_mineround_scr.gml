function minigame_mineround_scr() {
	//ROUND ONE
	chance=random(100)
	//Crystal
	percentval=25-(Control.rounds-1)*3
	if(chance<=percentval){
	imgindex=1
	}else{
	//Gold
	if(percentval<0){
	percentval=0
	}
	percentval+=12.5-(Control.rounds-1)
	if(chance<=percentval){
	imgindex=2
	}else{
	//Ruby
	if(percentval<0){
	percentval=0
	}
	percentval+=2.25+(Control.rounds-1)*2
	if(chance<=percentval){
	imgindex=3
	}else{
	//Emerald
	if(Control.rounds>3){
	percentval+=2.5
	}
	if(chance<=percentval&&Control.rounds>3){
	imgindex=4
	}else{
	if(Control.rounds>5){
	percentval+=1.25
	}
	//Diamond
	if(chance<=percentval&&Control.rounds>5){
	imgindex=5
	}else{
	percentval+=2+((Control.rounds-1)/2)
	//Bomb
	if(chance<=percentval&&Control.rounds>1){
	imgindex=7
	}else{
	percentval+=7.5+(Control.rounds-5)*2
	//Spike
	if(chance<=percentval&&Control.rounds>5){
	imgindex=8
	}else{
	}}}}}}}


	/*//ROUND ONE
	if(Control.rounds==1){
	if(other.blockamount<30){
	imgindex=8
	}else{
	if(other.blockamount<70){
	imgindex=7
	}else{
	if(other.blockamount<75){
	imgindex=5
	}else{
	if(other.blockamount<85){
	imgindex=4
	}else{
	if(other.blockamount<110){
	imgindex=3
	}else{
	if(other.blockamount<160){
	imgindex=2
	}else{
	if(other.blockamount<260){
	imgindex=1
	}
	}}}}}}
	}


/* end minigame_mineround_scr */
}
