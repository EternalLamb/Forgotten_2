if (instance_place(x, y, Obj_Player))
{
	create_textbox(text_id);	
	instance_destroy();
}