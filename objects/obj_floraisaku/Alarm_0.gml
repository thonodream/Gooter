instance_create_layer(x,y,"Bullet",obj_floraisaku_bullet);
audio_play_sound(snd_floraisaku_shoot,0,0,obj_settings.settings_vol_sfx,0,1);
alarm_set(0,irandom_range(400,600));