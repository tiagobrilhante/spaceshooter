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