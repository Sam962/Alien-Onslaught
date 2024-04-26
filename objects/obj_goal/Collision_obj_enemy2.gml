/// @description Insert description here
// You can write your code in this editor
health -= 30;

if (health <= 0) {
	room_goto(rm_lose);
}
