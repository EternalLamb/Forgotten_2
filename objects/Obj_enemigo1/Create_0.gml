//puntitos de vida y daño
health = 2;
is_dead = false;
target = Obj_puntoA;
dmg = 1.5;

// Variables para controlar el movimiento
velocidad = 2;
direccion = 1;  // 1 para derecha, -1 para izquierda

// Puntos de patrullaje
puntoA = instance_nearest(x, y, Obj_puntoA);
puntoB = instance_nearest(x, y, Obj_puntoB);

// Definir el objetivo inicial
objetivo_x = puntoB.x;

sprite_index = Spr_enemigo1_move
Atacando = false;
Danando = false;