HP -= 4;
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
