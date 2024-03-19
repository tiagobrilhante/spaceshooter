/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


//diminuir alfa em .1%

image_alpha -= .1;


if(image_alpha <= .3)
{
	instance_destroy(id, false);
}

// repetir o alarm em 1 seg

alarm[0] = room_speed