if (obj_gooter.countdown_mode == 0)
{
	// 1upIndie the goat

	// Movement Input Checks
	var _left = input_check("left");
	var _right = input_check("right");
	var _up = input_check("up");
	var _down = input_check("down");

	// Get Collidable Tilesets
	var _layer_front_id = layer_get_id("Walls_f");
	var _layer_fence_id = layer_get_id("Walls_fe");
	var _layer_coll_id = layer_get_id("Walls_coll");

	// Get Collidable Tilemaps
	var _map_front_id = layer_tilemap_get_id(_layer_front_id);
	var _map_fence_id = layer_tilemap_get_id(_layer_fence_id);
	var _map_coll_id = layer_tilemap_get_id(_layer_coll_id);

	/// Movement/Collision Checks
    if (obj_pause.pause != 1)
    {
        if(!obj_aura.auraHEART <= 0 and stun == 0)
            {
                if(obj_gooter.stateRoll == 0)
                {
                
                    if (_left == 1) 
                    {
                        // Is there a collision on the right side?
                        var _left_top_front = tilemap_get_at_pixel(_map_front_id, bbox_left-move_speed, bbox_top);
                        var _left_bot_front = tilemap_get_at_pixel(_map_front_id, bbox_left-move_speed, bbox_bottom);
                        var _left_top_fence = tilemap_get_at_pixel(_map_fence_id, bbox_left-move_speed, bbox_top);
                        var _left_bot_fence = tilemap_get_at_pixel(_map_fence_id, bbox_left-move_speed, bbox_bottom);
                        var _left_top_coll = tilemap_get_at_pixel(_map_coll_id, bbox_left-move_speed, bbox_top);
                        var _left_bot_coll = tilemap_get_at_pixel(_map_coll_id, bbox_left-move_speed, bbox_bottom);
                    
                        // If not, Move!
                        if (_left_top_front == 0 and _left_bot_front == 0 and _left_top_fence == 0 and _left_bot_fence == 0 and _left_top_coll == 0 and _left_bot_coll == 0) 
                        { 
                            x -= move_speed;
                            
                        }
                    }
                
                    if (_right == 1) 
                    {
                        // Is there a collision on the left side?
                        var _right_top_front = tilemap_get_at_pixel(_map_front_id, bbox_right+move_speed, bbox_top);
                        var _right_bot_front = tilemap_get_at_pixel(_map_front_id, bbox_right+move_speed, bbox_bottom);
                        var _right_top_fence = tilemap_get_at_pixel(_map_fence_id, bbox_right+move_speed, bbox_top);
                        var _right_bot_fence = tilemap_get_at_pixel(_map_fence_id, bbox_right+move_speed, bbox_bottom);
                        var _right_top_coll = tilemap_get_at_pixel(_map_coll_id, bbox_right+move_speed, bbox_top);
                        var _right_bot_coll = tilemap_get_at_pixel(_map_coll_id, bbox_right+move_speed, bbox_bottom);
                    
                        // If not, Move!
                        if (_right_top_front == 0 and _right_bot_front == 0 and _right_top_fence == 0 and _right_bot_fence == 0 and _right_top_coll == 0 and _right_bot_coll == 0) 
                        { 
                            x += move_speed;
                            
                        }
                    }
                
                    if (_up == 1) 
                    {
                        // Is there a collision on the top?
                        var _up_left_front = tilemap_get_at_pixel(_map_front_id, bbox_left, bbox_top-move_speed);
                        var _up_right_front = tilemap_get_at_pixel(_map_front_id, bbox_right, bbox_top-move_speed);
                        var _up_left_fence = tilemap_get_at_pixel(_map_fence_id, bbox_left, bbox_top-move_speed);
                        var _up_right_fence = tilemap_get_at_pixel(_map_fence_id, bbox_right, bbox_top-move_speed);
                        var _up_left_coll = tilemap_get_at_pixel(_map_coll_id, bbox_left, bbox_top-move_speed);
                        var _up_right_coll = tilemap_get_at_pixel(_map_coll_id, bbox_right, bbox_top-move_speed);
                    
                        // If not, Move!
                        if (_up_left_front == 0 and _up_right_front == 0 and _up_left_fence == 0 and _up_right_fence == 0 and _up_left_coll == 0 and _up_right_coll == 0) 
                        { 
                            y -= move_speed;
                            
                        }
                    }
                    if (_down == 1) 
                    {
                        // Is there a collision on the bottom?
                        var _down_left_front = tilemap_get_at_pixel(_map_front_id, bbox_left, bbox_bottom+move_speed);
                        var _down_right_front = tilemap_get_at_pixel(_map_front_id, bbox_right, bbox_bottom+move_speed);
                        var _down_left_fence = tilemap_get_at_pixel(_map_fence_id, bbox_left, bbox_bottom+move_speed);
                        var _down_right_fence = tilemap_get_at_pixel(_map_fence_id, bbox_right, bbox_bottom+move_speed);
                        var _down_left_coll = tilemap_get_at_pixel(_map_coll_id, bbox_left, bbox_bottom+move_speed);
                        var _down_right_coll = tilemap_get_at_pixel(_map_coll_id, bbox_right, bbox_bottom+move_speed);
                    
                        // If not, Move!
                        if (_down_left_front == 0 and _down_right_front == 0 and _down_left_fence == 0 and _down_right_fence == 0 and _down_left_coll == 0 and _down_right_coll == 0) 
                        { 
                            y += move_speed;
                            
                        }
                    }
                }
            
                if(obj_gooter.stateRoll == 1)
                {
                    if (input_check_pressed("left")) 
                    {
                        if (dash_dir != 1) 
                        {
                            dash_dir = 1;
                            audio_play_sound(snd_orbdash_release,0,0,obj_settings.settings_vol_sfx);
                        }
                        //var _rollparsys = part_system_create(par_gooter_roll);
                        //part_system_position(_rollparsys, x, y);
        
                        obj_aura.auraDASH -= 1;
        
                
                        alarm_set(0, 120);
                    }
                    if (input_check_pressed("right")) 
                    {
                        if (dash_dir != 2) 
                        {
                            dash_dir = 2;
                            audio_play_sound(snd_orbdash_release,0,0,obj_settings.settings_vol_sfx);
                        }
                        //var _rollparsys = part_system_create(par_gooter_roll);
                        //part_system_position(_rollparsys, x, y);
                
                        obj_aura.auraDASH -= 1;
        
                
                        alarm_set(0, 120);
                    }
                    if (input_check_pressed("up")) 
                    {
                        if (dash_dir != 3) 
                        {
                            dash_dir = 3;
                            audio_play_sound(snd_orbdash_release,0,0,obj_settings.settings_vol_sfx);
                        }
                        //var _rollparsys = part_system_create(par_gooter_roll);
                        //part_system_position(_rollparsys, x, y);
                
        
                        obj_aura.auraDASH -= 1;
        
                
                        alarm_set(0, 120);
                    }
                    if (input_check_pressed("down")) 
                    {
                        if (dash_dir != 4) 
                        {
                            dash_dir = 4;
                            audio_play_sound(snd_orbdash_release,0,0,obj_settings.settings_vol_sfx);
                        }
                        //var _rollparsys = part_system_create(par_gooter_roll);
                        //part_system_position(_rollparsys, x, y);
                
        
                        obj_aura.auraDASH -= 1;
        
                
                        alarm_set(0, 120);
                    }
                
                    if (dash_dir = 1)
                    {
                        // Is there a collision on the right side?
                        var _left_top_front = tilemap_get_at_pixel(_map_front_id, bbox_left-move_speed, bbox_top);
                        var _left_bot_front = tilemap_get_at_pixel(_map_front_id, bbox_left-move_speed, bbox_bottom);
                        var _left_top_fence = tilemap_get_at_pixel(_map_fence_id, bbox_left-move_speed, bbox_top);
                        var _left_bot_fence = tilemap_get_at_pixel(_map_fence_id, bbox_left-move_speed, bbox_bottom);
                        var _left_top_coll = tilemap_get_at_pixel(_map_coll_id, bbox_left-move_speed, bbox_top);
                        var _left_bot_coll = tilemap_get_at_pixel(_map_coll_id, bbox_left-move_speed, bbox_bottom);
                    
                        // If not, Move!
                        if (_left_top_front == 0 and _left_bot_front == 0 and _left_top_fence == 0 and _left_bot_fence == 0 and _left_top_coll == 0 and _left_bot_coll == 0) 
                        { 
                            obj_gooter.sprite_index = spr_gooter_dash;
                            obj_gooter.image_angle = 90;
							x -= (move_speed + 2.5);	
                        } else {
                            if obj_gooter.sprite_index != spr_gooter {obj_gooter.sprite_index = spr_gooter;}
                            obj_gooter.stateRoll = 0;
                        }
                    }
                    if (dash_dir = 2)
                    {
                        // Is there a collision on the left side?
                        var _right_top_front = tilemap_get_at_pixel(_map_front_id, bbox_right+move_speed, bbox_top);
                        var _right_bot_front = tilemap_get_at_pixel(_map_front_id, bbox_right+move_speed, bbox_bottom);
                        var _right_top_fence = tilemap_get_at_pixel(_map_fence_id, bbox_right+move_speed, bbox_top);
                        var _right_bot_fence = tilemap_get_at_pixel(_map_fence_id, bbox_right+move_speed, bbox_bottom);
                        var _right_top_coll = tilemap_get_at_pixel(_map_coll_id, bbox_right+move_speed, bbox_top);
                        var _right_bot_coll = tilemap_get_at_pixel(_map_coll_id, bbox_right+move_speed, bbox_bottom);
                    
                        // If not, Move!
                        if (_right_top_front == 0 and _right_bot_front == 0 and _right_top_fence == 0 and _right_bot_fence == 0 and _right_top_coll == 0 and _right_bot_coll == 0) 
                        { 
							obj_gooter.sprite_index = spr_gooter_dash;
                            obj_gooter.image_angle = 270;
                            x += (move_speed + 2.5);	
                        } else {
                            if obj_gooter.sprite_index != spr_gooter {obj_gooter.sprite_index = spr_gooter;}
                            obj_gooter.stateRoll = 0;
                        }
                    }
                    if (dash_dir = 3)
                    {
                        // Is there a collision on the top?
                        var _up_left_front = tilemap_get_at_pixel(_map_front_id, bbox_left, bbox_top-move_speed);
                        var _up_right_front = tilemap_get_at_pixel(_map_front_id, bbox_right, bbox_top-move_speed);
                        var _up_left_fence = tilemap_get_at_pixel(_map_fence_id, bbox_left, bbox_top-move_speed);
                        var _up_right_fence = tilemap_get_at_pixel(_map_fence_id, bbox_right, bbox_top-move_speed);
                        var _up_left_coll = tilemap_get_at_pixel(_map_coll_id, bbox_left, bbox_top-move_speed);
                        var _up_right_coll = tilemap_get_at_pixel(_map_coll_id, bbox_right, bbox_top-move_speed);
                    
                        // If not, Move!
                        if (_up_left_front == 0 and _up_right_front == 0 and _up_left_fence == 0 and _up_right_fence == 0 and _up_left_coll == 0 and _up_right_coll == 0) 
                        { 
							obj_gooter.sprite_index = spr_gooter_dash;
                            obj_gooter.image_angle = 0;
                            y -= (move_speed + 2.5);	
                        } else {
                            if obj_gooter.sprite_index != spr_gooter {obj_gooter.sprite_index = spr_gooter;}
                            obj_gooter.stateRoll = 0;
                        }
                    }
                    if (dash_dir = 4)
                    {
                        // Is there a collision on the bottom?
                        var _down_left_front = tilemap_get_at_pixel(_map_front_id, bbox_left, bbox_bottom+move_speed);
                        var _down_right_front = tilemap_get_at_pixel(_map_front_id, bbox_right, bbox_bottom+move_speed);
                        var _down_left_fence = tilemap_get_at_pixel(_map_fence_id, bbox_left, bbox_bottom+move_speed);
                        var _down_right_fence = tilemap_get_at_pixel(_map_fence_id, bbox_right, bbox_bottom+move_speed);
                        var _down_left_coll = tilemap_get_at_pixel(_map_coll_id, bbox_left, bbox_bottom+move_speed);
                        var _down_right_coll = tilemap_get_at_pixel(_map_coll_id, bbox_right, bbox_bottom+move_speed);
                    
                        // If not, Move!
                        if (_down_left_front == 0 and _down_right_front == 0 and _down_left_fence == 0 and _down_right_fence == 0 and _down_left_coll == 0 and _down_right_coll == 0) 
                        { 
                            obj_gooter.sprite_index = spr_gooter_dash;
                            obj_gooter.image_angle = 180;
							y += (move_speed + 2.5);	
                        } else {
                            if obj_gooter.sprite_index != spr_gooter {obj_gooter.sprite_index = spr_gooter;}
                            obj_gooter.stateRoll = 0;
							
                        }
                    }
                }
            }
        
            // Invincibility Check
        
            if (invin > 0)
            {
                invin -= 1;
            }
        
            // Teleporter Arrow Check
        
            if (obj_aura.auraCOURAGE = 0)
            {
                if (!instance_exists(obj_teleporter_arrow))
                {
                    instance_create_layer(0,0,"Spiri",obj_teleporter_arrow);
                }
            }
    }
	

	// Prevent the player from leaving the room
	x = clamp(x,0,room_width);

	y = clamp(y,0,room_height); 
}
