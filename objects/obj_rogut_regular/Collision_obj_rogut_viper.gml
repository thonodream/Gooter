if(other.stateCower == 1)
{
	if (stateCower == 0)
	{
		audio_play_sound(snd_enemy_collision,0,0,obj_settings.settings_vol_sfx);
	}
	stateCower = 1;
	
	

	alarm_set(0, 60);
}