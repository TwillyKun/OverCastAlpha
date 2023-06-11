///Script Input houses all functions involving user input

/*
///Function Get Input
//Sets inputs to a variable to be used by anything the depends on obj_input
*/
function get_input(){
	right = keyboard_check(vk_right);
	left = keyboard_check(vk_left);
	dash = keyboard_check_pressed(vk_space);
	attack = keyboard_check_pressed(ord("Z"));
}