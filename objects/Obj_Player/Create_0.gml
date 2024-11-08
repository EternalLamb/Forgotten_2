original_sprite = Spr_Player;

if (variable_global_exists("Can_attack"))
{
	global.Can_Attack = false;
}
if(!variable_global_exists("vida"))
	global.vida = 3; //vida del player

global.Golpeando = false;
global.Dano = false;
global.Can_Attack = false;
trepado = false;

