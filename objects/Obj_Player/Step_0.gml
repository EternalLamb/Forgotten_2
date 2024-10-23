keyLeft = keyboard_check(ord("A"));
key_Right = keyboard_check(ord("D"));
keyAttack = mouse_check_button_pressed(mb_left);

switch (state)
{
	case PLAYERSTATE.FREE: PlayerState_Free()
	break;
	case PLAYERSTATE.ATTACK_COMBO: PlayerState_AttackCombo()
	break;
	case PLAYERSTATE.ATTACK_SLASH: PlayerState_AttackSlash()
	break;
}

