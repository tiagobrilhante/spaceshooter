/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


var _altura_gui = display_get_gui_height();


var _espaco = 40;
var _multiplicador = 0;

repeat(vida)
{
	draw_sprite_ext(spr_player, 0, 40 + _espaco*_multiplicador , 60, 0.3, 0.3, 0 , c_white, .3);

	_multiplicador++;
}


_multiplicador = 0;
repeat(escudos)
{
	draw_sprite_ext(spr_escudo, 2 , 40 + _espaco*_multiplicador , 110, 0.3, 0.3, 0 , c_white, .3);

	_multiplicador++;
}

_multiplicador = 0;
 _espaco = 15;
 // nivel do tiro (max 5)
draw_text(25, 140, "Nível Tiro: ");

if (level_tiro >= 5)
{
	draw_text(125, 140, "MAX");
}
else 
{
	repeat(level_tiro)
	{
		draw_sprite_ext(spr_tile_vel_ship, 0 , 130 + _espaco*_multiplicador , 150, 0.8, 0.8, 0 , c_white, 1);
		_multiplicador++;
	}
}

_multiplicador = 0;
// velocidade em que o tiro é disparado (max 15)
draw_text(25, 160, "Velocidade Tiro: ");

if(nv_vel_tiro >= 15) 
{
	draw_text(175, 160, "MAX");
}
else
{

repeat(nv_vel_tiro)
	{
		draw_sprite_ext(spr_tile_vel_ship, 0 , 185 + _espaco*_multiplicador , 170, 0.8, 0.8, 0 , c_white, 1);
		_multiplicador++;
	}
}

_multiplicador = 0;
// velocidade da nave (max 10)
draw_text(25, 180, "Velocidade Nave: ");


if (nv_vel_ship >= 10)
{
	draw_text(175, 180, "MAX");
}
else
{
	repeat(nv_vel_ship)
	{

		draw_sprite_ext(spr_tile_vel_ship, 0 , 185 + _espaco*_multiplicador , 190, 0.8, 0.8, 0 , c_white, 1);

		_multiplicador++;
	}
}