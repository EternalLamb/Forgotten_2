original_sprite = Spr_Player;

if (variable_global_exists("Can_attack"))
{
	global.Can_Attack = false;
}
if(!variable_global_exists("vida"))
	global.vida = 3; //vida del player

if (!variable_global_exists("Freedom"))
{
	global.Freedom = 0;	
}
global.Golpeando = false;
global.Dano = false;
global.Can_Attack = false;
trepado = false;
global.Freedom = 0;

