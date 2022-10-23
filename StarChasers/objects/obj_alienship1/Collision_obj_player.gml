/// @description Insert description here
// You can write your code in this editor
instance_destroy()
with(obj_player) {
	lives -= 1;
}

audio_play_sound(sound_crashenemy, 5 ,false);

if lives < 1 {
	audio_stop_sound(soundPlayer)
	audio_play_sound(sound_lose1, 5, false)
	obj_player.visible = false
	room_goto(losingScreen)
	global.game_over = true
}

