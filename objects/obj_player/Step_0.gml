/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var _up, _down, _left, _right, _shield;
 
_up = keyboard_check(ord("W"));
_down = keyboard_check(ord("S"));
_left = keyboard_check(ord("A"));
_right = keyboard_check(ord("D"));
_shield = keyboard_check_pressed(ord("E"));

 
/*
y -= _up * velocidade;
y += _down * velocidade;
x -= _left * velocidade;
x += _right * velocidade;
*/


/// criando escudo
if(_shield)
{
	var _escudo = instance_create_layer(x, y, "Escudo", obj_escudo);
	
	_escudo.alvo = id;
}


y += (_down - _up) * velocidade; 
x += (_right - _left) * velocidade;

atirando();

if(keyboard_check_pressed(vk_up))
{
	if(level_tiro < 5)
	{
		level_tiro++;
	}
}


if(keyboard_check_pressed(vk_down))
{
	if(level_tiro > 1)
	{
		level_tiro --;
	}
}


if(keyboard_check_pressed(vk_left) && espera_tiro > 20)
{
	espera_tiro *=.9;
}

if(keyboard_check_pressed(vk_right) && espera_tiro < 20)
{
	espera_tiro *= 1.1;	
}

