/// Step events for the player object
// Switch statement for the player object state
// MOVE = Control the character left and right
// DASH = Quickly move in a direction
// ATTACK # = Attack states that can be linked into the next one

switch (state) {
	case "MOVE":
		#region MOVE STATE
		if input.right{
			scr_move(walk_speed,0);
			image_xscale = 1;
			sprite_index = spr_player_walk;
			image_speed = 1;
		}

		if input.left{
			scr_move(-walk_speed,0);
			image_xscale = -1;
			sprite_index = spr_player_walk;
			image_speed = 1;
		}

		if not input.right and not input.left{
			sprite_index = spr_player_idle;
			image_speed = 1;
		}
	
		if input.dash {
			state = "DASH";
		}
		
		if input.attack {
			state = "ATTACK ONE";
		}
		#endregion
	break;
	
	case "DASH":
		#region DASH STATE
		set_state_sprite(spr_player_dash, 0.6, 0)
	
		if image_xscale == 1{
			scr_move (dash_speed,0);
		}
		if image_xscale == -1{
			scr_move (-dash_speed,0);
		}
		#endregion
	break;
	
	case "ATTACK ONE":
		#region ATTACK ONE STATE
		set_state_sprite(spr_player_combo_1, 0.5, 0)
		
		if input.attack and animation_hit_frame_range(2, 5) {
			state = "ATTACK TWO";
		}
		#endregion
	break;
	
	case "ATTACK TWO":
		#region ATTACK TWO STATE
		set_state_sprite(spr_player_combo_2, 0.5, 0)
		
		if input.attack and animation_hit_frame_range(2, 5) {
			state = "ATTACK THREE";
		}
		#endregion
	break;
	
	case "ATTACK THREE":
		#region ATTACK THREE STATE
		set_state_sprite(spr_player_combo_3, 0.5, 0)
		#endregion
	break;
}