salto2 = keyboard_check_pressed(vk_space);

if (collision_rectangle(x-8,y,x+1,y+1,Obj_col,false,false))
{
	vspeed = -8;	
}