/// @description Insert description here
// You can write your code in this editor

// if player presses G it will restart the game
if keyboard_check_pressed(ord("G")){
	
	game_restart();
	
}

// if player presses L it will add 5 extra lives 
if keyboard_check_pressed(ord("A")){
	
	lives = lives + 5
	
}

// if player presses N it will take player to the next room
if keyboard_check_pressed(ord("I")){
	
	instance_destroy(obj_randomSpawner)
	instance_destroy(obj_alienShip2)
	instance_destroy(obj_alienShip1)
	instance_create_layer(room_width / 2, 150, "Instances", obj_star)
	instance_create_layer(room_width / 2, 160, "Instances", obj_star)
	instance_create_layer(room_width / 2, 170, "Instances", obj_star)
	
}

if keyboard_check_pressed(ord("W")) {
	global.stars = 3
	audio_stop_sound(soundPlayer)
	audio_play_sound(winSound, 5, false)
	obj_player.visible = false
	room_goto(winningScreen)
	global.game_over = true
}

if keyboard_check_pressed(ord("L")) {
	lives = 0
	audio_stop_sound(soundPlayer)
	audio_play_sound(sound_lose1, 5, false)
	obj_player.visible = false
	room_goto(losingScreen)
	global.game_over = true
}