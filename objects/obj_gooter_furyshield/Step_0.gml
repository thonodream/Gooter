/// @description Insert description here
// You can write your code in this editor

x = obj_collision_gooter.x;
y = obj_collision_gooter.y;

image_angle -= 4;

if (obj_aura.auraFURY <= 0) {
	instance_destroy(self);
}