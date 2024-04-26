/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, obj_tower4_shop)){
	turret_selected = true;
}

if (turret_selected){
	cursor_sprite = spr_flamethrower;
	if (placement_delay <= 0){
		if (obj_scoreboard.scrap >= obj_flamethrower.cost){
			if (mouse_check_button_pressed(mb_left)){
				instance_create_layer(mouse_x, mouse_y, "Instances", obj_flamethrower);
				placement_delay = 10;
				obj_scoreboard.scrap -= obj_flamethrower.cost;
			}
		}
	} else {
		placement_delay--;
	}
}

if (mouse_check_button_pressed(mb_right)){
	turret_selected = false;
	placement_delay = 10;
	cursor_sprite = cr_none;
}