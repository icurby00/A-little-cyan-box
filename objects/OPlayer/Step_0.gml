//Player Input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space) || keyboard_check(vk_up);

//Calculate Movement
var move = key_right - key_left;

hsp = move * walksp;
vsp = vsp + grv;


if (place_meeting(x,y+1,OWall) && (key_jump))
{
	vsp = -7;
	grv = 0.3;
}
//Horizontal Collison
if (place_meeting(x+hsp,y,OWall))
{
	while (!place_meeting(x+sign(hsp),y,OWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;


//Vertical Collison
if (place_meeting(x,y+vsp,OWall))
{
	while (!place_meeting(x,y+sign(vsp),OWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

//Enemy Collison
if (place_meeting(x+hsp,y,OEnemy1))
{
	room_restart();
}
//Spike Collison
if (place_meeting(x+hsp,y,OSpikes))
{
	room_restart()
}
//Platform Collosion 
//Horizontal Collison
if(place_meeting(x + hsp, y, OMoving_Platformhori)) {
	while(!place_meeting(x +sign(hsp), y, OMoving_Platformhori)) {
		x += sign(hsp);
	}
	
	hsp = 0;
}
// ground check
if(place_meeting(x, y + vsp, OMoving_Platformhori)) {
	while(!place_meeting(x, y +sign(vsp), OMoving_Platformhori)) {
		y += sign(vsp);
	}
	vsp = 0;
	
}

// Moving platform vertical
if(place_meeting(x + hsp, y, OMoving_Platformfast)) {
	while(!place_meeting(x +sign(hsp), y, OMoving_Platformfast)) {
		x += sign(hsp);
	}
	
	hsp = 0;
}
// ground check
if(place_meeting(x, y + vsp, OMoving_Platformfast)) {
	while(!place_meeting(x, y +sign(vsp), OMoving_Platformfast)) {
		y += sign(vsp);	
	}
	vsp = 0;
	
}
if(place_meeting(x + hsp, y, OBoss_Head)) {
	room_restart()
}
if(place_meeting(x + hsp, y, OBoss_Body)) {
	room_restart()
}
if(place_meeting(x + hsp, y, OBoss_Attack_1)) {
	room_restart()
}
