other.hp += -10;

if(other.hp == 0)
{
	other.alarm_set(0, 300);
}

instance_destroy();