/// Code for setting the player state back to "MOVE" after the sprite index reaches it's end

if state == "DASH" or state == "ATTACK ONE" or state == "ATTACK TWO" or state == "ATTACK THREE"{
	state = "MOVE";
	image_index = 0;	
}