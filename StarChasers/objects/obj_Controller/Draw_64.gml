/// @description Insert description here
// You can write your code in this editor
draw_set_colour(c_orange)
draw_rectangle(27, 5, 170, 75, true)



draw_set_halign(fa_left)
draw_text(50, 75, "Score: " + string(score))

if(global.game_over) {
	draw_set_color(c_white)
	draw_set_halign(fa_center)
	draw_text(room_width / 2, room_height / 2, "Game Over! Press P to play again")
	draw_text(room_width / 2, (room_height / 2) + 30, "Your score was: " + string(score))
}

for (var i = 0; i < lives; i++) {
	
	draw_sprite(spr_player, 0, (50 + 50 * i), 35)
	
}

draw_set_color(c_yellow)
draw_rectangle(room_width - 27, 5, room_width - 170, 75, true)
for (var i = 0; i < global.stars; i++) {
	draw_sprite(spr_star, 0, (room_width - 150 + 50 * i), 35)
}
