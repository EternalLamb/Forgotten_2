function scr_game_text(_text_id){
	
switch(_text_id)
{	
	case "Level_1":
	scr_text("Hmg.... donde....", "Player");
	scr_text("¡Hola! Por fin despiertas, te eh estado cuidando como por..... mucho tiempo, estabas muy herido", "Shadow", -1);
	scr_text("¿Quien eres?", "Player");
	scr_text("Soy... uhm... no lo se, olvidé mi nombre", "Shadow", -1);
	scr_text("Ah sí?.. bueno estamos igual, no recuerdo mi nombre y tampoco se quien soy, solo se quiero ir a casa", "Player");
	scr_text("¿Puedo ir contigo? ¡Conozco un camino!", "Shadow", -1);
	scr_text("Esta bien... me ayudas a levantarme?", "Player");
	scr_text("Claro, recuerda que puedes moverte con [A] para la izquierda y [D] para la derecha y saltar con [Espacio]", "Shadow", -1);
	scr_text("Si ves algun objeto que llame tu atencion recuerda que puedes pulsar [Click Izquierdo] para interactuar con el ¡Clickea en todas partes!", "Shadow", -1);
	break;
	
	
	case "Level_2":
	scr_text("Asi que... te aterran las armas no? Porqué?", "Player");
	scr_text("N-no lo se, tengo un recuerdo muy malo con armas y no me gusta mucho", "Shadow", -1);
	scr_text("Vaya... eso suena muy mal, tranquilo  Orejitas, no dejare que ninguna arma te lastime", "Player");
	scr_text("Muchas gracias amigo, lo aprecio mucho", "Shadow", -1);
	break;
	
	case "Level_3":
	scr_text("Oye Orejitas", "Player");
	scr_text("¿Si?", "Shadow", -1);
	scr_text("Creo que recuerdo algo, recuerdo que era un guerrero y esta espada es mía", "Player");
	scr_text("¡Increíble! sabia que podrias recordar algo, ¡Si seguimos avanzando quiza sepamos quien eras!", "Shadow", -1);
	scr_text("Tienes razon, continuemos caminando", "Player");
	break;
	
	
	case "Level_4":
	scr_text("¡Oh mira! son lianas", "Shadow", -1);
	scr_text("¿Te quieres columpiar? Suenas muy emocinado", "Player");
	scr_text("Jeje si, las puedes usar para llegar a lugares altos o secciones de difícil acceso", "Shadow", -1);
	scr_text("Puedes apretar [W] para sostenerte en la liana y pulsar [Espacio] para saltar, pero recuerda soltar la liana para saltar", "Shadow", -1);
	scr_text("Entendido, gracias Orejita", "Player");
	break;
	
	case "Level_5":
	scr_text("Este bosque es muy largo... y por alguna razón todos quieren lastimarme", "Player");
	scr_text("Suenas cansado...", "Shadow", -1);
	scr_text("La verdad si.. un poco", "Player");
	scr_text("Si te sientes muy cansado puedes recolectar los espiritus que estan por ahí escondidos", "Shadow", -1);
	scr_text("Espiritus?", "Player");
	scr_text("Sip, segun los habitantes del bosque los pequeños espiritus son el alma quebrada del bosque dandote su energía para ayudarla, pero son algo tímidas", "Shadow", -1);
	scr_text("Será verdad?", "Player");
	scr_text("Yo creo que si, quizá yo soy una de esas almas y te esta ayudando", "Shadow", -1);
	scr_text("Puede ser.... creo que eres mas como un guía", "Player");
	scr_text("Jeje entonces ¡Voy a ser tu guía y te llevare a casa!", "Shadow", -1);
	scr_text("Jaja sigamos avanzando Orejitas", "Player");
	break;
	
	
	case "Level_6":
	scr_text("¿Y esto?", "Player");
	scr_text("Es niebla, significa que nos estamos acercando al corazon del bosque", "Shadow", -1);
	scr_text("¿Al corazón? Dijiste que ibamos a salir ", "Player");
	scr_text("Pues si, vamos a salir, pero no hay otra salida de este bosque, es mágico, ademas estas recuperando tus recuerdos de a poco ¿o me equivoco?", "Shadow", -1);
	scr_text("Hm.... tienes razón orejitas, ya recuerdo que era un guerrero y que esos objetos de antes eran míos", "Player");
	scr_text("¿Ya ves? ¡No te rindas y sigamos avanzando! ", "Shadow", -1);
	break;
	
	
	case "Level_7":
	scr_text("¿Ya falta poco?", "Player");
	scr_text("Sip, falta poco para llegar al corazon del bosque, luego de eso es un tranquilo camino hacia la salida", "Shadow", -1);
	scr_text("Genial, gracias por todo Orejitas", "Player");
	scr_text("¡No hay de que amigo!", "Shadow", -1);
	break;
	
	
	case "Level_8":
	scr_text("Muy bien amigo, ahora tenemos que tener mucho cuidado, hemos entrado en la guarida de la bestia", "Shadow", -1);
	scr_text("Muy bien... ¿Alguna idea de como derrotarla?", "Player");
	scr_text("Lanzarse como loco sería suicidio, así que intentemos otra cosa ¿Ves todas esas partes sueltas de la bestia? Hay que eliminarlas a todas", "Shadow", -1);
	scr_text("¿Crees que funcione?", "Player");
	scr_text("Solo hay una forma de averiguarlo ¿No crees?", "Shadow", -1);
	break;
	
	
	
	case "Sword":
	scr_text("Uh? y eso?", "Player");
	scr_text("Que pasa amigo?", "Shadow", -1);
	scr_text("Hay algo ahi clavado...", "Player");
	scr_text("Es verdad! crees que me lo pueda comer?", "Shadow", -1);
	scr_text("Lo dudo mucho...", "Player");
	scr_text("Jaja solo bromeo, es una espada sirve para pegarle a los malos", "Shadow", -1);
	scr_text("Oh, eso suena bien, ya no tendre que saltarlos o evadirlos", "Player");
	scr_text("Exacto! ve a tomarla y si quieres atacar presiona [Click izquierdo] para atacar! pero cuidado conmigo, las armas me aterran ", "Shadow", -1);
	scr_text("No se que haria sin ti orejitas", "Player");
	scr_text("Orejitas?", "Shadow", -1);
	scr_text("Si, necesitas un nombre y orejitas te queda bien", "Player");
	scr_text("Jeje muchas gracias amigo!", "Shadow", -1);
	

	break;
	
	case "Shield":
	scr_text("Oye mira, hay una cosa de madera en ese arbusto", "Shadow", -1);
	scr_text("Una que?", "Player");
	scr_text("Ya sabes esa cosa de madera como se llama....", "Shadow", -1);
	scr_text("Un escudo?", "Player");
	scr_text("Eso! un escudo, pero esta roto...", "Shadow", -1);
	scr_text("Que pena... nos ubiera sido util...", "Player");
	scr_text("Parece que ya le fue util a alguien mas", "Shadow", -1);
	scr_text("Vaya no la habia visto, se parece mucho a.... ", "Player");
	scr_text("Uhm?", "Shadow", -1);
	scr_text("No nada olvidalo", "Player");
	break;
	
	case "Helmet":
	scr_text("Uh? mira, un casquito", "Shadow", -1);
	scr_text("Espera un poco orejitas... creo que..", "Player");
	scr_text("Amigo?... Estas bien?", "Shadow", -1);
	scr_text("Si... creo.. que puedo recordar algo..", "Player");
	scr_text("De verdad?! eso es genial! ", "Shadow", -1);
	scr_text("Este casco... es mio... lo use cuando luche con la bestia...", "Player");
	scr_text("Que?! luchaste con la bestia?! como es que sigues con vida!", "Shadow", -1);
	scr_text("No lo se... pero debo derrotarla aunque no se si pueda hacerlo....", "Player");
	scr_text("Uhm... tranquilo amigo, yo estoy contigo, te acompañare y esta vez lograras derrotarla", "Shadow", -1);
	scr_text("Pero el combate te asusta, apenas puedes ver la espada y no temblar de miedo", "Player");
	scr_text("N-no importa, hare lo que sea para ayudarte, eres mi unico y mejor amigo sin ti estria viviendo solito por siempre", "Shadow", -1);
	scr_text("Gracias orejitas.... de verdad... sin ti jamas pude haber llegado hasta aqui", "Player");
	scr_text("Jeje, no te pongas tan sentimental, ahora vamos y pateemosle el trasero a la bestia para liberar a los demas", "Shadow", -1);
	scr_text("Si! vamos Orejitas!", "Player");
	break;
	
	case "Page":
	scr_text("Mira orejitas, es una pagina del libro de antes", "Player");
	scr_text("Dice como podemos cocinar murcielagos deliciosos?", "Shadow", -1);
	scr_text("Recuerdame darte comida cuando vuelva a casa jaja", "Player");
	scr_text("jeje lo siento, que dice la pagina?", "Shadow", -1);
	scr_text("Dice 'Dia 5, el bosque cada vez se hace mas denso y apenas puedo ver, debo cumplir con la mision de derrotar a la bestia, solo asi la paz volverá '", "Player");
	scr_text("La bestia? Ese aventurero es uno de los muchos que han intentado derrotarla...", "Shadow", -1);
	scr_text("La bestia?", "Player");
	scr_text("Si, la bestia es.... una bestia *risita* esta con su poder oscuro obliga a los habitantes del bosque a proteger su guarida, corrompiendo sus formas y mentes", "Shadow", -1);
	scr_text("Suena aterrador... crees que pueda derrotarla algun dia?", "Player");
	scr_text("No lo se, la bestia es muy fuerte, muchos han intentado derrotarla", "Shadow", -1);
	scr_text("Contigo a mi lado se que podre hacerlo", "Player");
	scr_text("Que miedito", "Shadow", -1);
	scr_text("Tranquilo, te protegere tal y como tu me protegiste a mi cuando desperte", "Player");
	scr_text("Quiza en unos años mas....", "Shadow", -1);
	scr_text("Claro que si orejitas, aun debo hacerme mas fuerte", "Player");
	break;
	
	case "Book":
	scr_text("Oh mira es un recolectador de palabras", "Shadow", -1);
	scr_text("Jaja se llama libro Orejitas", "Player");
	scr_text("Aa... cierto L-i-b-r-o", "Shadow", -1);
	scr_text("Hmp... le faltan algunas paginas... ", "Player");
	scr_text("Quizá esten por aqui", "Shadow", -1);
	break;
	
	case "Ver_Espada":
	scr_text("¡Mira ahí hay algo! Intenta darle un click encima", "Shadow", -1);
	break;
	
	case "Warning":
	scr_text("¡Cuidado!", "Shadow", -1);
	break;
	
	case "Page_0":
	scr_text("¿Una hoja?", "Player");
	scr_text("Si, el bosque esta lleno de hojas", "Shadow", -1);
	scr_text("No Orejitas, una hoja de papel, donde escribes y dibujas cosas", "Player");
	scr_text("Ohhhh... ¿Y se come?", "Shadow", -1);
	scr_text("...", "Player");
	scr_text("&", "Shadow", -1);
	scr_text("No, puedes leer y ver sus dibujos", "Player");
	scr_text("Aaaah entiendo", "Shadow", -1);
	scr_text("Veamos que dice....", "Player");
	scr_text("[Me espera una misión dificíl, ]", "Player");
	break;
}

}