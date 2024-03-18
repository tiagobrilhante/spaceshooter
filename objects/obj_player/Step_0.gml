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

y += (_down - _up) * velocidade; 
x += (_right - _left) * velocidade;

atirando();