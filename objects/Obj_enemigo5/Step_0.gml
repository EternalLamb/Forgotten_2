if(place_meeting(x,y,Obj_Player))
{
 HP -=1;	
}
//Empuje
if (place_meeting(x-1,y,Obj_Player))
{
	x += 3;	
}
if (place_meeting(x+1,y,Obj_Player))
{
	x -= 3;	
}

x += direccion * velocidad;

// Verificar si el enemigo llegó al punto objetivo
if (direccion == 1 && x >= puntoB.x) {
    direccion = -1;
    image_xscale = -1;
} 
else if (direccion == -1 && x <= puntoA.x) {
    direccion = 1;
    image_xscale = 1;
}

// Cambiar el sprite según el movimiento
if (velocidad != 0) {
    sprite_index = Spr_enemigo5_move;
} else {
    sprite_index = Spr_enemigo5;
}

// Verificar si el jugador está en el rango de ataque
if (instance_exists(Obj_Player)) {
    var distancia = point_distance(x, y, Obj_Player.x, Obj_Player.y);

    if (distancia < rango_ataque) {
        sprite_index = Spr_enemigo5_attak;

        if (alarm[0] <= 0) {
            Obj_Player.vida -= 0.5;
            show_debug_message("Daño al jugador. Vida restante: " + string(Obj_Player.vida));
            alarm[0] = 30;
        }
    }
}
