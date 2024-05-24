/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

// achando a direcao
speed = 6

saved_direction = undefined;

if(instance_exists(obj_boss_1))
{
	direction = point_direction(x, y, obj_boss_1.x, obj_boss_1.y);
	
	saved_direction = direction;
}


image_angle = direction + 90;