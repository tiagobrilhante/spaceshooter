/// @description Insert description here
// You can write your code in this editor

btn_sair = instance_create_layer(room_width/2, 460, "Btn_menu_pause", obj_botao_menu_pause);
btn_sair.texto = "Voltar ao jogo";
btn_sair.destino = "resume";



btn_sair = instance_create_layer(room_width/2, 580, "Btn_menu_pause", obj_botao_menu_pause);
btn_sair.texto = "Menu Inicial";
btn_sair.destino = rm_inicio;


btn_sair = instance_create_layer(room_width/2, 700, "Btn_menu_pause", obj_botao_menu_pause);
btn_sair.texto = "Sair";
btn_sair.destino ="sair";


