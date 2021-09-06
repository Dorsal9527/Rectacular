
if ( just_hit == false ){

	audio_play_sound(soBlockHitPlayer,30,false);
	just_hit = true;
	damage_taken = damage_taken + 1;

	//damage_taken = clamp(damage_taken,0,image_number - 1);


	alarm_set(1,room_speed);
}