/// @description Insert description here
// You can write your code in this editor

// Enter the selling mode when the sell object is clicked
if (mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, obj_sell)){
    selling = true;
} else if (mouse_check_button_pressed(mb_right)){
	selling = false;
	// Cancel selling mode if right mouse button is clicked
}

// Check if the mouse button is pressed and we are in selling mode
if (mouse_check_button_pressed(mb_left) and selling){
    var tower = instance_position(mouse_x, mouse_y, obj_tower);
	var buff = instance_position(mouse_x, mouse_y, obj_buff);
    if (tower != noone){
        // Destroy the specific tower
        with (tower) {
            obj_scoreboard.scrap += cost;
            instance_destroy();
        }
    }
	    if (buff != noone){
        with (buff) {
            obj_scoreboard.scrap += cost;
            instance_destroy();
        }
    }
}

// Change the cursor sprite to notify user they are in selling mode
if (selling){
	cursor_sprite = spr_selling; //Make this sprite something better
	window_set_cursor(cr_none);
	
} else {
	window_set_cursor(cr_default);
	cursor_sprite = -1;
}
