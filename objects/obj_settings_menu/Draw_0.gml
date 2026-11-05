// draw fonts
draw_set_font(fnt_menu_options);

// dynamic width/height
var _new_w = 0;

for (var i = 0; i < op_length; i++) 
{
	var _op_w = string_width(option[menu_level, i]);
	_new_w = max(_new_w, _op_w);
}
width = _new_w + op_border*2;
height = op_border*2 + string_height(option[0,0]) +(op_length-1)*op_space;



// draw BG
draw_sprite_ext(spr_settings_listslice, image_index, x, y, width/sprite_width, height/sprite_height, 0,c_white,1);

// draw options

draw_set_valign(fa_top);
draw_set_halign(fa_left);

for (var i = 0; i < op_length; i++) 
{
	var _c = color_unselect;
	if pos == i { _c = color_select;}
	draw_text_color(x + op_border, y + op_border + op_space*i, option[menu_level,i],_c,_c,_c,_c,1);
}

// draw description
draw_text_color(x + (width-85), y-20, option_description,c_black,c_black,c_black,c_black,1);