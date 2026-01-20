/// @description Enemy AI


//movement
hsp = moving_speed * dir;
vsp += grv;
x = x + hsp;
move_and_collide();



//turn around
if (place_meeting(x + dir, y, OWall)) {
	dir = dir * -1;
}

