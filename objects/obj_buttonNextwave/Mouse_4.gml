/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// Mouse Left Pressed Event of obj_buttonNextwave

clicked = true;
instance_destroy(obj_slowmo_sprite)
instance_destroy(obj_slowmotower)
instance_create_layer(1664, 160, "UI", obj_slowmotower)