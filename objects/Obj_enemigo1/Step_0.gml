if (HP == 0)
{
instance_destroy();	
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
    sprite_index = Spr_enemigo1_move;
} else {
    sprite_index = Spr_enemigo1;
}

// Verificar si el jugador está en el rango de ataque
if (instance_exists(Obj_Player)) {
    var distancia = point_distance(x, y, Obj_Player.x, Obj_Player.y);

    if (distancia < rango_ataque) {
        sprite_index = Spr_enemigo1_attack;

        if (alarm[0] <= 0) {
            Obj_Player.vida -= 0.5;
            show_debug_message("Daño al jugador. Vida restante: " + string(Obj_Player.vida));
            alarm[0] = 30;
        }
    }
}