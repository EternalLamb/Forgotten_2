trepado = false;
text_id = "";


state = PLAYERSTATE.FREE;


HitByAttack = ds_list_create();




enum PLAYERSTATE
{
	FREE,
	ATTACK_SLASH,
	ATTACK_COMBO
}