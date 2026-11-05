audio_stop_sound(stopmusic_before);
instance_create_layer(x + 0, y + 0, "Player", obj_gooter);
instance_create_layer(x + 0, y + 0, "Spiri", obj_spiri);
if (os_browser == browser_not_a_browser && obj_settings.settings_graphics_particles == true)
{
	instance_create_layer(x + 0, y + 0, "Player", obj_spiri_particle_emitter);
}


move_speed = 6;

dash_dir = 0;

invin = 0;

stun = 0;

layer_set_visible("Walls_coll",false);