/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


if (instance_exists(obj_player))
{
	if (global.baloon_player) 
	{
		timer++
	}

	if (timer >= 150)
	{
		global.baloon_player = false;
		instance_destroy();
		timer = 0;
	}
}