/// @description makes sure they leave the screen
// You can write your code in this editor
if y > room_height then y = 0

if y - sprite_yoffset < 0
{
	y = sprite_yoffset
	x = irandom_range(sprite_xoffset, room_width - sprite_xoffset)
}


if laserFire
{
	if instance_exists(obj_player)
	{
		laserFire = false
		alarm[0] = shootSpeed
		instance_create_layer(x, y, "Instances", obj_alienLaser)
	}
}

