if (!collision_rectangle(x - 1, y, x + 1, y + 1, Obj_col, false, false)) {
    gravity = 0.3;
} else {
    gravity = 0;
}

#region DAÑO ENEMIGOS Y EMPUJE
#region RINO
var enemy = instance_place(x, y + 3, Obj_enemigo1);
if (enemy) {
    if (enemy.y > y) {
        global.vida -= 1.5; 
        y -= 60; 
		
    }
}
enemy = instance_place(x, y - 1, Obj_enemigo1);
if (enemy) {
    if (enemy.y < y) {
        global.vida -= 1.5;
        y += 60; 
    }
}
#endregion
#region ARBOL
var enemy1 = instance_place(x, y + 3, Obj_enemigo2);
if (enemy1) {
    if (enemy1.y > y) {
        global.vida -= 1; 
        y -= 60; 
    }
}
enemy1 = instance_place(x, y - 1, Obj_enemigo2);
if (enemy1) {
    if (enemy1.y < y) {
        global.vida -= 1;
        y += 60; 
    }
}
#endregion
#region MURCIELAGO
var enemy2 = instance_place(x, y + 3, Obj_enemigo3);
if (enemy2) {
    if (enemy2.y > y) {
        global.vida -= 0.5; 
        y -= 60; 
    }
}
enem2y = instance_place(x, y - 1, Obj_enemigo3);
if (enemy2) {
    if (enemy2.y < y) {
        global.vida -= 0.5;
        y += 60; 
    }
}
#endregion
#region ARAÑA
var enemy3 = instance_place(x, y + 1, Obj_enemigo4);
if (enemy3) {
    if (enemy3.y > y) {
        global.vida -= 0.5; 
        y -= 60; 
    }
}
enemy3 = instance_place(x, y - 1, Obj_enemigo4);
if (enemy3) {
    if (enemy3.y < y) {
        global.vida -= 0.5;
        y += 60; 
    }
}
#endregion
#region	SLIME
var enemy4 = instance_place(x, y + 1, Obj_enemigo5);
if (enemy4) {
    if (enemy4.y > y) {
        global.vida -= 0.5; 
        y -= 60; 
		vspeed = 0;
    }
}
enemy4 = instance_place(x, y - 1, Obj_enemigo5);
if (enemy4) {
    if (enemy4.y < y) {
        global.vida -= 0.5;
		vspeed = 0;
        y += 60; 
    }
}
#endregion
#endregion


if (vspeed > 0) {
    sprite_index = Spr_Fall;
    var ground = collision_rectangle(x - 1, y, x + 1, y + vspeed, Obj_col, false, false);
    if (ground) {
        y = ground.y;
        vspeed = 0;
        gravity = 0;
    }
} else if (vspeed < 0) {
    sprite_index = Spr_Jump;
    var ceiling = collision_rectangle(x - 1, y + 1, x + 1, y - 32 + vspeed, Obj_col, false, false);
    if (ceiling) {
        y = ceiling.y + ceiling.sprite_height + 32;
        vspeed = 0;
    }
}
