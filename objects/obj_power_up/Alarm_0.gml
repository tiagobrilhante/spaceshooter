/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


//diminuir alfa em .1%

if (!global.paused)
{
	image_alpha -= .1;


	if(image_alpha <= 0)
	{
		instance_destroy(id, false);
	}
}

// repetir o alarm em 1 seg

alarm[0] = room_speed