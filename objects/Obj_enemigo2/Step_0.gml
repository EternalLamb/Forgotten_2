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
    
    // Comprobar si el enemigo ha muerto
    if (health <= 0) {
        is_dead = true; // Marca al enemigo como muerto
        sprite_index = Spr_enemigo2_dead; // Cambia a la animación de muerte
        image_index = 0; // Comienza desde el primer frame de la animación de muerte
        image_speed = 0.5; // Ajusta la velocidad de la animación de muerte
    }
} else {
    // Lógica para la animación de muerte 
    if (image_index >= image_number - 1) { // Si está en el último frame de la animación de muerte
        instance_destroy(); // Destruye el enemigo al final de la animación de muerte
    }
}

if (is_dead) {
    // Verifica si la animación de muerte ha terminado
    if (image_index >= image_number - 1) { // Si está en el último frame
        instance_destroy(); // Destruye el enemigo al final de la animación de muerte
    }
}

if (!is_dead) {
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

    // Verificar si el jugador está en el rango de ataque usando distancia
    var rango_ataque = 10; // Ajusta el rango de ataque según sea necesario
    if (distance_to_object(Obj_Player) < rango_ataque) {
        // Cambia al sprite de ataque e inicia la animación si el jugador está en el rango
        if (!Atacando) { 
            Atacando = true;
            sprite_index = Spr_enemigo2_attack; 
            image_index = 0; // Reinicia la animación de ataque
           
        }
    } else {
        Atacando = false;
        Danando = false; // Restablece el estado de daño
    }

    // Cambiar el sprite según el movimiento solo si no está atacando
    if (!Atacando) {
        if (velocidad != 0) {
            sprite_index = Spr_enemigo2_move;
        } else {
            sprite_index = Spr_enemigo2;
        }
    }

    // Lógica para hacer daño al jugador durante el ataque
    if (Atacando && global.Golpeando == false) {
        // Solo hace daño si está en el frame adecuado y el jugador está dentro del rango
        if (image_index >= 3 && image_index <= 4 && place_meeting(x-1,y,Obj_Player) || place_meeting(x-1,y,Obj_Player) ) {
            if (!Danando) { // Evita múltiples golpes en el mismo frame
                Obj_Player.vida -= 1; // Aplica daño al jugador

                // Empuja al jugador hacia atrás
                var push_direction = point_direction(x, y, Obj_Player.x, Obj_Player.y);
                Obj_Player.x += lengthdir_x(70, push_direction);
                Obj_Player.y += lengthdir_y(5, push_direction);

                Danando = true; // Marca que ya ha hecho daño en este frame
            }
        } else {
            Danando = false; // Permite que vuelva a hacer daño en el siguiente ataque
        }

        // Restablecer al sprite de movimiento una vez finalizada la animación de ataque
        if (image_index >= image_number - 1) {
            Atacando = false;
            sprite_index = Spr_enemigo2_move; // Cambia al sprite de movimiento
            image_speed = 1; // Restaura la velocidad de animación normal
        }
    }
}