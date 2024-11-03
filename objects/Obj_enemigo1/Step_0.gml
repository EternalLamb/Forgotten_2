
// Mover al enemigo hacia el objetivo
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
    sprite_index = Spr_enemigo1_move;  // Mostrar animación de caminar
} else {
    sprite_index = Spr_enemigo1;  // Mostrar sprite de quieto
}


	