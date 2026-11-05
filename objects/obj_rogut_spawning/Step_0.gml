/// @description Insert description here
// You can write your code in this editor
if obj_pause.pause != 1
{
    image_xscale += 0.01;
    image_yscale += 0.01;
    
    if (image_xscale == 1)
    {
        instance_change(obj_rogut_regular,true);
        audio_play_sound_at(snd_spawn_rogut,x,y,0,50,2000,1,0,0,obj_settings.settings_vol_sfx,0,1);
    }
}
if (obj_aura.auraHEART < 1)
{
	instance_destroy();
}
