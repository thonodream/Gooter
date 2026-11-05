obj_aura.auraHEART += -1;
if obj_aura.auraHEART < 1
{
	if !(audio_is_playing(snd_floraisaku_laugh))
	{
		audio_play_sound(snd_floraisaku_laugh,0,0,obj_settings.settings_vol_sfx,0,1);
	}
	with (obj_collision_gooter) alarm_set(1, 240);
} else if obj_aura.auraHEART > 0 {
	audio_play_sound(snd_enemy_collision,0,0,obj_settings.settings_vol_sfx,0,0.9);
}
instance_destroy();