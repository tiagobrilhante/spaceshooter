/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
draw_self();
if(instance_exists(obj_player))
{

	draw_sprite_ext(spr_player_baloon, 0, obj_player.x + 40, obj_player.y - 50, 1, 1, 0, c_white, 1);

	draw_set_color(c_white);

	var _tipo = "hit"
		
	if(global.baloon_player)
	{
		if (global.baloon_tipo == "hit")
		{
			if (obj_player.vida == 0) 
			{
				draw_set_font(fnt_gui);
				draw_text(obj_player.x + 73, obj_player.y - 125, "Vamos");
				draw_text(obj_player.x + 67, obj_player.y - 105, "Morrer ?!");
				draw_set_font(-1);
			}
			else
			{
				
				if (obj_player.escudos == 0 && obj_player.msg_escudo)
				{
					draw_set_font(fnt_gui);
					draw_text(obj_player.x + 61, obj_player.y - 125, "O escudo");
					draw_text(obj_player.x + 69, obj_player.y - 105, "já era !!!");
					draw_set_font(-1);
					obj_player.msg_escudo = false;
				}
				else
				{

				
					if (message_selection == 1)
					{
						draw_set_font(fnt_baloon);
						draw_text(obj_player.x + 44, obj_player.y - 120, "Pilota direito");
						draw_text(obj_player.x + 80, obj_player.y - 100, "isso!");
						draw_set_font(-1);
					}
					else if (message_selection == 2)
					{
						draw_set_font(fnt_baloon);
						draw_text(obj_player.x + 75, obj_player.y - 115, "Ai !!!!");
						draw_set_font(-1);
	
					}
					else if (message_selection == 3)
					{
				
						draw_set_font(fnt_gui);
						draw_text(obj_player.x + 61, obj_player.y - 125, "Sabia que");
						draw_text(obj_player.x + 46, obj_player.y - 105, "existe escudo?");
						draw_set_font(-1);
	
					}
					else if (message_selection == 4)
					{
						draw_set_font(fnt_baloon);
						draw_text(obj_player.x + 60, obj_player.y - 115, "Isso dói !");
						draw_set_font(-1);
	
					}	
				}
							
			}
		}
        
		draw_set_font(-1);
	}	

}