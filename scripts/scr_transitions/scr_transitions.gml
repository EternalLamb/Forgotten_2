function create_transition_data(_sprite, _fps, _room, _dialog_data = undefined) {
    return {
        sprite: _sprite,
        fps: _fps,
        target_room: _room,
        dialog_data: _dialog_data,
        current_dialog: 0
    };
}

// Función para iniciar una transición
function start_specific_transition(_transition_type) {
    if (transitions[$ _transition_type] != undefined) {
        playing = true;
		transition_active = true;
        animation_finished = false;
        current_transition = transitions[$ _transition_type];
        sprite_index = current_transition.sprite;
        image_speed = current_transition.fps;
        image_index = 0;
        dialog_timer = 0;
        
        if (current_transition.dialog_data != undefined) {
            current_transition.current_dialog = 0;
        }
    } else {
        show_debug_message("Transición no encontrada: " + string(_transition_type));
    }
}