if (global.Dano == true) { //Si el player esta golpeando, este tendrá prioridad.
    if (!is_dead) { 
        Vida -= 1;

        // Comprueba si el enemigo ha muerto
        if (Vida <= 0) {
            is_dead = true;
            sprite_index = Spr_enemigo5_dead; 
            image_index = 0; 
            image_speed = 0.5; 
        }
    }
} 