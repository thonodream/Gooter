hp = 7;

direction = obj_gooter.image_angle;

image_angle = direction;

if(obj_aura.auraBLAST > 0)
{
	audio_play_sound(snd_gooter_blast,0,0,obj_settings.settings_vol_sfx);
	sprite_index = spr_gooter_blast;
	image_index = 0;
	
	vib_shoot_blast();

	speed = 15;

	obj_aura.auraBLAST += -3;
	

}
if (os_browser == browser_not_a_browser && obj_settings.settings_graphics_particles == true)
	{
		var _sys = part_system_create(par_bullet_blast);
		part_system_position(_sys, x, y);
	}