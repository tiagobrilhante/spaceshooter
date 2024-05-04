/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// desenhando os pontos

// debug ... quanto falta para o boss

// pontuação paa chegar ao lvl 10 = 25600


draw_set_alpha(.5);
draw_text(25, 20, "Pontos: " + string(pontos) + " - Level: " +string(level) + " --- Debug (para o boss): " +string(pontos - 25600));
draw_set_alpha(1);


if(global.paused)
{
	var _view_values = room_get_viewport(rm_level1, 0);
	draw_set_font(fnt_paused);
	draw_text((_view_values[3]/2)-80, (_view_values[4]/2) - 100,"Pausado");
	draw_set_font(-1);
}