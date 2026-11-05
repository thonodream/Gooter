if (obj_pause.pause != 1)
{
    if instance_number(enemy_check) < enemy_max
    {
        instance_create_layer(irandom_range(room_width - (room_width * 2),room_width), y + irandom_range(room_height - (room_height * 2),room_height), "Friend_Foe", enemy_spawner);
    }
}

if (obj_aura.auraHEART > 0)
{
	alarm_set(0, irandom_range(spawn_timer_min, spawn_timer_max));
}
