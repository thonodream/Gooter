
sprite_index = global.sprite_gooter_idle;

audio_stop_sound(mus_menu_main);

audio_listener_orientation(0, 0, 1000, 0, -1, 0);

gamepad_set_axis_deadzone(0, 0.2);

bullet_cooldown = 0;

stateRoll = 0;

controller_mode = 1;

killscore = 0;

killscore_miniboss = 0;

courageReq = -1;

countdown_mode = 0;

playerobj_init();

if (obj_collision_gooter.countdown == false)
{
	scr_beginfun();

} else 
{
	countdown_mode = 1;
	layer_sequence_create("Sequence",x + 0, y + 0, seq_countdown);
}
audio_sound_pitch(obj_collision_gooter.playmusic,1);
coolpitch = audio_sound_get_pitch(obj_collision_gooter.playmusic);
