/// @description Insert description here
// You can write your code in this editor
instance_destroy()
global.stars += 1
obj_player.x = room_width / 2
obj_player.y = room_height - obj_player.sprite_yoffset
if global.stars == 3 {
	audio_stop_sound(soundPlayer)
	audio_play_sound(winSound, 5, false)
	obj_player.visible = false
	room_goto(winningScreen)
	global.game_over = true
}