function charactercheck_scr() {
	if(Control.charArray[Control.charselected,8]==0){
	mewep=wep_sword
	helmchoice=0
	}else{
	if(Control.charArray[Control.charselected,8]==1){
	mewep=wep_sword
	helmchoice=999
	}else{
	if(Control.charArray[Control.charselected,8]==2){
	mewep=wep_sword
	helmchoice=999
	}else{
	mewep=wep_sword
	helmchoice=999
	}}
	}
	if(Control.maskArray[Control.charArray[Control.charselected,8],2]==0){
	Control.helmskin=helm_spr
	}else{
	Control.helmskin=helm_spr_alt1
	}



}
