// WAIT FOR ENEMY TO ATTACK
hero_health -= choose(1, 2, 5);

if (hero_health <= 0) {
	fight_state = "DEFEAT";
	hero_health = 0;
} else {
	fight_state = "WAIT";
}