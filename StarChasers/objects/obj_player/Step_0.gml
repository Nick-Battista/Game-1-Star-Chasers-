/// @description Insert description here
// You can write your code in this editor
obj_player.xstart = (room_width / 2) + (sprite_width / 2)
obj_player.ystart = (room_height / 2) + (sprite_height / 2)
if keyboard_check(vk_left) x -= speedBoost
if keyboard_check(vk_right) x += speedBoost
if keyboard_check(vk_up) y-= speedBoost
if keyboard_check(vk_down) y += speedBoost
x = clamp(x, sprite_width / 2, room_width - sprite_width / 2)
y = clamp(y, sprite_height / 2, room_height - sprite_height /2)
if keyboard_check(vk_up) vspeed -= 1
if keyboard_check(vk_down) vspeed += 1
vspeed = clamp(vspeed, -1, layer_get_vspeed("Background"))
if not keyboard_check(vk_down) and not keyboard_check(vk_up)
	vspeed -= sign(vspeed)
	
	
if laserFire
{
	if keyboard_check(vk_space)
	{
		laserFire = false
		alarm[0] = 10
		instance_create_layer(x, y, "Instances", obj_laser)
	}
}

if lives < 1 {
	room_goto(losingScreen)
	
	// if lives < 1: go to losing screen
	// if player reaches star go to winning screen
}