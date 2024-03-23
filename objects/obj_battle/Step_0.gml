// FADER LOGIC
if instance_exists(obj_fader) {
	if state == "FADE_IN" {
		obj_fader.image_alpha += 0.05;
		
		if (obj_fader.image_alpha == 1) {
			room_goto(rm_battle);
		}	
	} else if state == "FADE_OUT" {
		obj_fader.image_alpha -= 0.05;
		
		if (obj_fader.image_alpha == 0) {
			state = "NONE";
		}	
	}
}


if fight_state == "WAIT" {
	// CREATE BUTTONS
	if !instance_exists(obj_button_fight) {
		instance_create_layer(200, 600, "Instances", obj_button_fight);
	}
	if !instance_exists(obj_button_flee) {
		instance_create_layer(room_width - 200, 600, "Instances", obj_button_flee);
	}
} else if fight_state == "FIGHT" {
	// CLEAR BUTTONS
	if instance_exists(obj_button_fight) {
		instance_destroy(obj_button_fight);
	}
	if instance_exists(obj_button_flee) {
		instance_destroy(obj_button_flee);
	}
	
	// CREATE ATTACK CONTAINER
	if !instance_exists(obj_fight_head) {
		instance_create_layer(room_width / 2 - sprite_get_width(spr_fight_container) / 2, 600, "Instances", obj_fight_head);
	}
	
	if !instance_exists(obj_fight_container) {
		instance_create_layer(room_width / 2, 600, "Instances", obj_fight_container);
	}
	
	// PRESS SPACE FOR ATTACK LOGIC
	if keyboard_check_pressed(vk_space) {
		attack();
	}
} else if fight_state == "VICTORY" {
	if instance_exists(obj_enemy) {
		instance_destroy(obj_enemy);
	}
	if !instance_exists(obj_button_back) {
		instance_create_layer(room_width / 2, room_height - 200, "Instances", obj_button_back);
	}
} else if fight_state == "DEFEAT" {
	if !instance_exists(obj_button_back) {
		instance_create_layer(room_width / 2, room_height - 200, "Instances", obj_button_back);
	}
} 
