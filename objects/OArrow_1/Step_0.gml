
hsp = moving_speed * dir;

x += hsp;
with OPlayer
{
 if place_meeting(x,y,OCrossbow_1)
	{
		other.x += hsp;
		
	}
	
}
if(place_meeting(x, y, OBoss_Right_Arm)) {
    instance_destroy(); // destroys self
    instance_destroy(OBoss_Right_Arm);
	instance_destroy(OBoss_Hand_1)
	instance_destroy(OCrossbow);
}
if(place_meeting(x, y, OBoss_Left_Arm)) {
    instance_destroy(); // destroys self
    instance_destroy(OBoss_Left_Arm);
	instance_destroy(OBoss_Hand)
	instance_destroy(OCrossbow_1);
	
}

if(instance_number(OArrow) > Max_Objects){
	with (instance_find(OArrow, Max_Objects))
	instance_destroy()
}

