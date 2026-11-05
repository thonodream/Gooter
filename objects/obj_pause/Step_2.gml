if (pause_screen == 0)
{
	if input_check_pressed("roll")
	{
		if (pause == 1)
		{
			audio_play_sound(snd_select_1,0,0,obj_settings.settings_vol_sfx);
			room_restart();
		}
	}
    if input_check_pressed("shield")
	{
		if (pause == 1)
		{
			audio_play_sound(snd_select_1,0,0,obj_settings.settings_vol_sfx);
			pause_screen = 1;
		}
	}
	
	if input_check_pressed("menu")
	{
		
		if (pause == 0)
		{
			pause = 1;
            // Deactivate objects
			//instance_deactivate_object(obj_gooter);
            //instance_deactivate_object(obj_collision_gooter);
            instance_deactivate_object(obj_hud);
            //instance_deactivate_object(obj_spawner);
            //instance_deactivate_object(obj_rogut_regular);
            //instance_deactivate_object(obj_rogut_spawning);
            instance_deactivate_object(obj_soober);
            instance_deactivate_object(obj_soober_bitewave);
            instance_deactivate_object(obj_crate_missing);
            instance_deactivate_object(obj_crate_wooden);
            instance_deactivate_object(obj_teleporter_active);
            instance_deactivate_object(obj_teleporter_arrow);
            instance_deactivate_object(obj_teleporter_inactive);
			instance_deactivate_object(obj_floraisaku);
			instance_deactivate_object(obj_floraisaku_bullet);
            
			if (os_browser == browser_not_a_browser)
				{
					audio_play_sound(snd_pause,0,0,obj_settings.settings_vol_sfx);
				}
		} else {
				pause = 0;
				if (os_browser == browser_not_a_browser)
				{
					audio_play_sound(snd_pause_off,0,0,obj_settings.settings_vol_sfx);
				}
				instance_activate_all();
			}
	}
	if input_check_pressed("back")
	{
		if (pause == 1)
		{
			audio_stop_all();
            room_goto(obj_collision_gooter.wm_origin);
		}
	}
} else if (pause_screen == 1) 
{
	if input_check_pressed("menu")
	{
		if (pause == 1)
		{
			audio_play_sound(snd_select_1,0,0,obj_settings.settings_vol_sfx);
			pause_screen = 0;
			
		}
	}
}