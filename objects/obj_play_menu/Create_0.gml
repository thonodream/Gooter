// shoutouts to peyton burnham

width = 224;
height = 224;

op_border = 8;
op_space = 14;

color_unselect = c_black;
color_select = c_white;

pos = 0;

option_description = "";

var _settings_meta = ssave_get(fun_settings_meta);

//Main
if (obj_settings.settings_meta_arrow == true)
	{
		option[0,0] = "<";
	} else {
		option[0,0] = "Back";
	}
option[0,1] = "World Map";
option[0,2] = "Arcade";
option[0,3] = "Coming Soon";

op_length = 0;
menu_level = 0;

list_theme_count = sprite_get_number(spr_play_listslice);