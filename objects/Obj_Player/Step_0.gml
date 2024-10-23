keyLeft = keyboard_check(ord("A"));
key_Right = keyboard_check(ord("D"));
key_climb = keyboard_check(ord("W"));
key_jump = keyboard_check_pressed(vk_space);
keyAttack = mouse_check_button_pressed(mb_left);

if (collision_rectangle(x-8,y,x+1,y+1,Obj_col,false,false) && key_jump == true)
{
	vspeed = -8;	
}

switch (state)
{
	case PLAYERSTATE.FREE: PlayerState_Free()
	break;
	case PLAYERSTATE.ATTACK_COMBO: PlayerState_AttackCombo()
	break;
	case PLAYERSTATE.ATTACK_SLASH: PlayerState_AttackSlash()
	break;
}

#region Lianas

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
		gravity = 0.3
	}
}
#endregion
