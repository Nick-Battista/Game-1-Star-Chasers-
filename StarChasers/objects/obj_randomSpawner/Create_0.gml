/// @description Insert description here
// You can write your code in this editor
canSpawnAsteroid = true
canSpawnBoost = true
canSpawnShip1 = true
canSpawnShip2 = true
canSpawnStar = true

alarm[4] = 1500


spawnY = irandom_range(0, room_height - sprite_yoffset)
spawnChance = irandom_range(0, 1)
spawnX = irandom_range(0, room_width - sprite_xoffset)
