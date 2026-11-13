// pohyb
hsp = 0;
vsp = 0;
max_rychlost = 4;
zrychleni = 0.6;              // o kolik rychlost přibude za snímek
treni = 0.4;                  // o kolik ubude, když nic nedržíš
gravitace = 0.5;
sila_skoku = 15;
max_pad = 12;                 // max. rychlost pádu

// grafika
sprite_index = s_player_idle;
mask_index = s_player_idle;   // jedna kolizní maska pro všechny animace

if (!instance_exists(gameManager)) {
    instance_create_layer(0, 0, "Instances_1", gameManager);
}

if (gameManager.playerReturning == true)
{
	x = o_returnPoint.x
	y = o_returnPoint.y
	gameManager.playerReturning = false
}
else
{
	x = o_spawnPoint.x
	y = o_spawnPoint.y
}