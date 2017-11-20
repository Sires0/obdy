-- Craftitems
minetest.register_craftitem("obdy:obdyshard", {
	description = "Obdy shard",
	inventory_image = "obdy_shard.png",
	stack_max = 9,
})
minetest.register_craftitem("obdy:table", {
	description = "Table with obsidian diamond blocks",
	inventory_image = "table.png",
})
-- Nodes
minetest.register_node("obdy:obdy_ore", {
	description = "Obdy ore",
	tiles = {"default_desert_stone.png^[colorize:#cf7d6788^obdy_ore.png"},
	groups = {obdy = 3},
	drop = "obdy:obdyshard",
})
minetest.register_node("obdy:obdyblockreinforced", {
	description = "Obdy block reinforced",
	tiles = {"obdy_block_reinforced.png"},
	light_source = 7,
	stack_max = 5,
	groups = {obdy = 1},
})
minetest.register_node("obdy:obdyblock", {
	description = "Obdy block",
	tiles = {"obdy_block.png"},
	light_source = 13,
	stack_max = 10,
	groups = {obdy = 2},
})
minetest.register_node("obdy:obdymegablock", {
	description = "Obdy megablock",
	tiles = {"obdy_megablock.png"},
	light_source = 13,
	stack_max = 1,
	groups = {obdy = 0},
})
-- Tools
minetest.register_tool("obdy:obdygrabber_creative", {
	description = "Creative obdy grabber",
	inventory_image = "obdygrabber.png",
	tool_capabilities = {
		max_drop_level = 1,
		groupcaps = {
			obdy = {maxlevel = 1, uses = 1000000, times = {[0] = 0, [1] = 0, [2] = 0, [3] = 0}}
		},
	},
})
minetest.register_tool("obdy:obdygrabber", {
	description = "Obdy grabber",
	inventory_image = "obdygrabber.png",
	tool_capabilities = {
		max_drop_level = 1,
		groupcaps = {
			obdy = {maxlevel = 1, uses = 200, times = {[0] = 5, [1] = 2, [2] = 1, [3] = 0.5}}
		},
	},
})
minetest.register_tool("obdy:obdypick", {
	description = "Obdy pickaxe",
	inventory_image = "obdypick.png",
	tool_capabilities = {
		max_drop_level = 1,
		groupcaps = {
			cracky = {maxlevel = 3, uses = 5000, times = {[1] = 0.1, [2] = 0.05, [3] = 0.025}}
		}
	}
})
minetest.register_tool("obdy:obdyaxe", {
	description = "Obdy axe",
	inventory_image = "obdyaxe.png",
	tool_capabilities = {
		max_drop_level = 1,
		groupcaps = {
			choppy = {maxlevel = 3, uses = 5000, times = {[1] = 0.1, [2] = 0.05, [3] = 0.025}}
		}
	}
})
minetest.register_tool("obdy:obdyshovel", {
	description = "Obdy shovel",
	inventory_image = "obdyshovel.png",
	wield_image = "obdyshovel.png^[transformR90]",
	tool_capabilities = {
		max_drop_level = 1,
		groupcaps = {
			crumbly = {maxlevel = 3, uses = 5000, times = {[1] = 0.1, [2] = 0.05, [3] = 0.025}}
		}
	}
})
farming.register_hoe("obdy:obdyhoe", {
	description = "Obdy hoe",
	inventory_image = "obdyhoe.png",
	max_uses = 5000,
	material = "obdy:obdyshard",
})
-- Crafts
minetest.register_craft({
	output = "obdy:table",
	recipe = {
		{"", "", ""},
		{"default:obsidian", "default:diamondblock", "diamondblock"},
		{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
	},
})
minetest.register_craft({
	type = "cooking",
	output = "obdy:obdyshard",
	recipe = "obdy:table",
	cooktime = 60,
})
minetest.register_craft({
	output = "obdy:obdypick",
	recipe = {
		{"obdy:obdyshard", "obdy:obdyshard", "obdy:obdyshard"},
		{"", "default:stick", ""},
		{"", "default:stick", ""},
	},
})
minetest.register_craft({
	output = "obdy:obdyaxe",
	recipe = {
		{"", "obdy:obdyshard", "obdy:obdyshard"},
		{"", "default:stick", "obdy:obdyshard"},
		{"", "default:stick", ""},
	},
})
minetest.register_craft({
	output = "obdy:obdyshovel",
	recipe = {
		{"", "obdy:obdyshard", ""},
		{"", "default:stick", ""},
		{"", "default:stick", ""},
	},
})
minetest.register_craft({
	output = "obdy:obdyhoe",
	recipe = {
		{"", "obdy:obdyshard", "obdy:obdyshard"},
		{"", "default:stick", ""},
		{"", "default:stick", ""},
	},
})
minetest.register_craft({
	output = "obdy:obdyblockreinforced 2",
	recipe = {
		{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
		{"default:steel_ingot", "obdy:obdyshard", "obdy:obdyshard"},
		{"default:steel_ingot", "obdy:obdyshard", "obdy:obdyshard"},
	},
})
minetest.register_craft({
	output = "obdy:obdyblock 2",
	recipe = {
		{"", "", ""},
		{"", "obdy:obdyshard", "obdy:obdyshard"},
		{"", "obdy:obdyshard", "obdy:obdyshard"},
	},
})
minetest.register_craft({
	output = "obdy:obdygrabber",
	recipe = {
		{"", "obdy:obdyshard", ""},
		{"", "obdy:obdyshard", ""},
		{"", "default:stick", ""},
	},
})
minetest.register_craft({
	output = "obdy:obdymegablock",
	recipe = {
		{"obdy:obdyshard", "obdy:obdyshard", "obdy:obdyshard"},
		{"obdy:obdyshard", "obdy:obdyshard", "obdy:obdyshard"},
		{"obdy:obdyshard", "obdy:obdyshard", "obdy:obdyshard"},	
	},
})
minetest.register_craft({
	type = "shapeless",
	output = "obdy:obdyshard 9",
	recipe = {"obdy:obdymegablock"},
})
minetest.register_craft({
	type = "shapeless",
	output = "obdy:obdyshard 4",
	recipe = {"obdy:obdyblock"},
})
minetest.register_craft({
	type = "cooking",
	output = "obdy:obdyblock",
	recipe = "obdy:obdyblockreinforced",
	cookingtime = 5,
})
-- ABM
minetest.register_abm({
	nodenames = {"marssurvive:stone_with_diamond"},
	neighbors = {"default:lava_source"},
	interval = 120,
	chance = 10,
	action = function(pos)
		minetest.set_node(pos, {name = "obdy:obdymegablock"})
	end,
})
-- Ore
minetest.register_ore({
	ore_type = "scatter",
	ore = "obdy:obdy_ore",
	wherein = "marssurvive:stone",
	clust_scarcity = 20*20*20,
	clust_num_ores = 3,
	clust_size = 3,
	height_max = -60,
	height_min = -2000,
})
