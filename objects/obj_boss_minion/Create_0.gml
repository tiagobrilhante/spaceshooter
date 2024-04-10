/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


alarm[0] = room_speed;

// começa invi
image_alpha = 0;
primeiro_tiro = false;

vida = 10;

escala = 1;
aumento_escala = 0.01;

// checando colisoes entr eminions
if(place_meeting(x, y, obj_boss_minion))
{
	// subo 60 pix
	y -= 128;
}