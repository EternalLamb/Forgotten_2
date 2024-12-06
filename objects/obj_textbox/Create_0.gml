depth = -9999;  

// Textbox parametters
textbox_width = 480;
textbox_height = 150;
border = 19;
line_sep = 20;
line_width = textbox_width - border*2;
txtb_spr[0] = spr_Atextbox;
txtb_img = 0;
txtb_img_spd = 6/60;


//the text
page = 0;
page_number = 0;
if (room == Page_1)
{
	text[0] = "lol";
}
else
{
	text[0] = "";	
}
text_length[0] = string_length(text[0]);


char[0, 0] = "";
char_x[0, 0] = 0;
char_x[0, 0] = 0;
 
draw_char = 0;
text_spd = 1;

setup = false;


// effects
 scr_set_defaults_for_text()
 last_free_space = 0;
 text_pause_timer = 0;
 text_pause_time = 16;
 
 
 
 
 
 