if(stateCower == 0)
{
	var _hitsys = part_system_create(par_hit_rogut);
	part_system_position(_hitsys, x, y);
	audio_play_sound(snd_enemy_collision,0,0,obj_settings.settings_vol_sfx);
	
	obj_aura.auraBLAST += -2;
	
	obj_aura.auraCHARGE += -5;
	

	sprite_index = global.sprite_rogut_hiding;
	image_index = 0;

	stateCower = 1;

	alarm_set(0, 60);
}