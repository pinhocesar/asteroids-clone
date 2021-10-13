switch(room){
	case rm_game:
		draw_text(20, 20, "Score: " + string(score));
		draw_text(20, 40, "Lives: " + string(lives));
		break;
		
	case rm_start:
		draw_set_halign(fa_center);
		var c = c_yellow;
		draw_text_transformed_color(room_width / 2, 100, "ASTEROIDS", 3, 3, 0, c, c, c, c, 1);
		draw_text(room_width / 2, 200,
@"Score 1,000 points to win!

Controls:

UP: Move
LEFT/RIGHT: Change direction
SPACE: Shoot

>> PRESS ENTER TO START! <<");
		draw_set_halign(fa_left);
		break;
		
	case rm_win:
		draw_set_halign(fa_center);
		var c = c_lime;
		draw_text_transformed_color(room_width / 2, 200, "YOU WON!", 3, 3, 0, c, c, c, c, 1);
		draw_text(room_width / 2, 300,"PRESS ENTER TO RESTART!");
		draw_set_halign(fa_left);
		break;
		
	case rm_lose:
		draw_set_halign(fa_center);
		var c = c_red;
		draw_text_transformed_color(room_width / 2, 150, "YOU LOSE!", 3, 3, 0, c, c, c, c, 1);
		draw_text(room_width / 2, 250,"FINAL SCORE: " + string(score));
		draw_text(room_width / 2, 300,"PRESS ENTER TO RESTART!");
		draw_set_halign(fa_left);
		break;
}

draw_set_font(fnt_text);