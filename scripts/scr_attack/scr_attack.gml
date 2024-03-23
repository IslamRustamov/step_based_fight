function attack() {
	// DEAL DAMAGE
	var _container_x = obj_fight_container.x;
	var _head_x = obj_fight_head.x;
	
	var _difference = abs(_container_x - _head_x);
	
	if (_difference <= obj_fight_container.sprite_width / 2 and _difference > obj_fight_container.sprite_width / 3) {
		obj_battle.enemy_health -= 2;
	}
	
	if (_difference <= obj_fight_container.sprite_width / 3 and _difference > obj_fight_container.sprite_width / 6) {
		obj_battle.enemy_health -= 5;
	}
	
	if (_difference <= obj_fight_container.sprite_width / 6) {
		obj_battle.enemy_health -= 7;
	}
	
	if (obj_battle.enemy_health <= 0) {
		obj_battle.fight_state = "VICTORY";
		obj_battle.enemy_health = 0;
	} else {
		// SWITCH TO DEFENCE
		obj_battle.fight_state = "DEFENCE";
	
		obj_battle.alarm[0] = 120;
	}
	
	instance_destroy(obj_fight_container);
	instance_destroy(obj_fight_head);
}