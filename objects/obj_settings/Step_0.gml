/// @description Insert description here
// You can write your code in this editor

// Variables
var _settings_sound = ssave_get(fun_settings_sound);
var _settings_gameplay = ssave_get(fun_settings_gameplay);
var _settings_graphics = ssave_get(fun_settings_graphics);
var _settings_meta = ssave_get(fun_settings_meta);
var _settings_misc = ssave_get(fun_settings_misc);

// Sound settings
settings_vol_music = _settings_sound.get("volume_music", 0.7);
settings_vol_sfx = _settings_sound.get("volume_sfx", 0.8);

// Graphics settings
settings_graphics_particles = _settings_graphics.get("particles",true);
settings_graphics_hud_theme = _settings_graphics.get("hud_theme",true);

// Gameplay settings
settings_game_vib = _settings_gameplay.get("vibrations", true);
settings_game_levelprog = _settings_gameplay.get("levelprog", true);

// Meta settings
settings_meta_arrow = _settings_meta.get("back_arrow_style", true);
settings_meta_theme = _settings_meta.get("menu_theme", true);

// Misc. settings
settings_misc_disclaimer = _settings_misc.get("skip_warnings", false);