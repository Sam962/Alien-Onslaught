/// @description Insert description here
// You can write your code in this editor

draw_self(); // draw the tower image
draw_text(x -20, y + 30, obj_crew.cost);

if (position_meeting(mouse_x, mouse_y, obj_crew_shop)){
	
	draw_text(1650, 734, "Spawn robots\nthat shoot \nat aliens. \nExpendable.");
	
}