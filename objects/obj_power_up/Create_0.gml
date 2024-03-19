/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// chance para decidir o upgrade

chance = random(100);

// chance = 90 ou mais = tiro
// chance = 45 ou mais = velocidade
// senão = velocidade tiro


// movendo ao criar
speed = 2;

direction = irandom(359)


// iniciando o alarme para sumir com o powerup
alarm[0] = room_speed;

// depende daa chance altera a cor
if(chance >= 90)
{
	cor = c_maroon
}
else if(chance >= 45)
{
	cor = c_yellow;
}	
else 
{
	cor = c_blue;
}



