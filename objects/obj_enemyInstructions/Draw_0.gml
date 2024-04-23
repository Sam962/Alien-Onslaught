/// @description Insert description here
// You can write your code in this editor
depth = -101;

draw_set_font(ft_menu); //select text
draw_text(x - 95, y - 65, "ENEMY TYPES");

draw_text(obj_enemy1INFO.x + 20, obj_enemy1INFO.y - 23, "Standard Alien enemy. Gradually gets faster.");

draw_text(obj_enemy2INFO.x + 20, obj_enemy2INFO.y - 23, "Faster Alien variant. Gets much faster!");

draw_text(obj_enemy3INFO.x + 20, obj_enemy3INFO.y - 23, "Tankier Alien variant. Has more health but moves slower \nthan the others.");



//W/A/S/D: Use the W, A, S, and D keys to move the player character. * Mouse: Use the mouse cursor to aim. * Left Click: Shoot at enemies and select towers from the shop. * Shift: Stun enemies with an EMP blast. * When in tower placement mode: * Left Click: Place atower at the current mouse position. * Right Click: Cancel tower placement.

