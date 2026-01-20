// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function move_and_collide(){
	
	
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
	
//Player Collison
if (place_meeting(x+hsp,y,OPlayer))
{
	while (!place_meeting(x+sign(hsp),y,OPlayer))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

if (place_meeting(x,y+vsp,OPlayer))
{
	while (!place_meeting(x,y+sign(vsp),OPlayer))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;
}
