/// @description Insert description here
// You can write your code in this editor

obj_scoreboard.scrap += value;
global.killed++;
audio_play_sound(snd_alienDeath_1_0, 1, false);
instance_create_layer(x, y, "bullets", obj_enemy1smoke)
