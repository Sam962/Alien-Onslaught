/// @description Insert description here
// You can write your code in this editor
global.killed = 0;
spawnrate = 1 * game_get_speed(gamespeed_fps); // Adjust spawn rate according to game speed
alarm[0] = spawnrate;
global.level = 1;
global.amount = 5; // Initial amount of enemies per wave

