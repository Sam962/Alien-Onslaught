/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_enemy1)) {
    var nearest_enemy = instance_nearest(x, y, obj_enemy1);
    enemy_targeted = true;
	
}

if (not instance_exists(obj_enemy1)) {
    enemy_targeted = false;
	
}



if (enemy_targeted && nearest_enemy.x > x and nearest_enemy.y >= y - 30 and nearest_enemy.y <= y + 30) {
	var bullet = instance_create_layer(x, y, "Instances", obj_bullet);
    bullet.speed = 3;
    bullet.vspeed = 0;
} else {
    if (enemy_targeted and (nearest_enemy.y - y) > 30) {
		var bullet = instance_create_layer(x, y, "Instances", obj_bullet);
		bullet.speed = 0;
		bullet.vspeed = -3; 
	}
}

alarm[0] = room_speed * 0.5;
