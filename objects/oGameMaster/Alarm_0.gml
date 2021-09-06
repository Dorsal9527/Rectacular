if  global.game_over == true exit;

var _x = room_width / 2;
var _y = room_height / 2;


if ( choose(true,false) )
{
	show_debug_message("Right");
	_x = irandom_range(room_width + 50, room_width + 75);
} else
{
	show_debug_message("Left");
	_x = irandom_range(-100,-50);
}



if ( choose(true,false) )
{
	show_debug_message("Top");
	_y = irandom_range(-100, -50);
} else
{
	show_debug_message("Bottom");
	_y = irandom_range(room_height + 50, room_height + 75);
}


instance_create_layer(_x,_y, "blocks", choose(oBrick,oSquare,oBigBrick) );

alarm_set(0,room_speed * 3);