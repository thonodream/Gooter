/// @description Insert description here
// You can write your code in this editor
y -= 0.55;

if (y == ((0-height) + 500))
{
	room_goto(rm_title);
}

if input_check_pressed("back")
{
	room_goto(rm_title);
}