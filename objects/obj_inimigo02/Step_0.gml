/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

event_inherited();


// checando se ja passei de 1/3 da tela

if (y > room_height/3 && posso_me_mover_para_lado)
{
	//checando de que lado eu estou

	if(x > room_width/2)
	{
		hspeed = -4;
		posso_me_mover_para_lado = false;
	}
	else
	{
		hspeed = 4;
		posso_me_mover_para_lado = false;
	}
}