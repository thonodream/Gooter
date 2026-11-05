/// @description Execute Code
if (hp > 0)
{
	var _psys = part_system_create(par_hit_rogut);
	part_system_position(_psys, x, y);
	audio_play_sound(snd_rogut_hit,0,0,obj_settings.settings_vol_sfx,0,(random_range(0.5,2)));
}


if(hp < 1)
{
	/// @description Execute Code
	obj_gooter.killscore += 1;
	if (os_browser == browser_not_a_browser and obj_settings.settings_graphics_particles == true)
	{
		var _deathsys = part_system_create(par_dust);
		part_system_position(_deathsys, x, y);
	}
	
	audio_play_sound(snd_rogut_die,0,0,obj_settings.settings_vol_sfx,0,(random_range(0.5,2)));

	if instance_number(obj_aura_heart) < 6 && instance_number(obj_aura_dash) < 6 && instance_number(obj_aura_blast) < 6 && instance_number(obj_aura_charge) < 6 && instance_number(obj_aura_fury) < 6
	{
		enemyDrop = irandom_range(1,8);

		if(enemyDrop == 1)
		{
			instance_create_layer(x + 0, y + 0, "Auras_and_Foods", obj_aura_heart);
		}

		if(enemyDrop == 2)
		{
			instance_create_layer(x + 0, y + 0, "Auras_and_Foods", obj_aura_dash);
		}

		if(enemyDrop == 3)
		{
			instance_create_layer(x + 0, y + 0, "Auras_and_Foods", obj_aura_blast);
		}

		if(enemyDrop == 4)
		{
			instance_create_layer(x + 0, y + 0, "Auras_and_Foods", obj_aura_charge);
		}

		if(enemyDrop == 5)
		{
			instance_create_layer(x + 0, y + 0, "Auras_and_Foods", obj_aura_fury);
		}
	}
}