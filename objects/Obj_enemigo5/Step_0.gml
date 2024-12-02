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
    if (Vida <= 0) {
        is_dead = true; // Marca al enemigo como muerto
        sprite_index = Spr_enemigo5_dead; 
        image_index = 0; 
    }
} else {
    
    if (image_index >= image_number - 1) { 
        instance_destroy(); // Destruye el enemigo al final de la animación de muerte
    }
}

if (is_dead) {
    if (image_index >= image_number - 1) { // Si está en el último frame
        instance_destroy(); // Destruye el enemigo al final de la animación de muerte
    }
}

if (!is_dead) {
    x += direccion * velocidad;

   
    if (direccion == 1 && x >= puntoB.x) {
        direccion = -1;
        image_xscale = -1;
    } 
    else if (direccion == -1 && x <= puntoA.x) {
        direccion = 1;
        image_xscale = 1;
    }

   
    var rango_ataque = 70;
    if (distance_to_object(Obj_Player) < rango_ataque) {
        // Cambia al sprite de ataque e inicia la animación si el jugador está en el rango
        if (!Atacando) { 
            Atacando = true;
            sprite_index = Spr_enemigo5_attak; 
            image_index = 0; 
           
        }
    } else {
        Atacando = false;
        Danando = false; 
    }

    if (!Atacando) {
        if (velocidad != 0) {
            sprite_index = Spr_enemigo5_move;
        } else {
            sprite_index = Spr_enemigo5;
        }
    }

 
    if (Atacando && global.Golpeando == false) {
        
        if (image_index >= 2 && image_index <= 9 && place_meeting(x-1,y,Obj_Player) || place_meeting(x+1,y,Obj_Player) ) {
            if (!Danando) {
                global.vida -= 0.5; // Aplica daño al jugador

                // Empuja al jugador hacia atrás
                var push_direction = point_direction(x, y, Obj_Player.x, Obj_Player.y);
                Obj_Player.x += lengthdir_x(70, push_direction);
                Obj_Player.y += lengthdir_y(5, push_direction);

                Danando = true; 
            }
        } else {
            Danando = false; 
        }

      
        if (image_index >= image_number - 1) {
            Atacando = false;
            sprite_index = Spr_enemigo5_move; 
            image_speed = 1;
        }
    }
}