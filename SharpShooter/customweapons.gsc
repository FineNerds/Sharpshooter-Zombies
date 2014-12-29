jetgun_upgrade(){
	self endon("disconnect");
	self endon("stop_jet_upgrade");
	self endon("death");
	self giveWeapon("jetgun_zm",0);
	self switchtoweapon("jetgun_zm");
	for(;;){
		self waittill("weapon_fired");
		if(self getcurrentweapon()=="jetgun_zm"){
		i = 0;
		for(i=0;i<7;i++){
		playFx("maps/zombie/fx_zmb_tranzit_fire_lrg", self.origin + (i,0,0));}}
		wait 0.01;}}
