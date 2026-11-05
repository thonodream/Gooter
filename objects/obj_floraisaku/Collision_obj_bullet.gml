if (hp > 0)
{
	//var _psys = part_system_create(par_hit_rogut);
	//part_system_position(_psys, x, y);
	audio_play_sound(snd_floraisaku_hit,0,0,obj_settings.settings_vol_sfx,0,(random_range(0.5,2)));
}
if(hp < 1)
{
	/// @description Execute Code
	obj_gooter.killscore += 4;
	if (os_browser == browser_not_a_browser and obj_settings.settings_graphics_particles == true)
	{
		var _deathsys = part_system_create(par_dust);
		part_system_position(_deathsys, x, y);
	}
	
	audio_play_sound(snd_rogut_die,0,0,obj_settings.settings_vol_sfx,0,(random_range(0.5,2)));
}