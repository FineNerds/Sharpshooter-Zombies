sharpShooter(){
	self endon("disconnect");
	self endon("game_ended");
	self takeAllWeapons();
	for(;;){
		i = randomIntRange(0, 133);
		if(i == 2 || i == 11 || i == 12 || i == 61 || i == 62 || i == 76 || i == 77 || i == 78 || i == 79){
			i = 0;
			self iPrintln("Invalid Weapon Chosen");
			wait 0.5;}
		self iPrintln("[" + i + "]");
		self giveWeapon(level.weapon[i]);
		self customWeaponHandler(level.weapon[i]);
		self switchToWeapon(level.weapon[i]);
		self iPrintln("" + level.weapon[i]);
		if(i == 81 || i == 119 || i == 120 || i == 121 || i == 122 || i == 123 || i == 124 || i == 125 || i == 126 || i == 127 || i == 128 || i == 129 || i == 130 || i == 131 || i == 132 || i == 133){
			self clearPerks();
			self getPerk(i);
			time = 2;}
		else
			time = 45;	
		wait time;
		self takeWeapon(level.weapon[i]);
		self customWeaponHandler(level.weapon[i]);}}
getPerk(i){
	if(i == 124 && getDvar("map_name") == "zm_")
		setPerks("specialty_additionalprimaryweapon");
	if(i == 126 && getDvar("map_name") == "zm_prison" || getDvar("map_name") == "zm_tomb")
		setPerks("specialty_deadshot");
	else if(i == 126 && getDvar("map_name") != "zm_prison" || getDvar("map_name") != "zm_tomb")
		setDvar("cg_forceLaserOn", 1);
	if(i == 127)
		setPerks("specialty_rof");
	if(i == 128)
		setPerks("specialty_armorvest");
	if(i == 129)
		setPerks("specialty_unlimitedsprint");
	if(i == 130)
		setPerks("specialty_quickrevive");
	if(i == 131)
		setPerks("specialty_fastreaload");}
setPerks(perk){
	self maps/mp/zombies/_zm_perks::give_perk(perk);}
