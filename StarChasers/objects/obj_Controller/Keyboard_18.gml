/// @description Insert description here
// You can write your code in this editor

// if player presses G it will restart the game
if keyboard_check_pressed(ord("G")){
	
	game_restart();
	
}

// if player presses L it will add 5 extra lives 
if keyboard_check_pressed(ord("L")){
	
	lives = lives + 5
	
}

// if player presses N it will take player to the next room
if keyboard_check_pressed(ord("N")){
	
	room_goto_next();
	
}