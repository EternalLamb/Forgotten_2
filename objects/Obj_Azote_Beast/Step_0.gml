 if (image_index == 12)
{
	sprite_index = Spr_Azote_Idle;
}
if (place_meeting(x-128,y,Obj_Player))
{
	Atacando = true	
}
else
{
	Atacando = false	
}
if (Atacando == true)
{
	mask_index = Spr_Azote_Attack;
	sprite_index = Spr_Azote_Attack;
	if (image_index == 1)
	{
		if (!audio_is_playing(Azote))
		{
			audio_play_sound(Azote,1,1);		
		}
	}
}
if (Atacando == false)
{
	mask_index = Spr_Azote_Idle;
	sprite_index = Spr_Azote_Idle;
	audio_stop_sound(Azote);
}

if ((image_index < 2 || image_index > 6) && Atacando == true)
{
	mask_index = Spr_Azote_Idle;	
}

if (Atacando && global.Golpeando == false) 
{
	mask_index = Spr_Azote_Attack;
    // Solo hace daño si está en el frame adecuado y el jugador está dentro del rango
    if (image_index >= 2 && image_index <= 6 && place_meeting(x-1,y,Obj_Player) || place_meeting(x+1,y,Obj_Player) )
	{
		if (!Danando)
		{
			global.vida -= 1; // Aplica daño al jugador
			// Empuja al jugador hacia atrás
            var push_direction = point_direction(x, y, Obj_Player.x, Obj_Player.y);
            Obj_Player.x += lengthdir_x(100, push_direction);
            Obj_Player.y += lengthdir_y(5, push_direction);
			Danando = true; // Marca que ya ha hecho daño en este frame
        }
    }
	else 
	{
		Danando = false; // Permite que vuelva a hacer daño en el siguiente ataque
    }
  }
  if (is_dead) {
	Danando = true;
	 sprite_index = Spr_Azote_Die; 
    // Verifica si la animación de muerte ha terminado
    if (image_index >= image_number - 1) { // Si está en el último frame
        instance_destroy(); // Destruye el enemigo al final de la animación de muerte
    }
}