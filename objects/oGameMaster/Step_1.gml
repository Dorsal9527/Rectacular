if ( global.game_over == false )
{
	frame++;
	if ( frame mod room_speed == 0 )
	{
		seconds++;
	
		if ( seconds >= 60 )
		{
			minutes++;
			seconds = 0;
		}
	}
}