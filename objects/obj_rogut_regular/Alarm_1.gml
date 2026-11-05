/// @description trail particle
// You can write your code in this editor
if (os_browser == browser_not_a_browser and obj_settings.settings_graphics_particles == true)
{
	var _trailsys = part_system_create_layer("Particles", false, par_trail_rogut);
	part_system_position(_trailsys, x, y);
	alarm_set(1,10)
}


