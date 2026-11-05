if (stateAlive == 1)
{
	other.stun = 4;
	other.alarm[2] = 60;
	stateAlive = 0;
	audio_play_sound(snd_enemy_collision,0,0,obj_settings.settings_vol_sfx,0,1);
	audio_play_sound(snd_player_stuck,0,0,obj_settings.settings_vol_sfx,0,1);
}
