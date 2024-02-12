if minetest.get_modpath("unified_inventory") then
	unified_inventory.register_button("xp_lvl_top", {
		type = "image",
		image = "xp_top_button.png",
		tooltip = "Top 10 (XP)",
		hide_lite=true,
		action = function(player)
			minetest.show_formspec(player:get_player_name(), "xp:top", xp_top_gui_function())
		end,
		condition = function(player)
			return minetest.check_player_privs(player:get_player_name(), {interact=true})
		end,
	})

	
end
