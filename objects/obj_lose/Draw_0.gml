/// @description Insert description here
// You can write your code in this editor
draw_set_font(ft_win); 
draw_set_color(c_white);


var text_width = string_width("Game Over!");
var text_height = string_height("Game Over!");

var text_x = (room_width - text_width) / 2;
var text_y = (room_height - text_height) / 2;

draw_text(text_x, text_y, "Game Over!");