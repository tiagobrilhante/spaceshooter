/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

event_inherited();


// checando se ja passei de 1/3 da tela

if (global.paused)
{
	atualx = x;
	hspeed = 0;
	posso_me_mover_para_lado = true;
}

if (y > room_height/3 && posso_me_mover_para_lado && !global.paused)
{
	//checando de que lado eu estou

	if(atualx > room_width/2)
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
