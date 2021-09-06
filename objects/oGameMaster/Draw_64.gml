var _x = room_width / 2;
var _y = 20;


var _min = string(minutes);
var _sec = string(seconds);


if ( minutes < 10 )
{
	_min = "0"+string(minutes);
}

if ( seconds < 10 )
{
	_sec = "0"+string(seconds);
}

draw_text(_x,_y,_min+":"+_sec);