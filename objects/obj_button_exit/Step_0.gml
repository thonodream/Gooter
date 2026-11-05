/// @description Insert description here
// You can write your code in this editor
if os_browser == browser_not_a_browser {
   if (input_check_pressed("select"))
   {
   	if (obj_button_highlighted_mainmenu.button_highlighted == 2) game_end();
   }
} else {
    if (input_check_pressed("select"))
    {
    if (obj_button_highlighted_mainmenu.button_highlighted == 2) 
        {
        
        room_goto(rm_exit_funny);
        }
    }
}
if (obj_button_highlighted_mainmenu.button_highlighted == 2) sprite_index = spr_button_exit_highlighted;
if (obj_button_highlighted_mainmenu.button_highlighted != 2) sprite_index = spr_button_exit;