/*
Function for changing object position after checking collision with a wall object

xspeed = the speed that the object moves on the x axis
yspeed = the speed that the object moves on the y axis
*/

function scr_move(xspeed, yspeed){
	if !place_meeting(x+xspeed, y, obj_wall){
		x+=xspeed;
	}
	if !place_meeting(x, y+yspeed, obj_wall){
		y+=yspeed;
	}
}