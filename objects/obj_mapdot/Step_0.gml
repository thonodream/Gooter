if place_meeting(x, y, obj_wm_gooter)
{
	if (dotselect == 0)
	{
		dotselect = 1;
	}
	
} else {
	dotselect = 0;
}

if (dotselect == 0)
{
	if (sprite_index == hover_sprite)
	{
		sprite_index = idle_sprite;
	}
}

if (dotselect == 1)
{
	if (sprite_index == idle_sprite)
	{
		audio_play_sound(hover_sound,0,0,obj_settings.settings_vol_sfx);
		sprite_index = hover_sprite;
	}
}