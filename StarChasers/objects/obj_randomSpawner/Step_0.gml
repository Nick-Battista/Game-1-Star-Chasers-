/// @description Insert description here
// You can write your code in this editor

if canSpawnAsteroid {
	if instance_exists(obj_player) {
		canSpawnAsteroid = false
		alarm[0] = 250
		if spawnChance == 0 {
			instance_create_layer(0, spawnY, "Instances", obj_asteroid)
		}
		else if spawnChance == 1 {
			instance_create_layer(room_width - sprite_xoffset, spawnY, "Instances", obj_asteroid)
		}
		
	}
}

if canSpawnBoost {
	if instance_exists(obj_player) {
		canSpawnBoost = false
		alarm[1] = 400
		instance_create_layer(x, y, "Instances", obj_fuel)
	}
}

if canSpawnShip1 {
	if instance_exists(obj_player) {
		canSpawnShip1 = false
		alarm[2] = 400
		instance_create_layer(spawnX, y, "Instances", obj_alienShip1)
	}
}

if canSpawnShip2 {
	if instance_exists(obj_player) {
		canSpawnShip2 = false
		alarm[3] = 600
		instance_create_layer(spawnX, y, "Instances", obj_alienShip2)
	}
}


if canSpawnStar {
	if instance_exists(obj_player) {
		canSpawnStar = false
		alarm[4] = 1500
		instance_create_layer(room_width / 2, 50, "Instances", obj_star)
	}
}


