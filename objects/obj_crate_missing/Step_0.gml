/// @description Insert description here
// You can write your code in this editor
if (obj_gooter.killscore >= kill_req && obj_gooter.killscore_miniboss >= kill_req_miniboss && !place_meeting(x,y,obj_collision_gooter)) 
{
	instance_change(crate_type, true);
	audio_play_sound(snd_unlock_crate,0,0,obj_settings.settings_vol_sfx);
	
	if (special_surprise != noone)
	{
		if !audio_is_playing(snd_enemy_surprise) {audio_play_sound(snd_enemy_surprise,0,0,obj_settings.settings_vol_sfx);}
		
		instance_create_layer(self.x,self.y,"Friend_Foe",special_surprise);
	}
}