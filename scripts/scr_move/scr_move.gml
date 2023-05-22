/*
Function for changing player position after checking collision with a wall object

argument0 = xspeed
argument1 = yspeed
*/
function scr_move(argument0, argument1){
	if !place_meeting(x+argument0, y, obj_wall){
		x+=argument0;
	}
	if !place_meeting(x, y+argument1, obj_wall){
		y+=argument1;
	}
}