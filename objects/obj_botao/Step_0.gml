/// @description Insert description here
// You can write your code in this editor


if(!global.selecao_por_mouse)
{
	if(global.posicao_atual == minha_posicao)
	{
		image_blend = selected;
		if(!keyboard_select)
		{
			audio_play_sound(sfx_btn_menu, 0, false);
			keyboard_select = true;
		}
		
	} else 
	{
		image_blend = c_white;
		keyboard_select = false;
	}
}