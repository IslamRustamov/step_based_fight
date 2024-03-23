// MIGHT BE: NONE, FADE_IN, FADE_OUT
state = "FADE_OUT";

// CREATE ENEMY
layer_sequence_create("Instances", room_width / 2, room_height / 2 - 100, seq_enemy_idle);

// WAIT, FIGHT, DEFENCE, VICTORY, DEFEAT
fight_state = "WAIT"

hero_health = 20;

enemy_health = 20;