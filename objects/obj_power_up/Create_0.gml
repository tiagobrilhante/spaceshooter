/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// chance para decidir o upgrade

chance = random(100);
tipo = "";

// chance = 90 ou mais = tiro
// chance = 45 ou mais = velocidade
// senão = velocidade tiro


// movendo ao criar
speed = 2;

direction = irandom(359)


// iniciando o alarme para sumir com o powerup
alarm[0] = room_speed;


// entendendo a situação

// eu tenho um numero randomico que vai de 1 a 100
// tenho os seguintes powerup disponiveis
// - Melhoria do tiro
// - aumento de velocidade do tiro
// - aumento de velocidade da nave
// - reposição de escudos
// - reposicão de vida
// o mais raro é o tiro
// o numero aleatório tem que ser maior ou igual a 90 pra sair ele
// o segundo mais raro é o reposição de escudo e vida penso que o numero tem que 
// ser entre 75 e 89
// o reesto pode ser dispersado em outros chance

// depende daa chance altera a cor
if(chance >= 90)
{
	// boost no tiro
	cor = c_white
	sprite_index = spr_power_up_shot;
	tipo = "shot"
}
else if(chance >= 75 && chance < 90)
{
	
	var _qual_sera = choose(1,1,2);
	
	// aqui e escolho entre recompletar escudo ou vida (prioridade escudo)
	cor = c_white
	if(_qual_sera == 1)
	{	
		sprite_index = spr_power_up_shield;
		tipo = "shield"
	} 
	else
	{
		sprite_index = spr_power_up_vida;
		tipo = "vida"
	}
}	
else 
{
	
	// aqui é o que sobre (50% - 50%)
	var _qual_sera = choose(1,2);
	
	
	if(_qual_sera == 1)
	{
		// velocidade da nave
		cor = c_yellow;
		sprite_index = spr_power_up;
		tipo = "vel_nave"
	} 
	else
	{
		// velocidade de tiro
		cor = c_white;	
		sprite_index = spr_power_up_vel_shot	
		tipo = "vel_tiro"
	}
	
}

autokill = function ()
{
	instance_destroy(id, false);
}