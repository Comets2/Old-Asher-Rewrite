function simple_enemyhurt_scr() {
	hit=instance_place(x,y,Enemy)
	if(hit!=noone){
	with(hit){
	if(hp>0&&medamage==1){
	with(Me){
	if(dmgsafety<=0){
	dmgsafety=6
	//DAMAGE
	debuff=1
	debufftimer=6
	if(x+10<other.x+other.xmid){
	debuffopt=-1.5
	}else{
	debuffopt=1.5
	}
	if(hurt<=0&&shielddraw<=0){
	dr+=other.damage
	drdraw+=other.damage
	hurttick=1
	}}}}
	}}



}
