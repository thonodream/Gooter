// Feather disable all

//This script contains the default profiles, and hence the default bindings and verbs, for your game
//
//  Please edit this macro to meet the needs of your game!
//
//The struct return by this script contains the names of each default profile.
//Default profiles then contain the names of verbs. Each verb should be given a binding that is
//appropriate for the profile. You can create bindings by calling one of the input_binding_*()
//functions, such as input_binding_key() for keyboard keys and input_binding_mouse() for
//mouse buttons

function __input_config_verbs()
{
    return {
        keyboard_and_mouse:
        {
            up:    input_binding_key("W"),
	        down:  input_binding_key("S"),
	        left:  input_binding_key("A"),
	        right: input_binding_key("D"),
        
	        shoot:  input_binding_mouse_button(mb_left),
			charge:  input_binding_mouse_button(mb_right),
	        blast:  [input_binding_mouse_button(mb_middle), input_binding_key("C")],
	        action:  input_binding_key(vk_enter),
	        roll: input_binding_key("R"),
			shield: input_binding_key("Q"),
		
			//aim_up:    input_binding_key(vk_up),
	        //aim_down:  input_binding_key(vk_down),
	        //aim_left:  input_binding_key(vk_left),
	       // aim_right: input_binding_key(vk_right),
        
	        //No aiming verbs since we use the mouse for that (see below for aiming verb examples)
        
	        pause: input_binding_key(vk_tab),
			menu: input_binding_key(vk_escape),
			select: input_binding_key(vk_enter),
			back: input_binding_key(vk_shift),
        },
        
        gamepad:
        {
            up:    [input_binding_gamepad_axis(gp_axislv, true),  input_binding_gamepad_button(gp_padu)],
	        down:  [input_binding_gamepad_axis(gp_axislv, false), input_binding_gamepad_button(gp_padd)],
	        left:  [input_binding_gamepad_axis(gp_axislh, true),  input_binding_gamepad_button(gp_padl)],
	        right: [input_binding_gamepad_axis(gp_axislh, false), input_binding_gamepad_button(gp_padr)],
        
	        shoot: [input_binding_gamepad_button(gp_shoulderrb)],
			charge: [input_binding_gamepad_button(gp_shoulderr)],
	        blast: [input_binding_gamepad_button(gp_shoulderlb)],
			action: [input_binding_gamepad_button(gp_face1)],
			shield: [input_binding_gamepad_button(gp_shoulderl)],
			roll:  [input_binding_gamepad_button(gp_face3)],
        
	        aim_up:    [input_binding_gamepad_axis(gp_axisrv, true)],
	        aim_down:  [input_binding_gamepad_axis(gp_axisrv, false)],
	        aim_left:  [input_binding_gamepad_axis(gp_axisrh, true)],
	        aim_right: [input_binding_gamepad_axis(gp_axisrh, false)],
		
	        pause: [input_binding_gamepad_button(gp_start)],
			menu: [input_binding_gamepad_button(gp_select)],
			select: [input_binding_gamepad_button(gp_face1)],
			back: [input_binding_gamepad_button(gp_face2)],
        },
        
        touch:
        {
            up:    input_binding_virtual_button(),
	        down:  input_binding_virtual_button(),
	        left:  input_binding_virtual_button(),
	        right: input_binding_virtual_button(),
		
			shoot: input_binding_virtual_button(),
			charge: input_binding_virtual_button(),
	        blast: input_binding_virtual_button(),
			action: input_binding_virtual_button(),
			shield: input_binding_virtual_button(),
			roll:  input_binding_virtual_button(),
		
			aim_up:    input_binding_virtual_button(),
	        aim_down:  input_binding_virtual_button(),
	        aim_left:  input_binding_virtual_button(),
	        aim_right: input_binding_virtual_button(),
        
	        pause: input_binding_virtual_button(),
			menu: input_binding_virtual_button(),
			select: input_binding_virtual_button(),
			back: input_binding_virtual_button(),
        }
    };
}