/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_enemy1)){
	var direction_go = point_direction(x, y, obj_enemy1.x, obj_enemy1.y);
	
}

// The bullets curve slighly because they are homing, possibly make them aim at the future position of the
// enemies, may be difficult if we have 