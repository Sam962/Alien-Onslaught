/// @description Insert description here
// You can write your code in this editor
depth = -101;

draw_set_font(ft_menu); //select text
draw_text(x - 95, y - 30, "TOWER TYPES");

draw_text(obj_towerINFO.x + 20, obj_towerINFO.y - 13, "Standard tower. Costs 50 scrap.");

draw_text(obj_tower2INFO.x + 20, obj_tower2INFO.y - 13, "Faster-shooting tower. Costs 75 scrap.");

draw_text(obj_tower3INFO.x + 20, obj_tower3INFO.y - 13, "Slow-shooting tower. Fires piercing energy blasts. Costs 85 scrap.");

draw_text(obj_slowmo_sprite.x + 20, obj_slowmo_sprite.y - 13, "Energy-goo. Enemies that touch this slow down. Can stack. \n Despawns at the start of every round. Costs 80 scrap.");


//W/A/S/D: Use the W, A, S, and D keys to move the player character. * Mouse: Use the mouse cursor to aim. * Left Click: Shoot at enemies and select towers from the shop. * Shift: Stun enemies with an EMP blast. * When in tower placement mode: * Left Click: Place atower at the current mouse position. * Right Click: Cancel tower placement.

