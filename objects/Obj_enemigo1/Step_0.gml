// En el evento Step
if (!is_dead) {
    // Cambiar el objetivo si está cerca de un punto
    if (distance_to_object(target) < 5) {
        if (target == Obj_puntoA) {
            target = Obj_puntoB; // Cambiar al punto B
        } else {
            target = Obj_puntoA; // Cambiar al punto A
        }
    }

    // Moverse hacia el objetivo
    var dir = point_direction(x, y, target.x, target.y);
    x += lengthdir_x(speed, dir);
    y += lengthdir_y(speed, dir);
    
    // Cambiar sprite si el jugador está cerca
    if (instance_exists(Obj_Player) && distance_to_object(Obj_Player) < distance_threshold) {
        sprite_index = Spr_enemigo1_attack; // Cambiar a sprite de ataque
    } else {
        sprite_index = Spr_enemigo1_move; // Regresar al sprite normal
    }

    // Comprobar si el enemigo ha muerto
    if (health <= 0) {
        is_dead = true; // Marca al enemigo como muerto
        sprite_index = Spr_DeathAnimation; // Cambia a la animación de muerte
        image_index = 0; // Comienza desde el primer frame de la animación de muerte
        image_speed = 0.5; // Ajusta la velocidad de la animación de muerte
    }
} else {
    // Lógica para la animación de muerte
    if (image_index >= image_number - 1) { // Si está en el último frame de la animación de muerte
        instance_destroy(); // Destruye el enemigo al final de la animación de muerte
    }
}