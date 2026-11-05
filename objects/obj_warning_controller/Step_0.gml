/// @description Insert description here
// You can write your code in this editor
var _settings_misc = ssave_get(fun_settings_misc);

if (obj_settings.settings_misc_disclaimer == true)
{
	if current_month == 10 and current_day == 31
        {
            
            room_goto(rm_title_halloween);
            
        } else if green_room_chance == 1000 
        {
            
            room_goto(rm_title_green);
            
        } else {
            
        	room_goto_next();
            
        }
}

cooldown = cooldown + 1;
if (cooldown >= 120)
{
	if (input_check_pressed("select"))
	{
		if current_month == 10 and current_day == 31
        {
            
            room_goto(rm_title_halloween);
            
        } else if green_room_chance == 1000 
        {
            
            room_goto(rm_title_green);
            
        } else {
            
        	room_goto_next();
            
        }
        
	}
	else if (input_check_pressed("back") or input_check_pressed("pause"))
	{
		game_end();
	}
}
