/// @description Insert description here
// You can write your code in this editor

image_angle = point_direction(x, y, mouse_x, mouse_y);
if keyboard_check(vk_space and player_can_shoot){
	player_can_shoot = false;
	  var bullet_instance = instance_create_layer(x, y, "Instances", obj_bullet);
    //bullet fires in front of the player
    bullet_instance.x += lengthdir_x(20, image_angle);
    bullet_instance.y += lengthdir_y(20, image_angle);
	alarm[0] = room_speed * fire_speed;
}