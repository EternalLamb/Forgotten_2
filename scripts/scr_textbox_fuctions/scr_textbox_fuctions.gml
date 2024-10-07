function scr_set_defaults_for_text(){
	
line_break_pos[0, page_number] = 9999999;
line_break_num[page_number] = 0;
line_break_offset[page_number] = 0;

txtb_spr[page_number] = spr_Atextbox;
speaker_sprite[page_number] = noone;
speaker_side[page_number] = 1;
}






//@param text
//@param [character]
//@param [side]
function scr_text(_text){
	
	scr_set_defaults_for_text()
	
	text[page_number] = _text;
	
	
	if (argument_count > 1)
	{
		//get character info
		switch(argument[1])
		{
			case "Player":
			speaker_sprite[page_number] = Spr_bunny_face;
			txtb_spr[page_number] = spr_Atextbox;
			break;
			
			case "Shadow":
			speaker_sprite[page_number] = Spr_Shadow;
			txtb_spr[page_number] = spr_textbox_shadow;
			break;	
			
		}
	}
	
	
	if (argument_count > 2)
	{
		speaker_side[page_number] = argument[2];	
	}
	
	
	
	page_number++;

}








function create_textbox(_text_id){
	
	with (instance_create_depth(0, 0, -9999, obj_textbox))
	{
		scr_game_text(_text_id);
		
	}
}