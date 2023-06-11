/// Create Event

/*
//obj_input is a object to be inherited by other objects the require user input
//Calls get_input from scr_input at both creation and per game step

//Example from obj_player create event: 
//input = instance_create_layer(0,0,"Instances", obj_input)
//Then in obj_player step event:
//if input.right {...} 

//keyboard_set_map to set multiple buttons to the same action
*/

keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("D"), vk_right);
keyboard_set_map(ord("E"), ord("Z"));

get_input();
