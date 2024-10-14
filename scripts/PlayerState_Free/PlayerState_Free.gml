// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function PlayerState_Free(){
	if (keyLeft)
	{
			if place_free(x-3, y)
		{
				x -= 3;	
				sprite_index = Spr_Walk;
				image_xscale = -3;
			}
	}
	
		if (key_Right)
		{
			if place_free(x+3, y)
			{
				x += 3;	
				sprite_index = Spr_Walk;
				image_xscale = 3;
			}
		}
		
if(keyAttack) state = PLAYERSTATE.ATTACK_SLASH;
}
