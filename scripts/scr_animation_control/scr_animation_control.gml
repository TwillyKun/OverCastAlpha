/// Script Animation Control
// A script to house all functions relating to sprite and animation control

/*
/// Function Animation Hit Frame Range
// Checks if the animation frame is inbetween the two specified numbers passed into it

low = Earliest acceptable frame in the animation
high = Lastest acceptable frame in the animation
*/
function animation_hit_frame_range(low, high){
	return image_index >= low and image_index <= high;
}

/*
/// Function Set State Sprite
// Sets the sprite index, image speed, and image index to the numbers passed into it

sprite = the sprite index
ispeed = the speed the images moves at (NOTE: speed is a built in function, added i to make it a local var)
index = the starting point in the animation
*/
function set_state_sprite(sprite, ispeed, index){
	if sprite_index != sprite{
		sprite_index = sprite;
		image_speed = ispeed;
		image_index = index;	
	}
}