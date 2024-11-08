playing = false;
current_transition = noone;
dialog_timer = 0;
transition_active = false;
transitions = {
	
    // Transición con diálogos
    Introduccion: create_transition_data(
        Spr_Intro,//spr de la cinematica
        10/80,//8 seg - tiene que ser algo que dividiendo de los segundos deseados
        Room1, 
        {
            texts: ["dialogo 1", "dialogo 2", "dialogo 3"],
            duration: 480 //segundos por cada texto  1 seg = 60
        }
    )
};