/// @description Insert description here
// You can write your code in this editor
draw_set_colour(c_orange)
draw_rectangle(27, 5, 170, 75, true)



draw_set_halign(fa_left)
draw_text(50, 75, "Score: " + string(score))

if(global.game_over) {
	draw_set_halign(fa_center)
	draw_text(room_width / 2, room_height / 2, "Spaceship exploded! Game Over! Press R to restart.")
}

for (var i = 0; i < lives; i++) {
	
	draw_sprite(spr_player, 0, (50 + 50 * i), 35)
	
}
