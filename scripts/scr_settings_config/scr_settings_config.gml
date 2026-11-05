function fun_settings_sound() : SSave("settings_sound") constructor {
	add_value("volume_music", SSAVE_TYPE.REAL,0.7);
	add_value("volume_sfx", SSAVE_TYPE.REAL,0.8);
}
function fun_settings_graphics() : SSave("settings_graphics") constructor {
	add_value("particles", SSAVE_TYPE.BOOLEAN,true);
	add_value("hud_theme", SSAVE_TYPE.BOOLEAN,true);
}
function fun_settings_gameplay() : SSave("settings_gameplay") constructor {
	add_value("vibrations", SSAVE_TYPE.BOOLEAN,true);
	add_value("levelprog", SSAVE_TYPE.BOOLEAN,true);
}
function fun_settings_meta() : SSave("settings_meta") constructor {
	add_value("back_arrow_style", SSAVE_TYPE.BOOLEAN,true);
	add_value("menu_theme", SSAVE_TYPE.REAL,0);
}
function fun_settings_misc() : SSave("settings_misc") constructor {
	add_value("skip_warnings", SSAVE_TYPE.BOOLEAN,false);
}