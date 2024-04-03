/// @description Insert description here
// You can write your code in this editor
if(count < amount) { //if count is less than a specified amount, spawn an enemy and increment count by 1
instance_create_depth(x, y, 0, obj_enemy1)

count++
alarm[0] = spawnrate;
}