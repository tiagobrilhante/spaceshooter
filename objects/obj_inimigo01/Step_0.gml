/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// se destroi ao sair da room

if( y > room_height + 100)
{
	instance_destroy(id, false);
}

if (global.paused)
{
	vspeed = 0;
	image_speed = 0;
}
else
{
	vspeed = 3;
	image_speed = 1;
}