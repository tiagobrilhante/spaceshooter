/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor



if(!troquei_room)
{
	alpha +=0.02;
}
else
{
	alpha -=0.02;
}
	
if (alpha <= 0 && troquei_room)
{
	instance_destroy()
}

if (alpha >= 1 && !troquei_room)
{
	room_goto(destino);
}
