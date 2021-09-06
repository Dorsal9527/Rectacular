draw_self();

if amDead == true exit;

var _x = x + lengthdir_x(impulse_speed,-phy_rotation+180);
var _y = y + lengthdir_y(impulse_speed,-phy_rotation+180);

var _bx = x + lengthdir_x(40,-phy_rotation+180);
var _by = y + lengthdir_y(40,-phy_rotation+180);

//draw_line(x,y,_x,_y);
//draw_sprite(sBlueBall,0,_bx,_by);

_x = _x - x;
_y = _y - y;



if ( keyboard_check(vk_space) )
{
	draw_set_alpha(0.50);
	
	if ( global.balls_aval > 0 )
	{
		draw_sprite(sBlueBall,0,_bx,_by);
	}
	else
	{
		draw_sprite(sError,0,_bx,_by);
	}
	
	draw_set_alpha(1);
}

if ( keyboard_check_released(vk_space) )
{
	
	if ( global.balls_aval > 0 )
	{
		audio_play_sound(soShoot,20,false);
		var _ball = instance_create_layer(_bx,_by,"balls",oBall);
	
		with _ball
		{
			physics_apply_impulse(0,0, _x * 5 , _y * 5)
		}
		
		global.balls_aval = global.balls_aval - 1;
	}
}



if ( keyboard_check(vk_up) )
{
	physics_apply_impulse(0,0, _x , _y)
}

if ( keyboard_check(vk_down) )
{
	physics_apply_impulse(0,0, -_x , -_y)
}


if ( keyboard_check(vk_right) )
{
	phy_rotation = phy_rotation + 4;
}

if ( keyboard_check(vk_left) )
{
	phy_rotation = phy_rotation - 4;
}