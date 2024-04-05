/// @description Insert description here
// You can write your code in this editor

if (instance_exists(target)){
	direction_go = point_direction(x, y, target.x, target.y);
	motion_set(direction_go, 10);
}

// The bullets curve slighly because they are homing, possibly make them aim at the future position of the
// enemies, may be difficult if we have slowing towers / faster enemies