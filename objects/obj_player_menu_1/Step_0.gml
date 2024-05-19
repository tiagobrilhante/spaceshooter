/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var _up, _down, _left, _right;
 
_up = false;
_down = false;
_left = false;
_right = false;

if (contador <= 30 ) 
{
	contador++;

} 
else
{
	contador = 0;
	if (ajuste_de_fluxo <= 8)
	{
		ajuste_de_fluxo++;
	}
	else
	{
		ajuste_de_fluxo = 1;
	}
}


if (ajuste_de_fluxo == 1)
{
	
_up = true;
_down = false;
_left = false;
_right = false;
} 
else if (ajuste_de_fluxo == 2)
{
_up = false;
_down = true;
_left = false;
_right = false;
}
else if (ajuste_de_fluxo == 3)
{
_up = false;
_down = false;
_left = false;
_right = false;
}
else if (ajuste_de_fluxo == 4)
{
_up = false;
_down = false;
_left = true;
_right = false;
}
else if (ajuste_de_fluxo == 5)
{
_up = false;
_down = false;
_left = false;
_right = true;
}
else if (ajuste_de_fluxo == 6)
{
_up = false;
_down = false;
_left = false;
_right = false;
}
else if (ajuste_de_fluxo == 7)
{
_up = false;
_down = false;
_left = false;
_right = true;
}
else if (ajuste_de_fluxo == 8)
{
_up = false;
_down = false;
_left = true;
_right = false;
}
				
y += (_down - _up) * velocidade/2; 
x += (_right - _left) * velocidade/2;

