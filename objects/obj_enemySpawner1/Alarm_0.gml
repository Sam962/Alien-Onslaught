/// @description Insert description here
// You can write your code in this editor

if(count < amount) { //if count is less than a specified amount, spawn an enemy and increment count by 1
	instance_create_layer(x, y, "InvalidTowerSpawn", obj_enemy1)
	
	if (global.level >= 3 && global.level < 6){
		// Enemy 2 spawns every 8th spawn (waves 3, 4, 5)
		if ((count % 8) == 0){
			instance_create_layer(x, y, "InvalidTowerSpawn", obj_enemy2)

		}
	} 	// I think it will be easier to do this manually for each range of levels, continuing like this:
		// EX: spawn every 5 spawns
		// else if (global.level >= 6 && global.level < 10) (count % 5) == 0....
		// spawn enemy2 during last 10 spawns: etc.
	    // else if (global.level == 10) if count < 10.... 
		else if (global.level >= 6 && global.level < 10){
		if ((count % 9) == 0){
			instance_create_layer(x, y, "InvalidTowerSpawn", obj_enemy3)
		}
		
		} else if (global.level > 9){
			if ((count % 1) == 0){
			instance_create_layer(x, y, "InvalidTowerSpawn", obj_enemy2)		
			
		}
		 
			if ((count % 5) == 0){
			instance_create_layer(x, y, "InvalidTowerSpawn", obj_enemy3)}
		
		}
		count++
	alarm[0] = spawnrate;
}


