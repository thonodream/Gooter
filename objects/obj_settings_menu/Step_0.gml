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
	color_unselect = #ffaacb;
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
                    Music and sounds too loud or too quiet?
                    
                    Adjust 'em here!
                    ";
					break;
				case 2: // Graphics

					option_description = 
                    @"
                    settings related to the game's visuals
                    ";
					break;
				case 3: // Gameplay
					option_description = 
                    @"
                    settings related to gameplay and how the game feels
                    ";
					break;
				case 4: // Meta
					option_description = 
                    @"
                    Settings related to the menu lists you are interacting with right now!
                    ";
					break;
				case 5: // Misc.
					option_description = 
                    @"
                    Change a bunch of miscellaneous settings.
                    ";
					break;
			
			}
			break;
		case 1:
			// Menu Audio Level
			switch(pos)
			{
                
				case 0: // Back
					option_description = 
                    @"
                    Go back to the previous menu
                    ";
					break;
				case 1: // Music
					if menu_level == 1 {
						option_description = 
                        @"
                        Adjust music volume
                        
                        Default is 0.7
                        ";
                    }
					break;
				case 2: // SFX
				    if menu_level == 1 {
					   option_description = 
                        @"
                        Adjust sound effect volume
                        
                        Default is 0.8
                        ";
                    }
					break;	
			}
		case 2:
			// Menu Graphics Level
			switch(pos) {
				case 0: // Back
						option_description = 
                        @"
                        Go back to the previous menu
                        ";
						break;
				case 1: // Particles
					   if menu_level == 2 {
						option_description = 
                        @"
                        Turn on or off most particles
                        
                        Forced off on HTML5 builds
                        ";
                    }
                    break;
				case 2:
                    if menu_level == 2 {
                    option_description = 
                    @"
                     Change the theme of the in-level HUD.
                        
                     Dark mode is the default, 
                     but light mode is there for those who would prefer it! 
                     ";
                    }
					break;
			}
		case 3:
			// Menu Gameplay Level
			switch(pos) {
				case 0: // Back
                    
						option_description = 
                        @"
                        Go back to the previous menu
                        ";
						break;
				case 1: // Vibrations
				    if menu_level == 3 {
					option_description = 
                    @"
                     Turn on or off controller vibrations
                     ";
                    }
				break;
			}
		case 4:
		// Menu Meta Level
			switch(pos) {
				case 0: // Back
						option_description = 
                        @"
                        Go back to the previous menu
                        ";
						break;
				case 1: // Back Arrow Style
                    if menu_level == 4 {
					option_description = 
                    @"
                     Changes whether the back button in menu lists 
                     displays an arrow or worded text.
                     ";
                    }
					break;
				case 2: // List Theme
                    if menu_level == 4 {
					option_description = 
                    @"
                      Change the list menu theme.
                      
                      By default, the list menus correspond 
                      with the color of the menu room.";
                    }
					break;
			}
			case 5:
				// Menu Etc. Level
				switch(pos) {
					case 0: // Back
							option_description = 
                            @"
                            Go back to the previous menu
                            ";
							break;
					case 1: // Skip Disclaimer
                            if menu_level == 5 {
    						option_description = 
                            @"
                             Choose whether you would like to skip the Disclaimers screen
                             everytime the game is opened.
                            ";
                            break;
                            }
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
				case 1: // Audio
					menu_level = 1;
					break;
				case 2: // Graphics

					menu_level = 2;
					break;
				case 3: // Gameplay
					menu_level = 3;
					break;
				case 4: // Meta
					menu_level = 4;
					break;
				case 5: // Misc.
					menu_level = 5;
					break;
			
			}
			break;
		case 1:
			// Menu Audio Level
			switch(pos)
			{
				case 0: // Back
					menu_level = 0;
					break;
				case 1: // Music
					if (menu_level == 1) {
						var _settings_sound = ssave_get(fun_settings_sound);
						obj_settings.settings_vol_music += 0.1;
						if (obj_settings.settings_vol_music > 1)
						{
							obj_settings.settings_vol_music = 0
						}
						_settings_sound.set("volume_music", obj_settings.settings_vol_music);
						_settings_sound.save();
						option[1,1] = "Music [" + string(obj_settings.settings_vol_music) + "]";
					}
					break;
				case 2: // SFX
				if (menu_level == 1) {
					var _settings_sound = ssave_get(fun_settings_sound);
					obj_settings.settings_vol_sfx += 0.1;
					if (obj_settings.settings_vol_sfx > 1)
					{
						obj_settings.settings_vol_sfx = 0;
					}
					_settings_sound.set("volume_sfx", obj_settings.settings_vol_sfx);
					_settings_sound.save();
					option[1,2] = "SFX [" + string(obj_settings.settings_vol_sfx) + "]";
				}
					break;
			}
		case 2:
			// Menu Graphics Level
			switch(pos) {
				case 0: // Back
						menu_level = 0;
						break;
				case 1: // Particles
					if (menu_level == 2) {
						var _settings_graphics = ssave_get(fun_settings_graphics);
						if (obj_settings.settings_graphics_particles == true)
						{
							obj_settings.settings_graphics_particles = false
							option[2,1] = "Particles [OFF]";
						} else {
							obj_settings.settings_graphics_particles = true
							option[2,1] = "Particles [ON]";
						}
						_settings_graphics.set("particles", obj_settings.settings_graphics_particles);
						_settings_graphics.save();
					}
						break;
				case 2:
					if (menu_level == 2) {
						var _settings_graphics = ssave_get(fun_settings_graphics);
						if (obj_settings.settings_graphics_hud_theme == true)
							{
								obj_settings.settings_graphics_hud_theme = false
								option[2,2] = "hud theme [light]";
							} else {
								obj_settings.settings_graphics_hud_theme = true
								option[2,2] = "hud theme [dark]";
							}
						_settings_graphics.set("hud_theme", obj_settings.settings_graphics_hud_theme);
						_settings_graphics.save();
					}
					break;
			}
		case 3:
			// Menu Gameplay Level
			switch(pos) {
				case 0: // Back
						menu_level = 0;
						break;
				case 1: // Vibrations
				if (menu_level == 3) {
					var _settings_gameplay = ssave_get(fun_settings_gameplay);
					if (obj_settings.settings_game_vib == true)
					{
						obj_settings.settings_game_vib = false;
						option[3,1] = "Vibrations [OFF]";
					} else {
						obj_settings.settings_game_vib = true;
						option[3,1] = "Vibrations [ON]";
					}
					_settings_gameplay.set("vibrations", obj_settings.settings_game_vib);
					_settings_gameplay.save();
					
				}
				break;
			}
		case 4:
		// Menu Meta Level
			switch(pos) {
				case 0: // Back
						menu_level = 0;
						break;
				case 1: // Back Arrow Style
					var _settings_meta = ssave_get(fun_settings_meta);
					if (menu_level == 4) {
						if (obj_settings.settings_meta_arrow == true)
						{
							obj_settings.settings_meta_arrow = false
							option[4,1] = "Back Arrow Style [WORD Style]";
							option[0,0] = "Back";
							option[1,0] = "Back";
							option[2,0] = "Back";
							option[3,0] = "Back";
							option[4,0] = "Back";
						} else {
							obj_settings.settings_meta_arrow = true
							option[4,1] = "Back Arrow Style [DEFAULT Style]";
							option[0,0] = "<";
							option[1,0] = "<";
							option[2,0] = "<";
							option[3,0] = "<";
							option[4,0] = "<";
						}
						_settings_meta.set("back_arrow_style", obj_settings.settings_meta_arrow);
						_settings_meta.save();
					}
					
					break;
				case 2: // List Theme
					var _settings_meta = ssave_get(fun_settings_meta);
					if (menu_level == 4) {
						obj_settings.settings_meta_theme += 1;
						if (obj_settings.settings_meta_theme > (list_theme_count - 1))
						{
							obj_settings.settings_meta_theme = 0;
						}
						if (obj_settings.settings_meta_theme == 0)
						{
							option[4,2] = "List Theme [Default]";
						} else if (obj_settings.settings_meta_theme == 1)
						{
							option[4,2] = "List Theme [Monochrome]";
						} else if (obj_settings.settings_meta_theme == 2)
						{
							option[4,2] = "List Theme [Bad Time]";
						} else if (obj_settings.settings_meta_theme == 3)
						{
							option[4,2] = "List Theme [Clear]";
						}
						_settings_meta.set("menu_theme", obj_settings.settings_meta_theme);
						_settings_meta.save();
					}
					break;
			}
			case 5:
				var _settings_misc = ssave_get(fun_settings_misc);
				// Menu Etc. Level
				switch(pos) {
					case 0: // Back
							menu_level = 0;
							break;
					case 1: // Skip Disclaimer
						if (menu_level == 5) {
							if (obj_settings.settings_misc_disclaimer == true)
							{
								obj_settings.settings_misc_disclaimer = false;
								option[5,1] = "Skip Warning Screen [OFF]";
							} else {
								obj_settings.settings_misc_disclaimer = true;
								option[5,1] = "Skip Warning Screen [ON]";
							}
							_settings_misc.set("skip_warnings", obj_settings.settings_misc_disclaimer);
							_settings_misc.save();
						}
						break;
				}
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
