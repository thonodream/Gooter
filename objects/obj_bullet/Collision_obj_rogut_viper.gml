if(sprite_index == spr_bullet_regular)
{
	other.hp += -1;
}


if(sprite_index == spr_bullet_charge and obj_aura.auraCHARGE > 0)
{
	other.hp += -2;
}

instance_destroy();