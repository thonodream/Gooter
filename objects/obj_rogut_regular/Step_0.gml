image_angle = direction;

direction = point_direction(x, y, obj_gooter.x, obj_gooter.y);

if(stateCower == 0)
{
	if (hp < 5)
	{
	   sprite_index = global.sprite_rogut_dying;
	   if (obj_pause.pause != 1)
        {
            speed = 4; 
        } else {
            speed = 0;
        }
	}
	
	if (hp >= 5)
	{
        
        if (obj_pause.pause != 1)
        {
            speed = 5;
        } else {
            speed = 0;
        }
	
	}
	

	image_alpha = 1;
}

if(stateCower == 1)
{
	sprite_index = global.sprite_rogut_hiding;
    if (obj_pause.pause != 1)
    {
        speed = -5;
    } else {
        speed = 0;
    }
	image_alpha = 0.5;
}

if(hp < 1)
{
	instance_destroy();
}

if (obj_aura.auraHEART < 1)
{
	instance_destroy();
}