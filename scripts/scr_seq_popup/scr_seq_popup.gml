// Auto-generated stubs for each available event.

function seq_nextroom_Moment()
{
	room_goto_next();
}

function seq_menufade_Moment()
{
	if (audio_is_playing(mus_menu_main)) 
	{
		audio_sound_gain(mus_menu_main,0,1000);
	}
	if (audio_sound_get_gain(mus_menu_main) == 0)
	{
		audio_stop_sound(mus_menu_main);
	}
}

function seq_map_Moment()
{
	room_goto(rm_wm_1);
}

function seq_mainmenu_Moment()
{
	room_goto(rm_menu_home);
}

function seq_play_Moment()
{
	room_goto(rm_menu_play);
}

function seq_settings_Moment()
{
	room_goto(rm_menu_settings);
}

function seq_extras_Moment()
{
	room_goto(rm_extras);
}

function seq_mods_Moment()
{
	room_goto(rm_menu_mods);
}