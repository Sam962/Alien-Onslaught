/// @description Insert description here
// You can write your code in this editor


if (hp <= 0) {
    instance_destroy();
}

//moved from alarm into step event
if (instance_exists(obj_enemy1)) {
  
    var nearest_enemy = instance_nearest(x, y, obj_enemy1);
    
   
    if (distance_to_object(nearest_enemy) <= attack_range) {
        // Fire bullets towards the enemy
        if (!alarm[0]) { // if the alarm is not running...
            var bullet = instance_create_layer(x, y, "bullets", obj_bullet);
            bullet.direction = point_direction(x, y, nearest_enemy.x, nearest_enemy.y);
            bullet.speed = bullet_speed; //set bull spd
            alarm[0] = room_speed * shoot_speed; // Set the alarm to control firing rate
        }
    }
}

if (instance_exists(obj_buttonNextwave)){
	path_speed = 0;
} else {
	path_speed = speed_thing;
}
