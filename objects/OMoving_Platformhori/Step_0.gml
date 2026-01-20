
hsp = moving_speed * dir;

//Horizontal Collison
if (place_meeting(x+hsp,y,OWall))
{
	while (!place_meeting(x+sign(hsp),y,OWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
	dir *= -1;
}
x = x + hsp;


