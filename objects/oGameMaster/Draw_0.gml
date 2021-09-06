if ( global.game_over == true )
{
	var _c = c_black;
	var _sw = sprite_get_width(sButton);
	var _sh = sprite_get_height(sButton);
	var _x = (room_width / 2) - (_sw / 2);
	var _y = (room_height / 2) - (_sh / 2);
	var _string = "Again?";
	
	
	if ( mouse_x > _x and mouse_x < ( _x + _sw ) and mouse_y > _y and mouse_y < (_y + _sh ) )
	{
		draw_sprite(sButton,1,_x,_y);
		if ( mouse_check_button_pressed(mb_left) )
		{
			audio_stop_all();
			room_restart();
		}
	} else
	{
		draw_sprite(sButton,0,_x,_y);
	}
	
	_x = _x + (_sw/2) - (string_width(_string) / 2);
	_y = _y + (_sh/2) - (string_height(_string) / 2 );
	draw_text_color(_x,_y,_string,_c,_c,_c,_c,1);
	
}