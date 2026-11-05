sprite_index = global.sprite_rogut_viper;

hp = 30;

stateCower = 0;

enemyDrop = 0;

if (os_browser == browser_not_a_browser and obj_settings.settings_graphics_particles == true) { alarm_set(1,20) }

kill_sound = choose(snd_player_death_1,snd_player_death_2,snd_player_death_3,snd_player_death_4);