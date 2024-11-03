if(global.Golpeando == true)
{
 HP -=1;	
}
//Empuje
if (place_meeting(x-1,y,Obj_Player))
{
	x += 5;	
	if(global.Golpeando == true)
	{
		HP-=1;	
	}
}
if (place_meeting(x+1,y,Obj_Player))
{
	x -= 5;	
	if(global.Golpeando == true)
	{
		HP-=1;	
	}
}