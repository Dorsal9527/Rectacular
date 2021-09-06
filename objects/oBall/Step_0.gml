

if ( amDead == false )
{
	if ( collisions > breaking_point + 1 )
	{
		phy_active = false;
		sprite_index = sRedBallBlown;
		image_index = 0;
		image_speed = 1;
		amDead = true;
	} else if ( collisions > breaking_point )
	{
		image_index = 1;
	}
}