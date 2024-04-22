/// @description Insert description here
// You can write your code in this editor
// Step Event of obj_enemySpawner1
if(instance_exists(obj_buttonNextwave)){
	// Step Event of obj_enemySpawner1
	if (obj_buttonNextwave.clicked) {
	    // Check if the buttonNextwave object has been clicked
	    global.level++; // Increment the wave level
	    count = 0; // Reset the count for the next wave
	    amount = round(amount * 1.5); // Increase the number of enemies for the next wave
	    global.killed = 0; // Reset the killed variable for the next wave
	    speed *= 1.22; // Increase enemy speed for the next wave
	    alarm[0] = spawnrate; // Reset the alarm for the next wave
		 obj_buttonNextwave.clicked = false; // Reset the button clicked state
		 instance_destroy(obj_buttonNextwave); //destroy button once clicked
	}

	} if (global.level > 10){
		room_goto(rm_win);
	}