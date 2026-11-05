// Theme stuff
var _settings_meta = ssave_get(fun_settings_meta);

if (obj_settings.settings_meta_theme == 0)
{
	image_index = 0;
	color_select = c_white;
	color_unselect = c_black;
} else if (obj_settings.settings_meta_theme == 1)
{
	image_index = 1;
	color_select = c_white;
	color_unselect = c_black;
} else if (obj_settings.settings_meta_theme == 2)
{
	image_index = 2;
	color_select = #ffff4d;
	color_unselect = c_white;
} else if (obj_settings.settings_meta_theme == 3)
{
	image_index = 3;
	color_select = c_white;
	color_unselect = #61c4f7;
}



//get input

k_up = keyboard_check_pressed(ord("W"));
k_down = keyboard_check_pressed(ord("S"));
k_accept = keyboard_check_pressed(vk_enter);

//store num of otpions in current menu
op_length = array_length(option[menu_level]);

// move thru menu
pos += k_down - k_up;
if k_up or k_down {
	audio_play_sound(snd_select_move,0,0,obj_settings.settings_vol_sfx);
}
if (pos >= op_length) 
{ 
	pos = 0; 
}
if (pos < 0) 
{
	pos = op_length-1;
}

// Descriptions
var _sml = menu_level;
switch(menu_level)
	{
		
		case 0:
			// Menu Level 1
			switch(pos) 
			{
				case 0: // Main Menu
					
					option_description = 
                    @"
                    Go back to the main menu
                    ";
					break;
				case 1: // Audio
					option_description = 
                    @"
                    Select any level in the World Map
                    ";
					break;
				case 2: // Graphics

					option_description = 
                    @"
                    Hop straight in and play every level back-to-back
                    ";
					break;
				case 3: // Gameplay
					option_description = 
                    @"
                    More modes coming eventually
                    ";
					break;
			}
	}
// using the options
if k_accept {
	
	switch(menu_level)
	{
		
		case 0:
			// Menu Level 1
			switch(pos) 
			{
				case 0: // Main Menu
					
					room_goto(rm_menu_home);
					break;
				case 1: // World Map
					room_goto(rm_wm_1);
					break;
				case 2: // Arcade
					room_goto(rm_lvl_1_upanddown);
					break;
				case 3: // Coming Soon
					break;
			
			}
			break;
		
		}
	// set pos back
	if _sml != menu_level {pos = 0;}
	//correct op length
	op_length = array_length(option[menu_level]);
	
	// play sound
	audio_stop_sound(snd_select_move);
	audio_stop_sound(snd_select_1);
	audio_play_sound(snd_select_1,0,0,obj_settings.settings_vol_sfx);
}
