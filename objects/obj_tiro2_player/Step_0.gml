/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor




if (global.paused)
{
	if (hspeed != 0)
	{
		original_hspeed = hspeed;
	}
	hspeed = 0;
	vspeed = 0;

}
else
{

	if(hspeed == 0)
	{
		hspeed = original_hspeed;
	}
	vspeed = -15;
	if(x > original_x_start+50 || x < original_x_start-50)
	{ 
		
		hspeed	*= -1;
	}
}


image_xscale = lerp(image_xscale, 1, 0.5);
image_yscale = lerp(image_yscale, 1, 0.5);