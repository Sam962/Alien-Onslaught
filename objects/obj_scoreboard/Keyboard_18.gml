/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(ord("1"))){

health += 20 // gain "infinite health" command

}

if (keyboard_check(ord("2"))){

scrap += 50 //unlimited money

}


if (keyboard_check(ord("3"))){

obj_player.my_speed = 15 //speed cheat

}

if (keyboard_check_pressed(ord("4"))) {
    // instantly gain a full power up bar
    obj_player.power_up = 100;
    
}
