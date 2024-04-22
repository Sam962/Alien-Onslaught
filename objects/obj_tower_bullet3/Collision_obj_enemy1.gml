/// @description Insert description here
// You can write your code in this editor
obj_enemy1.hp = obj_enemy1.hp - 2 //subtract 25 points
if(obj_enemy1.hp == 0 or obj_enemy1.hp < 0){

instance_destroy(other)

}