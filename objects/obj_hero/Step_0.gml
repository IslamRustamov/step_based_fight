// MOVEMENT
var _h_speed = keyboard_check(vk_right) - keyboard_check(vk_left);
var _v_speed = keyboard_check(vk_down) - keyboard_check(vk_up);

if (_h_speed != 0) {
	x += default_speed * _h_speed;
}

if (_v_speed != 0) {
	y += default_speed * _v_speed;
}

//if keyboard_check_released(vk_space) {
//	window_set_size(200, 150);
//}