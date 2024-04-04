/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_player){
	
	depth = -101;
	
	//health bar
	draw_healthbar(8, 70, 256, 100, obj_player.power_up, c_red, c_blue, c_blue, 0, true, true);

}

