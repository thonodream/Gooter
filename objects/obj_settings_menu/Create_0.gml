// shoutouts to peyton burnham

width = 224;
height = 224;

op_border = 8;
op_space = 14;

color_unselect = c_black;
color_select = c_white;

pos = 0;

var _settings_meta = ssave_get(fun_settings_meta);

option_description = "";

//Main
if (obj_settings.settings_meta_arrow == true)
	{
		option[0,0] = "<";
	} else {
		option[0,0] = "Back";
	}
option[0,1] = "Audio";
option[0,2] = "Graphics";
option[0,3] = "Gameplay";
option[0,4] = "Meta";
option[0,5] = "Misc.";

// Audio
if (obj_settings.settings_meta_arrow == true)
	{
		option[1,0] = "<";
	} else {
		option[1,0] = "Back";
	}
option[1,1] = "Music [" + string(obj_settings.settings_vol_music) + "]";
option[1,2] = "SFX [" + string(obj_settings.settings_vol_sfx) + "]";

// Graphics
if (obj_settings.settings_meta_arrow == true)
	{
		option[2,0] = "<";
	} else {
		option[2,0] = "Back";
	}

if (obj_settings.settings_graphics_particles == true)
	{
		option[2,1] = "Particles [ON]";
	} else {
		option[2,1] = "Particles [OFF]";
	}
if (obj_settings.settings_graphics_hud_theme == true)
	{
		option[2,2] = "hud theme [Dark]";
	} else {
		option[2,2] = "hud theme [Light]";
	}

// Gameplay
if (obj_settings.settings_meta_arrow == true)
	{
		option[3,0] = "<";
	} else {
		option[3,0] = "Back";
	}

if (obj_settings.settings_game_vib == true)
{
	option[3,1] = "Vibrations [ON]";
} else {
	option[3,1] = "Vibrations [OFF]";
}

// Meta
if (obj_settings.settings_meta_arrow == true)
	{
		option[4,0] = "<";
	} else {
		option[4,0] = "Back";
	}
if (obj_settings.settings_meta_arrow == true)
	{
		option[4,1] = "Back Arrow Style [DEFAULT Style]";
	} else {
		option[4,1] = "Back Arrow Style [WORD Style]";
	}
if (obj_settings.settings_meta_theme == 0)
{
	option[4,2] = "List Theme [Default]";
} 
else if (obj_settings.settings_meta_theme == 1) 
{
	option[4,2] = "List Theme [Monochrome]";
}
else if (obj_settings.settings_meta_theme == 2) 
{
	option[4,2] = "List Theme [Bad Time]";
}
else if (obj_settings.settings_meta_theme == 3) 
{
	option[4,2] = "List Theme [Clear]";
}

if (obj_settings.settings_meta_arrow == true)
	{
		option[5,0] = "<";
	} else {
		option[5,0] = "Back";
	}

if (obj_settings.settings_misc_disclaimer == true)
	{
		option[5,1] = "Skip Warning Screen [ON]";
	} else {
		option[5,1] = "Skip Warning Screen [OFF]";
	}
op_length = 0;
menu_level = 0;

list_theme_count = sprite_get_number(spr_settings_listslice);