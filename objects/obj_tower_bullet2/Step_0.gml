/// @description Insert description here
// You can write your code in this editor

if (instance_exists(target)){
	direction_go = point_direction(x, y, target.x, target.y);
	motion_set(direction_go, 10);
}