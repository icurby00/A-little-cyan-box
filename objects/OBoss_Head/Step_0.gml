// Boss state and state changes

switch(state) {
	case STATE_BOSS.idle:

	if (distance_to_object(OPlayer)<250)
	{
		state = STATE_BOSS.limb_move
	}
	break;
	case STATE_BOSS.limb_move:
	if (instance_exists(OBoss_Hand) && !instance_exists(OBoss_Attack_1))
	{
		state = STATE_BOSS.attacking;
	}
	break;
	case STATE_BOSS.attacking:
	if (instance_exists(OPlayer) && (distance_to_object(OPlayer)<150))
	{
		instance_create_layer(760, 575, "Instances", OBoss_Attack_1);
		instance_create_layer(1020, 560, "Instances", OBoss_Attack_1);
		instance_create_layer(1220, 695, "Instances", OBoss_Attack_1);
		instance_create_layer(1367, 555, "Instances", OBoss_Attack_1);
		instance_create_layer(90, 633, "Instances", OBoss_Attack_1);
		instance_create_layer(37, 455, "Instances", OBoss_Attack_1);
		
	state = STATE_BOSS.recovery
		
	}
	break;
	case STATE_BOSS.recovery:
	instance_destroy(OBoss_Attack_1)
	if(instance_exists(OPlayer))
	{
		state = STATE_BOSS.idle
	}
	break;
	
}	
	
	
	
	

