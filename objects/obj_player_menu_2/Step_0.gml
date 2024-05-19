/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


cria_escudo();



if (contador <= 60 ) 
{
	contador++;

} 
else
{
	contador = 0;
	if (ajuste_de_fluxo <= 5)
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
	
	level_tiro  = 1;
	atirando();
} 
else if (ajuste_de_fluxo == 2)
{
	level_tiro  = 2;
	atirando();
} 
else if (ajuste_de_fluxo == 3)
{
	level_tiro  = 3;
	atirando();
} 
else if (ajuste_de_fluxo == 4)
{
	level_tiro  = 4;
	atirando();
}
else if (ajuste_de_fluxo == 5)
{
	level_tiro  = 5;
	atirando();
}

