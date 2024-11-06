var vida = global.vida; // Asume que obj_player tiene una variable `vida`
var max_corazones = 3; // Total de corazones en el HUD
var vida_por_corazon = 1; // Cantidad de vida que representa cada corazón

for (var i = 0; i < max_corazones; i++) {
    var vida_actual = vida - (i * vida_por_corazon);

    if (vida_actual >= 1) {
        draw_sprite(Spr_vida1, -1, 60 * i + 64, 64);
    }
    else if (vida_actual >= 0.5) {
        draw_sprite(Spr_vida2, -1, 60 * i + 64, 64);
    }
    else {
        draw_sprite(Spr_vida3, -1, 60 * i + 64, 64);
    }
}
