/// @description Insert description here
// You can write your code in this editor
draw_self(); // draw the tower image
draw_text(x -20, y + 30, obj_tower3.cost); //so apparently this portion and the step Event won't run unless there's already an obj in the room.
//This is ok for tower 1, but can present issues for inheriting objects.