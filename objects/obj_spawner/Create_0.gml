draw_texture_flush();
sprite_prefetch(spr_gooter);
sprite_prefetch(spr_teleporter_inactive);
sprite_prefetch(spr_heart_counter_icon);
sprite_prefetch(spr_dash_counter_icon);
sprite_prefetch(spr_charge_counter_icon);
sprite_prefetch(spr_blast_counter_icon);
sprite_prefetch(spr_fury_counter_icon);
sprite_prefetch(spr_courage_counter_icon);

room_id = layer_get_target_room();

alarm_set(0, irandom_range(spawn_timer_min, spawn_timer_max));
