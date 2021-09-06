audio_play_sound(soCollide,10,false);


instance_create_layer(phy_collision_x,phy_collision_y,"balls",oExplode);
collisions++;

if ( collisions > breaking_point + 1 )
{

	with ( other )
	{
		if ( just_hit == false )
		{
			audio_play_sound(soBlockHitPlayer,35,false);
			just_hit = true;
			damage_taken = damage_taken + 1;
			alarm_set(1,room_speed);
		}
	}
}