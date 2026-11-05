if (audio_is_playing(fademusic)) 
	{
		audio_sound_gain(fademusic,obj_settings.settings_vol_music,fade_time_ms);
	}