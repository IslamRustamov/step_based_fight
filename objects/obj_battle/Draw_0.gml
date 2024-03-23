draw_set_font(fnt_main);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

var _hero_text = $"Hero health: {hero_health}";

draw_text(20, 20, _hero_text);

draw_set_halign(fa_right);

var _enemy_text = $"Enemy health: {enemy_health}";

draw_text(room_width - 20, 20, _enemy_text);

if fight_state == "VICTORY" {
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_text(room_width / 2, room_height / 2, "YOU WON!!!!!!");
}

if fight_state == "DEFEAT" {
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_text(room_width / 2, room_height / 2, "YOU WERE UNALIVED...");
}