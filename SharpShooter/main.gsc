#include maps\mp\_utility;
#include common_scripts\utility;
#include maps\mp\gametypes_zm\_hud_util;
#include maps\mp\gametypes_zm\_hud_message;
#include maps\mp\zombies\_zm_devgui;
#include maps\mp\zombies\_zm;

init(){
    level thread onPlayerConnect();
    setWeaponsList();}

onPlayerConnect(){
    for(;;){
        level waittill("connected", player);
        player thread onPlayerSpawned();}}

onPlayerSpawned(){
    self endon("disconnect");
	level endon("game_ended");
    for(;;){
        self waittill("spawned_player");
        self iPrintln(getDvar("map_name"));
    	self thread sharpshooter();}}

