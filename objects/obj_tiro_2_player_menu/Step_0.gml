/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

// muda a direcao

if(x > xstart+50 || x < xstart-50)
{ 
	hspeed	*= -1;
}

image_xscale = lerp(image_xscale, 1, 0.5);
image_yscale = lerp(image_yscale, 1, 0.5);

if(y <= 60) instance_destroy();