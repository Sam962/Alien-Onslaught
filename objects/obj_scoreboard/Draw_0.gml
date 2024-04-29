/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_player){
	
	depth = -101;
	
	//health bar
	draw_healthbar(8, 70, 256, 100, obj_player.power_up, c_red, c_blue, c_blue, 0, true, true);
	
	if (obj_player.power_up >= 100){
		
		draw_text(8, 68, "S  H  I  F  T")
	
	}
	
	draw_text(10, 20, "Health: " + string(health))
	draw_text(250, 20, "Scrap: " + string(scrap))
	draw_text(1700, 20, "Wave: " + string(global.level) + "/10");
	
	
}



