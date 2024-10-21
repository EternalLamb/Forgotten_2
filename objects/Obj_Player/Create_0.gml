trepado = false;
saltar2 = keyboard_check(ord("W"));
saltar3 = keyborad_check(vk_space);
text_id = "";

state = PLAYERSTATE.FREE;


HitByAttack = ds_list_create();




enum PLAYERSTATE
{
	FREE,
	ATTACK_SLASH,
	ATTACK_COMBO
}