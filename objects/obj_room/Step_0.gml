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