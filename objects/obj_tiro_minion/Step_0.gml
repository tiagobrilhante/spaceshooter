/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();


if (global.paused)
{
	speed = 0;
}
else 
{
	speed = 6;
	if (instance_exists(obj_boss_1))
	{
		direction = saved_direction;
	}
}
	

