draw_set_font(fnt_maphud);
draw_set_colour(label_color);
draw_set_alpha(1);
draw_set_halign(fa_right);

if place_meeting(x, y, obj_wm_gooter)
{
	if (dotselect == 1)
	{
		draw_text(1260, 24, label);
	}
	
} else {
	draw_text(1260, 24, "");
}