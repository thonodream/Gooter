// Box
draw_set_alpha(0.7);
if (obj_settings.settings_graphics_hud_theme == true)
{
	draw_rectangle_color(0,580,1280,640,#141223,#141223,#141223,#141223,0);
} else 
{
	draw_rectangle_color(0,580,1280,640,c_white,c_white,c_white,c_white,0);
}



// = Aura icons and text = \\

// Set font and alpha for icons and text
draw_set_alpha(1);
draw_set_font(fnt_pixelhud);

// // HUD left side

// Heart
draw_sprite(spr_heart_counter_icon, 0, 64, 600);

draw_set_colour(#FF75BA & c_white);
draw_set_halign(fa_center);
draw_set_alpha(1);

draw_text(64, 600, string("") + string(obj_aura.auraHEART));

// Dash
draw_sprite(spr_dash_counter_icon, 0, 128, 600);

draw_set_colour(#2E90F2 & c_white);
draw_set_halign(fa_center);
draw_set_alpha(1);

draw_text(128, 600, string("") + string(obj_aura.auraDASH));

// Blast
draw_sprite(spr_blast_counter_icon, 0, 192, 600);

draw_set_colour(#28D731 & c_white);
draw_set_halign(fa_center);
draw_set_alpha(1);

draw_text(192, 600, string("") + string(obj_aura.auraBLAST));

// Charge
if (obj_settings.settings_graphics_hud_theme == false)
{
draw_sprite(spr_charge_counter_icon_light, 0, 256, 600);
draw_set_colour(#ffa60c & c_white);
} else {
	draw_sprite(spr_charge_counter_icon, 0, 256, 600);
	draw_set_colour(#FFFF4D & c_white);
}
draw_set_halign(fa_center);
draw_set_alpha(1);

draw_text(256, 600, string("") + string(obj_aura.auraCHARGE));

// Fury
draw_sprite(spr_fury_counter_icon, 0, 320, 600);

draw_set_colour(#F2242B & c_white);
draw_set_halign(fa_center);
draw_set_alpha(1);

draw_text(320, 600, string("") + string(obj_aura.auraFURY));

// // HUD right side

// Courage
draw_sprite(spr_courage_counter_icon, 0, 1088, 600);

draw_set_colour(#B15AE8 & c_white);
draw_set_halign(fa_center);

if (obj_gooter.courageReq > 0)
{
	draw_text(1088, 600, string("") + string(obj_gooter.courageReq) + string(" left"));
} else {
	draw_text(1088, 600, string("") + string("CLEAR!"));
}


// Killscore
if (obj_settings.settings_graphics_hud_theme == true)
{
	draw_sprite_ext(spr_killscore_icon, 0, 1184, 600,1,1,0,c_white,1);
	draw_set_colour(c_white);
} else {
	draw_sprite_ext(spr_killscore_icon, 0, 1184, 600,1,1,0,c_black,1);
	draw_set_colour(c_black);
}


draw_set_halign(fa_center);
draw_set_alpha(1);

draw_text(1184, 600, string("") + string(obj_gooter.killscore));