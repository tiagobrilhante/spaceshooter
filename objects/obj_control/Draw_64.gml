/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// desenhando os pontos
// debug ... quanto falta para o boss
// pontuação paa chegar ao lvl 10 = 25600


if(global.seq_lvl_start == false)
{
	// if(global.momentum >= 1 && gameover_seq == noone)
	if(global.momentum >= 1)
		{
		draw_sprite_ext(spr_gui_sapce, 0 , 0 , 630, 9.145, .655, 0 , c_gray, 1);
		draw_sprite_ext(spr_gui_sapce, 0 , 10 , 640, 1.09, .513, 0 , #509050, 1);
		draw_sprite_ext(spr_gui_sapce, 0 , 175 , 640, 2.7, .513, 0 , #191517, 1);
		draw_sprite_ext(spr_gui_sapce, 0 , 575 , 640, 2.18, .513, 0 , #191517, 1);
			
			// 191517
			
		draw_set_color(c_white);
		draw_set_font(fnt_gui);

		draw_set_alpha(1);
		draw_text(900, 647, "Pontos: " + string(pontos));
		draw_text(900, 665, "Level: " +string(level));
		draw_text(900, 684, "Contador: " + string(global.contador));
		draw_text(1100,647,"Contador testador: " + string(ceil(global.contador/6)));
		draw_text(1100,665,"Conta Inimigos: " + string(instance_number(obj_inimigo01)));
		draw_text(1100,684,"Momentum: " + string(global.momentum));
		draw_set_alpha(1);


		draw_set_color(c_white);
		draw_set_font(-1);

		if(global.paused)
		{
			var _view_values = room_get_viewport(rm_level1, 0);
			draw_set_font(fnt_paused);
			draw_text((_view_values[3]/2)-80, (_view_values[4]/2) - 100,"Pausado");
			draw_set_font(-1);
		}
	}
}