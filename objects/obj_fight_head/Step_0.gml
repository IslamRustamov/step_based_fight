if state == "RIGHT" {
	x += 5;
	if (x >= obj_fight_container.x + obj_fight_container.sprite_width / 2) {
		state = "LEFT";
	}
} else if state == "LEFT" {
	x -= 5;
	if (x <= obj_fight_container.x - obj_fight_container.sprite_width / 2) {
		state = "RIGHT";
	}	
}