/// @description Insert description here

switch (state) {
	case "MOVE":
		#region MOVE STATE
		if keyboard_check(vk_right){
			scr_move(4,0);
			image_xscale = 1;
			sprite_index = spr_player_walk;
			image_speed = 1;
		}

		if keyboard_check(vk_left){
			scr_move(-4,0);
			image_xscale = -1;
			sprite_index = spr_player_walk;
			image_speed = 1;
		}

		if not keyboard_check(vk_right) and not keyboard_check(vk_left){
			sprite_index = spr_player_idle;
			image_speed = 1;
		}
	
		if keyboard_check_pressed(vk_space) {
			state = "DASH";
		}
		
		if keyboard_check_pressed(ord("Z")) {
			state = "ATTACK ONE";
		}
		#endregion
	break;
	
	case "DASH":
		#region DASH STATE
		set_state_sprite(spr_player_dash, 0.6, 0)
	
		if image_xscale == 1{
			scr_move (6,0);
		}
		if image_xscale == -1{
			scr_move (-6,0);
		}
		#endregion
	break;
	
	case "ATTACK ONE":
		#region ATTACK ONE STATE
		set_state_sprite(spr_player_combo_1, 0.5, 0)
		
		if keyboard_check_pressed(ord("Z")) and animation_hit_frame_range(2, 5) {
			state = "ATTACK TWO";
		}
		#endregion
	break;
	
	case "ATTACK TWO":
		#region ATTACK TWO STATE
		set_state_sprite(spr_player_combo_2, 0.5, 0)
		#endregion
	break;
	
}