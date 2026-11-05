direction = obj_gooter.image_angle;

image_angle = direction;

speed = 20.5;


if (input_check("charge"))
{
	if(obj_aura.auraCHARGE > 0)
	{
		audio_play_sound(snd_gooter_shoot,0,0,obj_settings.settings_vol_sfx,0,random_range(1.5,1.8));
		sprite_index = spr_bullet_charge;
		image_index = 0;

		speed = 24.5;
		vib_shoot_charge();
		
		obj_aura.auraCHARGE += -1;
	
	} 
} else {
		audio_play_sound(snd_gooter_shoot,0,0,obj_settings.settings_vol_sfx,0,random_range(0.7,1));
		vib_shoot_normal();
}
