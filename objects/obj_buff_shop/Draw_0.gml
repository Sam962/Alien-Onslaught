/// @description Insert description here
// You can write your code in this editor
draw_self(); // draw the tower image
draw_set_color(c_red);
draw_text(x -20, y + 30, obj_buff.cost);

if(turret_selected = true){
	draw_text(1650, 734, "Buff Box \nis selected. \n(Turr. Boost)\nRight-click \nto cancel.");
}