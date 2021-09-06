audio_play_sound(soStarPickup,10,false);

with ( other )
{
	audio_play_sound(soBlockHitPlayer,30,false);
	just_hit = true;
	damage_taken = damage_taken - 1;

	alarm_set(1,room_speed);
}

instance_destroy(id);