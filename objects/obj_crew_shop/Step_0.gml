/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, obj_crew_shop)){
	if (obj_scoreboard.scrap >= obj_crew.cost){
		instance_create_layer(mouse_x, mouse_y, "bullets", obj_crew);
		obj_scoreboard.scrap -= obj_crew.cost;
	}
}


