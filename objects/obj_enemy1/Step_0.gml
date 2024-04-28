/// @description Insert description here
// You can write your code in this editor

if (on_fire){
	hp -= .05;
}

if (hp <= 0){ 
    instance_destroy(); 
}

