if ( amDead == false )
{
	damage_taken = clamp(damage_taken,0,image_number - 1);

	if ( damage_taken > 3 )
	{
		if( alarm_get(0) == -1 )
		{
			alarm_set(0,30);
		}
	} else
	{
		image_index = clamp(damage_taken,0,image_number - 2 );
	}
	
	if ( damage_taken >= 5 )
	{
		audio_play_sound(soPlayerExplode,20,false);
		amDead = true;
		image_index = 0;
		alarm_set(0,-1);
		image_speed = 1;
		sprite_index = sPlayerExplode;
		phy_active = false;
	}
}