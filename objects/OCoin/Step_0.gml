/// Coin collect code
// collect coin

if (place_meeting(x,y, OPlayer) && !collected) {
	OPlayer.coins++;
	collected = true;
}

if (collected ){
	instance_destroy();
}