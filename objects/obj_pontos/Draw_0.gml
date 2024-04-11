/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


// maior pontuacao

draw_set_font(fnt_pontos);
	
	
// variavel para segurar o valor dos pontos
var _pontos = round(pontos);

draw_text(120, 200, "Maior pontuação: " + string(_pontos));
	
draw_text(120, 300, "Inimigos Mortos: " + string(global.total_inimigos));
	
draw_text(120, 400, "Total de mortes: " + string(global.total_mortes));
	
draw_set_font(-1);


// aumentando os pontos de forma sequencial

if (pontos < global.max_pontos)
{
	var _incrementa_pontos = global.max_pontos * 0.005;
	
	pontos += _incrementa_pontos;
}