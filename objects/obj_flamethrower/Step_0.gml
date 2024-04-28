/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_buff) and (distance_to_object(obj_buff) <= obj_buff.radius) and not buffed){
	buffed = true;
	show_debug_message("Buffed")
}


// If a target selected, make sure it is still in the radius, and still alive otherwise reset to no target.
if (target != noone) {
	if(instance_exists(target) == false || (point_distance(x, y, target.x, target.y) > radius)){
		target = noone;
	} 
}

// If there is no target, get one from within the radius
if(target == noone){
	target = collision_circle(x, y, radius, obj_enemy1, false, true);
} 

// If there is a target and the tower thingy can shoot, create a bullet
if (target != noone && can_shoot){
    can_shoot = false;
    var path_pos = target.path_position;
    path_pos += random_range(-.02, .02);
    var x_pos = path_get_x(path_Enemy, path_pos);
    var y_pos = path_get_y(path_Enemy, path_pos);
    var dir = point_direction(x, y, x_pos, y_pos);
    
    var flame = instance_create_layer(x - 32, y - 32, "wall_and_barrier", obj_flame)

    flame.x = x;
    flame.y = y;
	flame.target_x = x_pos;
	flame.target_y = y_pos;
    flame.speed = 5; 
    flame.direction = dir;
    
	if (not buffed){
		alarm[0] = room_speed * fire_speed * .02;
	} else {
		alarm[0] = room_speed * (fire_speed * obj_buff.shot_time_cut) * .02;
		show_debug_message("Buffed shot");
	}
} 

// If this if statement is consolidated into the first one, there delay in pointing toward the enemy
if (target != noone){
	if (instance_exists(target)) {
		// Points tower towards enemy, extra -90 so the bullets don't shoot from the side lol
		image_angle = point_direction(x, y, target.x, target.y) - 60;
	} else {
	    target = noone;
	}
}


