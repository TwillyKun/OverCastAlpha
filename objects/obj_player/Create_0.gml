/// Creation event for player object
// On creation, set state to "MOVE"

//walk_speed = Standard movement speed while walking and in MOVE state
//dash_speed = Standard movement speed when entering DASH state
image_speed = 1;
state = "MOVE";
walk_speed = 4;
dash_speed = 6;

// Dependants
input = instance_create_layer(0,0,"Instances", obj_input)