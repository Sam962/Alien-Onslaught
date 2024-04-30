/// @description Insert description here
// You can write your code in this editor
if(global.killed >= amount){

	instance_create_layer(1792, 100, "UI", obj_buttonNextwave)

}

if(global.killed >= 75 && global.level == 10){

	room_goto(rm_win);
}