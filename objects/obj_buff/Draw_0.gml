/// @description Insert description here
// You can write your code in this editor

draw_self();


if (buff_selected) {
	draw_set_colour(c_lime);
	draw_set_alpha(0.2);
	draw_circle(x, y, radius, false);
	draw_set_alpha(1);
}