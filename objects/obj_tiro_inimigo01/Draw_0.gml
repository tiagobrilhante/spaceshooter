/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_self();

if(global.efeitos)
{
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(spr_brilho_inimigo1, image_index, x,y, image_xscale*0.7, image_yscale*0.7, image_angle, cores, 0.5);
	gpu_set_blendmode(bm_normal);
} 
else 
{
	draw_sprite_ext(spr_brilho_inimigo1, image_index, x,y, image_xscale*0.7, image_yscale*0.7, image_angle, cores, 0.5);
}
	