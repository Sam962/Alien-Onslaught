/// @description Insert description here
// You can write your code in this editor
if (show_menu) {
    
    draw_set_color(c_black);
    draw_set_alpha(0.5);  // Set transparency
    draw_rectangle(0, 0, room_width, room_height, false);
    draw_set_alpha(1);  // Reset transparency

    // Draw pause text
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_white);
    draw_text(room_width / 2, room_height / 2, "Game Paused\nPress 'P' to Resume.\nPress 'Q' to quit.");
	
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);

    
}
