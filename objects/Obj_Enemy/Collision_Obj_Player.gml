if (global.Dano == true) { // Verifica si la colisión es con la hitbox
    if (!is_dead) { // Solo aplica daño si el enemigo no está muerto
        health -= 1; // Aplica daño (ajusta según sea necesario)

        // Retroceder al enemigo
        var knockback_distance = 10; // Distancia a retroceder
        var knockback_direction = point_direction(x, y, other.x, other.y); // Calcula la dirección de retroceso

        // Mueve al enemigo en la dirección opuesta al jugador
        x += lengthdir_x(knockback_distance, knockback_direction);
        y += lengthdir_y(knockback_distance, knockback_direction);
    }
}

// Evento de colisión con el jugador
if (other == Obj_Player) {
    if (!is_dead) { // Solo causa daño si el enemigo no está muerto
        other.health -= attack_damage; // Causar daño al jugador (ajusta la variable de salud del jugador según tu implementación)
    }
}