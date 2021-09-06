draw_self();

if ( instance_number(oPlayer) > 0  )
{

	var _player = instance_nearest(x,y,oPlayer);

	var _px = _player.x;
	var _py = _player.y;


	var _dir = point_direction(x,y,_px,_py);
	//var _dist = point_distance(x,y,_px,_py);


	var _x = x + lengthdir_x(impulse_speed,_dir + 180);
	var _y = y + lengthdir_y(impulse_speed,_dir + 180);

//	draw_line_color(x,y,_x,_y,c_green,c_yellow);


	var _x = x - _x;
	var _y = y - _y;

	//draw_line_color(x,y,_px,_py,c_red,c_blue);


	physics_apply_impulse(0,0,_x,_y);

	//draw_text_color(x,y, string(phy_speed), c_black,c_black,c_black,c_black,1);
}