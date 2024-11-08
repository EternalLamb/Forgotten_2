if (playing && transition_active) {
    // Solo procesar diálogos si la transición actual los tiene
    if (current_transition.dialog_data != undefined) {
        dialog_timer++;
        
        if (dialog_timer >= current_transition.dialog_data.duration) {
            dialog_timer = 0;
            current_transition.current_dialog++;
            
            // Mantener el último diálogo
            var max_dialogs = array_length(current_transition.dialog_data.texts);
            if (current_transition.current_dialog >= max_dialogs) {
                current_transition.current_dialog = max_dialogs - 1;
            }
        }
    }
    
    // Verificar si la animación terminó
    if (image_index >= image_number - 1) {
		playing = false;
        room_goto(current_transition.target_room);
        transition_active = false
        current_transition = noone;
		
    }
}

// Añade esto al Step para ver el estado de la transición
if (playing) {
    show_debug_message("Animation Progress: " + string(image_index) + "/" + string(image_number));
    show_debug_message("Animation Finished: " + string(animation_finished));
    if (current_transition.dialog_data != undefined) {
        show_debug_message("Current Dialog: " + string(current_transition.current_dialog));
    }
}