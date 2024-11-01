vida = 3; //vida del player

trepado = false;
text_id = "";


state = PLAYERSTATE.FREE;


HitByAttack = ds_list_create();

// aqui ta 


enum PLAYERSTATE
{
	FREE,
	ATTACK_SLASH,
	ATTACK_COMBO
}