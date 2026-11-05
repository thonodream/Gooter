if (stun > 0) {
stun -= 1;
alarm_set(2,60);
}
if (stun == 0) {
if !audio_is_playing(snd_player_unstuck) {audio_play_sound(snd_player_unstuck,0,0,obj_settings.settings_vol_sfx);}
}