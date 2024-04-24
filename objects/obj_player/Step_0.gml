/// @description Insert description here
// Clamping the player within the room boundaries
x = clamp(x, sprite_width / 2, room_width - sprite_width / 2);
y = clamp(y, sprite_height / 2, room_height - sprite_height / 2);

var _left = keyboard_check(ord("A"));   //movement inputs
var _right = keyboard_check(ord("D"));  
var _up = keyboard_check(ord("W"));
var _down = keyboard_check(ord("S"));

 

// Stop the animation when not moving - I think its better to maintain the direction
// Faced with idle rather than always facing forward
if (keyboard_check(ord("W")) or keyboard_check(ord("A")) or keyboard_check(ord("S")) or keyboard_check(ord("D"))){
	image_speed = 1;	
} else {
	image_index = 0;
	image_speed = 0;
}

var _xinput = _right - _left;
var _yinput = _down - _up;

// stores the intended position based on input
var default_x = x + _xinput * my_speed;
var default_y = y + _yinput * my_speed;

// horizontal movement and collision
var horizontal_collision = place_meeting(default_x, y, obj_barrier);
if (!horizontal_collision) {
    x = default_x;
}

// vertical movement and collision
var vertical_collision = place_meeting(x, default_y, obj_barrier);
if (!vertical_collision) {
    y = default_y;
}

if (power_up < 100){ //blue bar
	// Power no longer charges between waves.
	if (not instance_exists(obj_buttonNextwave)){
		power_up += .05;   //.05 is the ideal charge up rate?
	}
} else if (power_up > 100){
	power_up = 100;
}


image_angle = point_direction(x, y, mouse_x, mouse_y);
if(mouse_check_button(mb_left) and player_can_shoot){
	// Conditions to prevent shooting when using shop or clicking tower
	// TODO: ADD LINE TO ALLOW SHOOTING IF MOUSE ALREADY HELD DOWN PRIOR TO POSITION MEETING (idk yet)
	// This implementation kinda sucks so simplify it later:
	if (not (position_meeting(mouse_x, mouse_y, obj_tower_shop) 
	or  (position_meeting(mouse_x, mouse_y, obj_tower_shop2))
	or  (position_meeting(mouse_x, mouse_y, obj_tower_shop3)) 
	or  (position_meeting(mouse_x, mouse_y, obj_slowmo_shop))
	or (position_meeting(mouse_x, mouse_y, obj_tower2))
	or (position_meeting(mouse_x, mouse_y, obj_tower3))
	or (position_meeting(mouse_x, mouse_y, obj_tower)))){
		if (not (obj_tower_shop.turret_selected 
		or obj_tower_shop2.turret_selected 
		or obj_tower_shop3.turret_selected
		or obj_slowmo_shop.turret_selected)){
			player_can_shoot = false;
			  var bullet_instance = instance_create_layer(x, y, "Player", obj_bullet);
		    //bullet fires in front of the player
		    bullet_instance.x += lengthdir_x(20, image_angle);
		    bullet_instance.y += lengthdir_y(20, image_angle);
			alarm[0] = room_speed * fire_speed;
		}
	}
}

// Temporary until shop can be implemented
//if (mouse_check_button_pressed(mb_left)){
//	if (obj_scoreboard.scrap > obj_tower.cost){
//		instance_create_layer(x, y, "Instances", obj_tower);
//		obj_scoreboard.scrap -= obj_tower.cost;
//	}
//	
//}


// Tower radius only shows if tower is selected
if (position_meeting(mouse_x, mouse_y, obj_tower) and mouse_check_button_pressed(mb_left)){
	var selected_tower = instance_place(mouse_x, mouse_y, obj_tower)
	selected_tower.tower_selected = true;
} else if (not position_meeting(mouse_x, mouse_y, obj_tower) and mouse_check_button_pressed(mb_left)){
	obj_tower.tower_selected = false;
}

if (position_meeting(mouse_x, mouse_y, obj_buff) and mouse_check_button_pressed(mb_left)){
	var selected_buff = instance_place(mouse_x, mouse_y, obj_buff)
	selected_buff.buff_selected = true;
} else if (not position_meeting(mouse_x, mouse_y, obj_buff) 
	and not position_meeting(mouse_x, mouse_y, obj_tower_shop) 
	and not obj_tower_shop.turret_selected // Radius doesn't go away if shop is clicked, tower is placed, another buff is clicked
	and mouse_check_button_pressed(mb_left)){
	obj_buff.buff_selected = false;
	// I will make a better method to do this later, without a massive if statement!
}



