keyLeft = keyboard_check(ord("A"));
key_Right = keyboard_check(ord("D"));
key_climb = keyboard_check(ord("W"));
key_jump = keyboard_check_pressed(vk_space);
keyAttack = mouse_check_button_pressed(mb_left);
Golpeando = false;
Liana = false;
indice_frame = sprite_index;

#region MOVIEMIENTO
var hor  = keyboard_check(ord("D")) - keyboard_check(ord("A"));

if (hor != 0)
{
	if (place_free(x + hor * 3,y))
	{
	x += hor * 3;	
	}
	
	image_xscale = hor;
	sprite_index = Spr_Walk;
}
else
{
	sprite_index = Spr_Player;	
}

if (collision_rectangle(x-8,y,x+1,y+1,Obj_col,false,false) && key_jump == true)
{
	vspeed = -8;	
}
#endregion

#region LIANAS

if (place_meeting(x, y, Obj_canjump) && key_climb == true)
{
	trepado = true;	
}
else
{
	trepado = false;	
}
if (trepado == true)
{
	vspeed = 0;
	gravity = 0;
	sprite_index = Spr_Grab;
	if(keyLeft == true && trepado == true)
	{
		sprite_index = Spr_grabMove;
			
	}
	if(key_Right == true && trepado == true)
	{
		sprite_index = Spr_grabMove;
			
	}
	if (key_jump == true)
	{
		sprite_index = Spr_Jump;
		vspeed = -8;
		
	}
}
if (place_meeting(x, y, Obj_canjump))
{
	Liana = true;	
	if (Liana == true && key_jump == true)
	{
		sprite_index = Spr_Jump;
		vspeed = -6;
	}
}
#endregion

#region Vida
if (vida <= 0) {
    room_restart(); // Reinicia el nivel actual
}
#endregion

#region COMBATE
if (room != Room1)
{
	if (keyAttack == true && indice_frame != 4)
	{
		Golpeando = true;
	}
	else
	{
		Golpeando = false	
	}
	if (Golpeando == true)
	{
		mask_index = Spr_AttackSlash_1;
		if (indice_frame == 4)
		{
			Golpeando = false;	
			mask_index = Spr_Player;
		}
	}
}
#endregion