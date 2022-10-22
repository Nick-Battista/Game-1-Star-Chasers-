/// @description Insert description here
// You can write your code in this editor
instance_destroy()
with(obj_player) {
	lives -= 1;
}

audio_play_sound(sound_crashenemy, 5 ,false);

