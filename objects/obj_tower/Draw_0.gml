/// @description Insert description here
// You can write your code in this editor

// In the future, only draw this if the tower is selected
draw_set_color(c_red);

if (tower_selected) {
	draw_set_alpha(1);
	draw_circle(x, y, radius, true);
}
draw_self()


