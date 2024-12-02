if (global.Dano == true) { // Verifica si la colisión es con la hitbox del jugador atacando
    if (!is_dead) { // Solo aplica daño si el enemigo no está muerto
        Vida -= 1; // Aplica daño al enemigo (ajusta según sea necesario)

        // Comprueba si el enemigo ha muerto
        if (Vida <= 0) {
            is_dead = true; // Marca al enemigo como muerto
            sprite_index = Spr_Rino_Dead; // Cambia a la animación de muerte
            image_index = 0; // Comienza desde el primer frame de la animación de muerte
            image_speed = 0.5; // Ajusta la velocidad de la animación de muerte
        }
    }
} 