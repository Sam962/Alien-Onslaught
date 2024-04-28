/// @description Insert description here
// You can write your code in this editor
// Step Event of obj_slowmo_shop
if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, obj_slowmo_shop)){
   
	
	
	turret_selected = true;
}

if (turret_selected){
    cursor_sprite = spr_slowmo;
    if (placement_delay <= 0){
        // Check if obj_slowmo exists before accessing its cost variable
        var slowmo_instance = instance_find(obj_slowmotower, 0);
        if (!is_undefined(slowmo_instance) && obj_scoreboard.scrap >= 80){
            if (mouse_check_button_pressed(mb_left)){
                instance_create_layer(mouse_x, mouse_y, "Instances", obj_slowmotower);
				instance_create_layer(mouse_x, mouse_y, "Instances", obj_slowmo_sprite);
                placement_delay = 10;
                obj_scoreboard.scrap -= 80;
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


// Draw Event remains the same
