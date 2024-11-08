keyLeft = keyboard_check(ord("A"));
key_Right = keyboard_check(ord("D"));
key_climb = keyboard_check(ord("W"));
key_jump = keyboard_check_pressed(vk_space);
keyAttack = mouse_check_button_pressed(mb_left);
Liana = false;
indice_frame = sprite_index;
Grounded = false;

if (instance_place(x, y+1, Obj_col))
{
	Grounded = true;	
}
else
{
	Grounded = false
	audio_stop_sound(Snd_Step);
}


#region MOVIMIENTO
var hor  = keyboard_check(ord("D")) - keyboard_check(ord("A"));

if (hor != 0)
{
	if (place_free(x + hor * 3,y))
	{
	x += hor * 3;	
	}
	
	if (!audio_is_playing(Snd_Step) && Grounded == true)
	{
		audio_play_sound(Snd_Step, 1, false, 1, 1 , 0.6);
	}
	image_xscale = hor;
	sprite_index = Spr_Walk;
}
else
{
	audio_stop_sound(Snd_Step);
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

#region VIDA Y RESPAWN
if (global.vida <= 0) {
	global.vida = 3;
		x = 64;	
		y = 672;
	if (room == Room3)
	{
		x = 64;
		y =576;
	}
	if (room == Room4)
	{
		x = 96;
		y = 736;
	}
	if (room == Room5)
	{
		x = 64;
		y = 416;
	}
	if (room == Room6)
	{
		x = 64;
		y = 512;
	}
	if (room == Room7)
	{
		x = 64;
		y = 640;
	}
}
#endregion

#region COMBATE
if (global.Can_Attack == true) {
    if (keyAttack == true && !global.Golpeando) {  // Solo inicia el ataque si no estamos golpeando
        global.Golpeando = true;
        image_index = 0;
        image_speed = 0.5;  // Ajusta la velocidad de la animación para que se vea mejor
    }

   if (global.Golpeando == true)
{
			sprite_index = Spr_AttackSlash;	
			mask_index = Spr_AttackSlash;
			if (!audio_is_playing(Snd_Attack) && image_index == 3)
			{
				audio_play_sound(Snd_Attack, 10, false);	
			}
		if(image_index == 1)
		{
			global.Dano = true;	
		}
		else
		{
			global.Dano = false;	
		}
        // Permitir que la animación se reproduzca hasta el final
        if (image_index = 3) {
            global.Golpeando = false;
			mask_index = Spr_Player;
            sprite_index = Spr_Player;  // Regresa a la animación del jugador
            image_speed = 1;  // Restaurar la velocidad de la animación normal
        }
    }
}
#endregion

#region DAÑO ENEMIGOS Y EMPUJE
#region RINO
var enemy = instance_place(x, y + 3, Obj_enemigo1);
if (enemy) {
    if (enemy.y > y) {
        global.vida -= 1.5; 
        y -= 90; 
		vspeed = 0;
		
    }
}
enemy = instance_place(x, y - 1, Obj_enemigo1);
if (enemy) {
    if (enemy.y < y) {
        global.vida -= 1.5;
        y += 60; 
		vspeed = 0;
    }
}
#endregion
#region ARBOL
var enemy1 = instance_place(x, y + 3, Obj_enemigo2);
if (enemy1) {
    if (enemy1.y > y) {
        global.vida -= 1; 
        y -= 60; 
		vspeed = 0;
    }
}
enemy1 = instance_place(x, y - 1, Obj_enemigo2);
if (enemy1) {
    if (enemy1.y < y) {
        global.vida -= 1;
        y += 60; 
		vspeed = 0;
    }
}
#endregion
#region MURCIELAGO
var enemy2 = instance_place(x, y + 3, Obj_enemigo3);
if (enemy2) {
    if (enemy2.y > y) {
        global.vida -= 0.5; 
        y -= 60; 
		vspeed = 0;
    }
}
enem2y = instance_place(x, y - 1, Obj_enemigo3);
if (enemy2) {
    if (enemy2.y < y) {
        global.vida -= 0.5;
        y += 60; 
		vspeed = 0;
    }
}
#endregion
#region ARAÑA
var enemy3 = instance_place(x, y + 1, Obj_enemigo4);
if (enemy3) {
    if (enemy3.y > y) {
        global.vida -= 0.5; 
        y -= 60; 
		vspeed = 0;
    }
}
enemy3 = instance_place(x, y - 1, Obj_enemigo4);
if (enemy3) {
    if (enemy3.y < y) {
        global.vida -= 0.5;
        y += 60;  
		vspeed = 0; 
    }
}
#endregion
#region	SLIME
var enemy_5 = instance_place(x, y + 3, Obj_enemigo5);
if (enemy_5) {
    if (enemy_5.y > y) {
        global.vida -= 0.5; 
        y -= 60; 
		vspeed = 0;
		
    }
}
enemy_5 = instance_place(x, y - 1, Obj_enemigo5);
if (enemy_5) {
    if (enemy_5.y < y) {
        global.vida -= 0.5;
        y += 60; 
		vspeed = 0;
    }
}
#endregion
#endregion
