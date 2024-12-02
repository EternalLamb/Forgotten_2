if (global.Dano == true) { //Si el player esta golpeando, este tendrá prioridad.
    if (!is_dead) { 
        health -= 1;

        // Comprueba si el enemigo ha muerto
        if (health <= 0) {
            is_dead = true;
            sprite_index = Spr_Azote_Die; 
            image_index = 0; 
            image_speed = 1; 
        }
    }
} 