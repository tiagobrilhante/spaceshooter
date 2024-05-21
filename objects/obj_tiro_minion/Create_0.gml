/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

// achando a direcao

if(instance_exists(obj_boss_1))
{
	direction = point_direction(x, y, obj_boss_1.x, obj_boss_1.y);
	image_angle = direction + 90;
}

