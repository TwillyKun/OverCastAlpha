// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/*

argument0 = low
argument1 = high
*/
function animation_hit_frame_range(argument0, argument1){
	return image_index >= argument0 and image_index <= argument1;
}

/*
argument0 = sprite
argument1 = speed
argument2 = index
*/
function set_state_sprite(argument0, argument1, argument2){
	if sprite_index != argument0{
		sprite_index = argument0;
		image_speed = argument1;
		image_index = argument2;	
	}
}