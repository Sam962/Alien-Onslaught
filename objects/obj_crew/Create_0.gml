/// @description Insert description here
// You can write your code in this editor

hp = 100;
path_new = path_duplicate(path_Enemy);
path_reverse(path_new);
path_start(path_new, speed_thing, 0, true);

alarm[0] = room_speed * shoot_speed;

attack_range = 300; // manual distance between obj_crew & enemy before engagement
bullet_speed = 5;   // obj_crew bullet spd
shoot_speed = 0.6;   // adjusts the firing rate of obj_crew

enemy_targeted = false;

cost = 40;

/////



