if (place_meeting(x-1200, y, Obj_Player) || (place_meeting(x-1000, y, Obj_Player)) || (place_meeting(x-1100, y, Obj_Player)) || (place_meeting(x-256, y, Obj_Player)) || (place_meeting(x-128, y, Obj_Player)))
{
	sprite_index = Spr_Beast_2_Attack	
	Atacando = true;
}
else if(image_index == 24)
{
	sprite_index = Spr_Beast_2;
	Atacando = false
}
if (image_index >= 24 && image_index == 35)
{
	mask_index = Spr_Beast_2;	
}
else
{
	mask_index = Spr_Beast_2_Attack;	
}
if (!(place_meeting(x-640, y, Obj_Player) || (place_meeting(x-512, y, Obj_Player)) || (place_meeting(x-384, y, Obj_Player)) || (place_meeting(x-256, y, Obj_Player)) || (place_meeting(x-128, y, Obj_Player))))
{	
	Atacando = false;
}
  if (Atacando && global.Golpeando == false) {
	  mask_index = Spr_Beast_2_Attack;
        // Solo hace daño si está en el frame adecuado y el jugador está dentro del rango
        if (image_index >= 2 && image_index <= 6 && place_meeting(x-1,y,Obj_Player) || place_meeting(x+1,y,Obj_Player) ) {
            if (!Danando) {
                global.vida -= 1; // Aplica daño al jugador

                // Empuja al jugador hacia atrás
                var push_direction = point_direction(x, y, Obj_Player.x, Obj_Player.y);
                Obj_Player.x += lengthdir_x(110, push_direction);
                Obj_Player.y += lengthdir_y(5, push_direction);

                Danando = true; // Marca que ya ha hecho daño en este frame
            }
        } else {
            Danando = false; // Permite que vuelva a hacer daño en el siguiente ataque
        }
  }
  if (is_dead) {
	 sprite_index = Spr_far_die;
	 image_speed = 0.5;
	 Atacando = false;
    // Verifica si la animación de muerte ha terminado
    if (image_index >= image_number - 1) { // Si está en el último frame
        instance_destroy(); // Destruye el enemigo al final de la animación de muerte
    }
}
