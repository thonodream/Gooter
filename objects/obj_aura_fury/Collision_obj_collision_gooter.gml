obj_aura.auraFURY += 2;
audio_play_sound(snd_aura_collect,0,0,obj_settings.settings_vol_sfx,0,(random_range(0.6,1)));

vib_collision_aura();
instance_destroy();

if (os_browser == browser_not_a_browser and obj_settings.settings_graphics_particles == true)
{
	var _collectsys = part_system_create(par_aura_collect_fury);
	part_system_position(_collectsys, x, y);
}