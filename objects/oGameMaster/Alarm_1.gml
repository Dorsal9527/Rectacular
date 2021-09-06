if global.game_over == true exit;

if ( instance_number(oPickup) > 0 )
{
	with ( oPickup )
	{
		instance_destroy(id);
	}
}

var _x = irandom_range(10,room_width - 50);
var _y = irandom_range(10,room_height - 50);

instance_create_layer(_x,_y,"pickups",oPickup);

show_debug_message("Star Spawn");

alarm_set(1,room_speed * 15);