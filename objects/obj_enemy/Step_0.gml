// MOVEMENT
if (state == "DOWN") {
	if (y < room_height) {
		y += default_speed;
	} else {
		state = "UP";
	}
} else if (state == "UP") {
	if (y > 0) {
		y -= default_speed;
	} else {
		state = "DOWN";
	}
}