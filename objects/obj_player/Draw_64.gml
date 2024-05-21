/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


var _altura_gui = display_get_gui_height();


var _espaco = 30;
var _multiplicador = 0;


if (global.momentum >= 1)

{

	repeat(vida)
	{
		draw_sprite_ext(spr_player_teste2, 0, 40 + _espaco*_multiplicador , 663, 0.15, 0.15, 0 , c_white, 1);

		_multiplicador++;
	}


	_multiplicador = 0;
	repeat(escudos)
	{
		draw_sprite_ext(spr_escudo, 2 , 40 + _espaco*_multiplicador , 689, 0.15, 0.15, 0 , c_white, 1);

		_multiplicador++;
	}

	_multiplicador = 0;
	 _espaco = 15;
 
	draw_set_color(c_white);
	draw_set_font(fnt_gui);
	// nivel do tiro (max 5)
	draw_text(200, 655, "Nível Tiro: ");


	if (level_tiro >= 5)
	{
		draw_text(280, 655, "MAX");
	}
	else 
	{
		repeat(level_tiro)
		{
			draw_sprite_ext(spr_tile_vel_ship, 0 , 290 + _espaco*_multiplicador , 663, 0.8, 0.8, 0 , c_white, 1);
			_multiplicador++;
		}
	}




	_multiplicador = 0;
	// velocidade em que o tiro é disparado (max 15)
	draw_text(200, 678, "Velocidade Tiro: ");




	// 15
	if(nv_vel_tiro >= 15) 
	{
		draw_text(322, 678, "MAX");
	}
	else
	{

	repeat(nv_vel_tiro)
		{
			draw_sprite_ext(spr_tile_vel_ship, 0 , 330 + _espaco*_multiplicador , 686, 0.8, 0.8, 0 , c_white, 1);
			_multiplicador++;
		}
	}

	_multiplicador = 0;
	// velocidade da nave (max 10)
	draw_text(590, 655, "Velocidade Nave: ");

	//10
	if (nv_vel_ship >= 10)
	{
		draw_text(724, 655, "MAX");
	}
	else
	{
		repeat(nv_vel_ship)
		{

			draw_sprite_ext(spr_tile_vel_ship, 0 , 724 + _espaco*_multiplicador , 663, 0.8, 0.8, 0 , c_white, 1);

			_multiplicador++;
		}
	}

	draw_set_font(-1);
	draw_set_color(c_white);

}