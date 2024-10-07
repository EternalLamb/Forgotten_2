if (!collision_rectangle(x-1, y, x+1, y+1, Obj_col ,false,false))
{
	gravity = 0.3;
}
if (vspeed > 0)
{
	sprite_index = Spr_Fall;
	var ground = collision_rectangle(x-1, y, x+1, y+vspeed, Obj_col ,false,false);
	if (ground) 
	{
		y = ground.y;
		vspeed = 0;
		gravity = 0;
	}
}
else if (vspeed < 0) 
{
	sprite_index = Spr_Jump;
	var ceiling = collision_rectangle(x-1, y+1, x+1, y-32+vspeed, Obj_col ,false,false);
	if (ceiling) 
	{
	y = ceiling.y + ceiling.sprite_height + 32;
	vspeed = 0;
	}
}