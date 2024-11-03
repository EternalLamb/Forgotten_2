/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
HP -= 3;
if (HP > 0) {
    HP -= 1;
    if (HP == 0) {
        instance_destroy();
    }
}

//Empuje
if (place_meeting(x-1,y,Obj_Player))
{
	x += 3;	
}
if (place_meeting(x+1,y,Obj_Player))
{
	x -= 3;	
}
