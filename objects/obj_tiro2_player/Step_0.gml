/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

// muda a direcao




if (global.paused)
{
	if (hspeed != 0)
	{
		original_hspeed = hspeed;
	}
	hspeed = 0;

}
else
{

if(hspeed == 0)
{
	hspeed = original_hspeed;
}
	if(x > original_x_start+50 || x < original_x_start-50)
	{ 
		
		hspeed	*= -1;
	}
}
