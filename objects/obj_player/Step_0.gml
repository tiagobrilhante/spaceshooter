/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var _up, _down, _left, _right;
 
_up = keyboard_check(ord("W"));
_down = keyboard_check(ord("S"));
_left = keyboard_check(ord("A"));
_right = keyboard_check(ord("D"));


 
/*
y -= _up * velocidade;
y += _down * velocidade;
x -= _left * velocidade;
x += _right * velocidade;
*/


// Adicionando suporte a gamepad
// Assumindo que estamos usando o gamepad 0 (o primeiro gamepad conectado)


// Checar se um gamepad está conectado
if (gamepad_is_connected(gamepad_index)) {
    _up |= (gamepad_button_check(gamepad_index, gp_padu) || gamepad_axis_value(gamepad_index, gp_axislv) < -0.5);
    _down |= (gamepad_button_check(gamepad_index, gp_padd) || gamepad_axis_value(gamepad_index, gp_axislv) > 0.5);
    _left |= (gamepad_button_check(gamepad_index, gp_padl) || gamepad_axis_value(gamepad_index, gp_axislh) < -0.5);
    _right |= (gamepad_button_check(gamepad_index, gp_padr) || gamepad_axis_value(gamepad_index, gp_axislh) > 0.5);
}



cria_escudo();

if(!global.paused)
{

	y += (_down - _up) * velocidade; 
	x += (_right - _left) * velocidade;
	/*
	if(x <= 64) x = 64;
	if(x >= 1856) x = 1856;
	if(y <= 64) y = 64;
	if(y >= 1024) y = 1024;
	*/

	// limitando a saida do player
	x = clamp(x, 64, 1856);
	y = clamp(y, 64, 1024);

	atirando();
	image_speed =1;
}
else
{
	image_speed=0;
}