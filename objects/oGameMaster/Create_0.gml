randomize();
draw_set_font(fntFlash);

audio_play_sound(soBackground,1,true);

alarm_set(0,room_speed);
alarm_set(1,room_speed * 2);


global.game_over = false;
frame = 0;
seconds = 0;
minutes = 0;