/// @description Insert description here
// You can write your code in this editor
health -= 40;

if (health <= 0) {
	room_goto(rm_lose);
}
