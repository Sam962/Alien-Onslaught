/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button_pressed(mb_left) && (position_meeting(mouse_x, mouse_y, obj_crew_shop) || position_meeting(mouse_x, mouse_y, obj_crew_shop.framec))){
	if (obj_scoreboard.scrap >= obj_crew.cost){
		audio_play_sound(snd_gold_sack, 1, false);
		instance_create_layer(mouse_x, mouse_y, "bullets", obj_crew);
		obj_scoreboard.scrap -= obj_crew.cost;
	}
}


