/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
draw_self();

draw_set_color(c_white);
draw_set_font(fnt_botoes_menu_pause);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x, y, texto);
draw_set_valign(-1);
draw_set_halign(-1);
draw_set_font(-1);
draw_set_color(c_white);