//evento dibujar gui

if (playing && transition_active) {
    var gui_width = display_get_gui_width();
    var gui_height = display_get_gui_height();
    
    // Dibujar la transición
    draw_sprite_ext(
        sprite_index,
        image_index,
        gui_width/2,
        gui_height/2,
        1, 1, 0,
        c_white,
        1
    );
    
    // Solo dibujar diálogo si la transición actual lo tiene
    if (current_transition.dialog_data != undefined) {
        var current_text = current_transition.dialog_data.texts[current_transition.current_dialog];
        
        // Configurar el texto
        draw_set_font(global.font_main);
        draw_set_halign(fa_center);
        draw_set_valign(fa_bottom);
        
        // Dibujar caja de diálogo
        var margin = 20;
        var padding = 10;
        var box_width = gui_width - (margin * 2);
        var box_height = 80;
        var box_x = margin;
        var box_y = gui_height - margin - box_height;
        
        // Fondo del diálogo
        draw_set_alpha(0.8);
        draw_rectangle_color(
            box_x, box_y,
            box_x + box_width, box_y + box_height,
            c_black, c_black, c_black, c_black,
            false
        );
        draw_set_alpha(1);
        
        // Texto del diálogo
        draw_text_ext_color(
            gui_width/2,
            gui_height - margin - padding,
            current_text,
            20,
            box_width - (padding * 2),
            c_white, c_white, c_white, c_white,
            1
        );
        
        // Restablecer alineación
        draw_set_halign(fa_left);
        draw_set_valign(fa_top);
    }
}