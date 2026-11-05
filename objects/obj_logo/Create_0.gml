sprite_index = global.sprite_logo;

image_alpha = 0;

audio_stop_all();

if (!instance_exists(obj_settings))
{
	instance_create_layer(0,0,"Instances",obj_settings);
}