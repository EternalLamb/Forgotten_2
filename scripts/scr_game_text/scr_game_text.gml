function scr_game_text(_text_id){
	
switch(_text_id)
{
	case "Player Lvl 1":
	scr_text("Arg.... donde estoy?.....", "Player");
	scr_text("No lo se, quien eres tú?", "Shadow", -1);
	break;
	
	case "obj 1":
	scr_text("Uh? y eso?", "Player");
	scr_text("Que pasa amigo?", "Shadow", -1);
	scr_text("Hay algo ahí clavado...", "Player");
	scr_text("Es verdad! crees que me lo pueda comer?", "Shadow", -1);
	scr_text("Lo dudo mucho...", "Player");
	scr_text("Jaja solo bromeo, es una espada sirve para pegarle a los malos", "Shadow", -1);
	scr_text("Oh, eso suena bien, ya no tendré que saltarlos o evadirlos", "Player");
	scr_text("Exacto! ve a tomarla y si quieres atacar presiona [Click izquierdo] para atacar! pero cuidado conmigo, las armas me aterran ", "Shadow", -1);
	scr_text("No se que haría sin ti orejitas", "Player");
	scr_text("Orejitas?", "Shadow", -1);
	scr_text("Si, necesitas un nombre y orejitas suena lindo, te queda", "Player");
	scr_text("Jeje muchas gracias amigo!", "Shadow", -1);
	

	break;
	
	case "obj 2":
	scr_text("Hola miau");
	break;
}

}