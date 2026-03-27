///First Variables
function var_scr() {
	grav = 0.15;

	hsp = 0;
	vsp = 0;
	justhurt=0
	jumpspeed = 2.9;
	jumping = 0
	slowamount=0
	slow=0
	gravdebuff=1
	jumpdebuff=1
	jumpspeedtotal=jumpspeed
	gravtotal=grav
	movespeed =1;
	movespeedtotal=movespeed
	movedebuff=1
	maxspeed = 0.9
	move = 0
	moving = 0
	pause = 0
	controlled = 0
	animdel = 0
	animstop = 0
	attacktype = 0
	root = 0
	kbinair=0
	mode=0
	isenemy= 0
	bowshot=0
	effectsdraw = 0
	dir=0
	duck=0
	bonusspeed=0
	btick=0
	wallrtrig=0
	wallltrig=0
	haircolor=0
	colorchoice=0
	slope=0
	stopped=0

	mask_index=me_w_knight

	//stats

	mana=100
	manatotal=100

	//effects
	knockbackdir=0
	knockback=0
	stun=0
	slow=0
	blocked=0
	burn=0

	//chars
	characters=1
	charactercheck=1
	skincolor=0
	pantcolor=0
	armcolor=0

	charactercheck_scr()

	// QoL: Coyote Time
	coyotetime = 0
	was_grounded = 0

	// QoL: Jump Buffering
	jumpbuffer = 0

	// QoL: Wall Jump Buffering
	walljumpbuffer = 0
	walljumpbufferdir = 0

	// QoL: Faster Falling / Apex Hang
	fallgravmult = 1.4
	apexgravmult = 0.6
	apexthreshold = 0.5

	// QoL: Acceleration Curves
	ground_accel = 0.3
	ground_decel = 0.4
	air_accel = 0.2
	air_decel = 0.15

	// QoL: Corner Correction
	corner_correction_range = 3

	// QoL: Slam Cancel
	slamcancel_window = 0

}
