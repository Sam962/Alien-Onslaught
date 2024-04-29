/// @description Insert description here
// You can write your code in this editor
health -= 30;
audio_play_sound(snd_damage, 1, false);
if (health <= 0) {

	room_goto(rm_lose);
}
