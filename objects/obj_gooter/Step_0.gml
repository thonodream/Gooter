audio_listener_position(x, y, 0);
if(obj_aura.auraHEART > 0)
{
		x = obj_collision_gooter.x;
		y = obj_collision_gooter.y;
}

if (countdown_mode == 0)
{
	var right_axis_horizontal = gamepad_axis_value(0, gp_axisrh);
	var right_axis_vertical = gamepad_axis_value(0, gp_axisrv);
    if (obj_pause.pause != 1) {
       if stateRoll = 0
	   {
		image_angle = point_direction(x,y,mouse_x,mouse_y);
	   }
	   
        
            if (input_check("shoot") and !input_check("charge"))
            {
                
                if(!obj_aura.auraHEART <= 0 and stateRoll == 0 and bullet_cooldown == 0) 
                {

                    instance_create_layer(x + 0, y + 0, "Bullet", obj_bullet);
                
                    bullet_cooldown = 1;
                    
                    alarm_set(0, 10); 

                }
            }
        
            if (input_check("charge") and !input_check("shoot"))
            {

                    if(!obj_aura.auraHEART <= 0 and obj_aura.auraCHARGE >= 1 and stateRoll == 0 and bullet_cooldown == 0)
                    {
                        
                        instance_create_layer(x + 0, y + 0, "Bullet", obj_bullet);
                
                        bullet_cooldown = 1;
        
                        alarm_set(0, 6);

                    }
            
            }
        
            if (input_check_pressed("blast")) 
            {
                if(!obj_aura.auraHEART <= 0 and obj_aura.auraBLAST >= 3 and stateRoll == 0 and bullet_cooldown == 0)
                {
                    
                    instance_create_layer(x + 0, y + 0, "Bullet", obj_gooter_blast);
                    
                    bullet_cooldown = 1;
                    
                    if(obj_aura.auraCHARGE <= 0) 
                    {
                      alarm_set(0, 24);
                    }
                    
                    if(obj_aura.auraCHARGE >= 1)
                    {
                      alarm_set(0, 12);
                    }

                }
            }
        
            if (obj_aura.auraDASH > 0 and input_check_pressed("roll"))
            {
                
             if(stateRoll == 0)
               {
                 audio_play_sound(snd_orbdash_charge,0,0,obj_settings.settings_vol_sfx);
                 stateRoll = 1; 
               }
        
               else
               {
                 stateRoll = 0;
                 if sprite_index != global.sprite_gooter_idle {sprite_index = global.sprite_gooter_idle;}
                 with(obj_collision_gooter) 
                 { 
                    dashDir = 0;
                 }
               }
            
            }
        
            if (obj_aura.auraDASH < 1 and input_check_pressed("roll"))
            {
                    
                stateRoll = 0;
                if sprite_index == spr_gooter_readying || spr_gooter_dash {sprite_index = global.sprite_gooter_idle;}
                with(obj_collision_gooter) 
                { 
                    dashDir = 0;
                }
                
            }
        

            if (input_check_pressed("shield") and obj_aura.auraFURY > 0 and !instance_exists(obj_gooter_furyshield))
            {
                 
                instance_create_layer(x + 0, y + 0, "Shield", obj_gooter_furyshield);

            } 
    }
	

	

	if(obj_aura.auraHEART <= 0)
	{
		sprite_index = global.sprite_gooter_dead;
		image_index = 0;

		image_angle = 0;
		coolpitch = audio_sound_get_pitch(obj_collision_gooter.playmusic);
		audio_sound_pitch(obj_collision_gooter.playmusic,(coolpitch - 0.015));
	}

	if(stateRoll == 1)
	{
		if obj_collision_gooter.dash_dir = 0 
		{
			image_angle = 0;
			sprite_index = spr_gooter_readying;
		}
		
	}
}