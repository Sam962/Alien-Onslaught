/// @description Insert description here
// You can write your code in this editor

if(count < amount) { //if count is less than a specified amount, spawn an enemy and increment count by 1
	instance_create_depth(x, y, 0, obj_enemy1)
	count++
	alarm[0] = spawnrate;
} else {
    // If all enemies have been spawned and killed, start to the next wave
    if (global.killed >= amount) {
        global.level++;
        count = 0; // Reset count for the next wave, so more spawn
        amount = round(amount * 1.5); // I chose to increase the spawns by 1.5, rounds to int
        global.killed = 0; // Reset kills each wave
    }
    alarm[0] = spawnrate; // Reset alarm for next wave, increase this to give more time between waves, 
	// maybe add clickable button to play next round.
}