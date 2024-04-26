/// @description Insert description here
// You can write your code in this editor
draw_self();
if (hp < max_hp){
	draw_healthbar(x-12, y+10, x+12, y+15, (hp/max_hp)*100, c_white, c_red, c_green, 0, true, true);
}