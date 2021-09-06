if ( damage_taken > 3 and amDead != true)
{
	if ( image_index == 4 )
	{
		image_index = image_number - 1;
		audio_play_sound(soBlockHitPlayer,1,false);
	} else
	{
		image_index = image_number - 2;
	}
	alarm_set(0,30);
}