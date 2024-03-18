/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();


// definindo a velocidade

speed=6;
// achando a direção do tiro

if(instance_exists(obj_player))
{
	direction = point_direction(x, y, obj_player.x, obj_player.y);
}

image_angle = direction+90;