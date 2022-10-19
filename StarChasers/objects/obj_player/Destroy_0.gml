/// @description Insert description here
// You can write your code in this editor

instance_destroy();
audio_play_sound(sound_died,3,false);
room_restart();

lives -=1;

if(lives > 0) {
	room_restart()
	
}
else { 
	global.game_over = true;
}

