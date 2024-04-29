/// @description Insert description here
// You can write your code in this editor

var distance_to_target = point_distance(x, y, target_x, target_y);
var distance_threshold = 5;

if (distance_to_target <= distance_threshold) {
    speed = 0;
}

if (speed > 0){
    sprite_index = spr_flame_travel;
} else {
	sprite_change_timer -= 1;
    
    if (sprite_change_timer <= 0) {
        sprite_change_timer = sprite_change_delay;
        sprite_choice = irandom(3) + 1;
        if (sprite_choice == 1){
            sprite_index = spr_flame;
			audio_play_sound(snd_flame, 1, false);
        } else if (sprite_choice == 2){
            sprite_index = spr_flame2;
        } else {
            sprite_index = spr_flame3;
        }
    }
}

life -= 1;

if (life <= 0){
	instance_destroy()
}