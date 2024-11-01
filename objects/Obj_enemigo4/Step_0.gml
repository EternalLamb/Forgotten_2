// Detectar si el jugador está dentro del rango de ataque
var rango_izquierdo = min(puntoA.x, puntoB.x);
var rango_derecho = max(puntoA.x, puntoB.x);

if (instance_exists(Obj_Player) && Obj_Player.x >= rango_izquierdo && Obj_Player.x <= rango_derecho) {
    // Estado de ataque: el jugador está en el rango
    estado = "atacando";
} else {
    // Estado de patrullaje
    estado = "patrullando";
}

// Comportamiento según el estado
if (estado == "patrullando") {
    // Movimiento de patrullaje
    x += direccion * velocidad;

    // Comprobar si el enemigo llegó al punto objetivo
    if (direccion == 1 && x >= objetivo_x) {
        // Cambiar la dirección a la izquierda
        direccion = -1;
        objetivo_x = puntoA.x;
        image_xscale = -1;  // Voltear el sprite horizontalmente
    } 
    else if (direccion == -1 && x <= objetivo_x) {
        // Cambiar la dirección a la derecha
        direccion = 1;
        objetivo_x = puntoB.x;
        image_xscale = 1;  // Restaurar el sprite
    }

    // Cambiar entre los sprites según el movimiento
    if (velocidad != 0) {
        sprite_index = Spr_enemigo4_move;  // Mostrar animación de caminar
    } else {
        sprite_index = Spr_enemigo4;  // Mostrar sprite de quieto
    }
} else if (estado == "atacando") {
    // Estado de ataque: Moverse hacia el jugador
    if (x < Obj_Player.x) {
        x += velocidad; // Mover hacia la derecha
        image_xscale = 1;
    } else {
        x -= velocidad; // Mover hacia la izquierda
        image_xscale = -1;
    }

    // Cambiar sprite a una animación de ataque (opcional)
    sprite_index = Spr_enemigo4_attack;

    // Comprobar distancia para realizar un ataque
    if (distance_to_object(Obj_Player) < 32) {
        Obj_Player.vida -= 1; // Causar daño al jugador
    }
}
