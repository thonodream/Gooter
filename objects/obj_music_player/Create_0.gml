mus_playing = playmusic;
if (!audio_is_playing(obj_music_player.mus_playing)) 
	{
		audio_play_sound(obj_music_player.mus_playing,0,1,obj_settings.settings_vol_music);
	}