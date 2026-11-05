if(hp > 0)
{
	if (os_browser == browser_not_a_browser and obj_settings.settings_graphics_particles == true)
	{
		var _psys = part_system_create(par_hit_crate_wood);
		part_system_position(_psys, x, y);
	}
	audio_play_sound(snd_crate_hit_wooden,0,0,obj_settings.settings_vol_sfx,0,(random_range(0.5,2)));
} else {
	audio_play_sound(snd_crate_break,0,0,obj_settings.settings_vol_sfx,0,(random_range(0.6,1)));
	if (os_browser == browser_not_a_browser and obj_settings.settings_graphics_particles == true)
	{
		var _deathsys = part_system_create(par_dust);
		part_system_position(_deathsys, x, y);
	}
	
}