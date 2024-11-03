if position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left)
{
	instance_destroy();
	global.Can_Attack = true;
}