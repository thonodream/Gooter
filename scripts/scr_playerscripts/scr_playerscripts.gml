function playerobj_init(){
    instance_create_layer(obj_gooter.x + 0, obj_gooter.y + 0, "UI", obj_camera);

    instance_create_layer(obj_gooter.x + 0, obj_gooter.y + 0, "UI", obj_aura);

    instance_create_layer(obj_gooter.x + 0, obj_gooter.y + 0, "UI", obj_hud);
}