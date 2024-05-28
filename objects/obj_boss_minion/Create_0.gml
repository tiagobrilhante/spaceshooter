/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


alarm[0] = room_speed;

// começa invi

vida = 10;

escala = 1;


// checando colisoes entr eminions
if(place_meeting(x, y, obj_boss_minion))
{
	// subo 60 pix
	y -= 128;
}