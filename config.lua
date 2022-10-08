Config = {}

Config.Products = {
    ["normal"] = {
        [1] = { name = "water",		price = 1, 	amount = 50,	info = {}, type = "item", slot = 1, },
        [2] = { name = "bread",		price = 1, 	amount = 50,	info = {}, type = "item", slot = 2, },
    },
	
    ["saloon"] = {
        [1] = { name = "water",		price = 1, 	amount = 50, 	info = {}, type = "item", slot = 1, },
        [2] = { name = "bread",		price = 1, 	amount = 50, 	info = {}, type = "item", slot = 2, },
    },
	
    ["weapons"] = {
		-- WEAPONS REVOLVER
        [1] = 	{ name = "weapon_revolver_cattleman",				price = 50,		amount = 50,	info = {},	type = "weapon",	slot = 1, },
		[2] = 	{ name = "weapon_revolver_cattleman_mexican",		price = 127,	amount = 50,	info = {},	type = "weapon",	slot = 2, },
		[3] = 	{ name = "weapon_revolver_doubleaction_gambler",	price = 190,	amount = 50,	info = {},	type = "weapon",	slot = 3, },
		[4] = 	{ name = "weapon_revolver_schofield",				price = 192,	amount = 50,	info = {},	type = "weapon",	slot = 4, },
		[5] = 	{ name = "weapon_revolver_navy",					price = 275,	amount = 50,	info = {},	type = "weapon",	slot = 5, },
		[6] = 	{ name = "weapon_revolver_navy_crossover",			price = 349,	amount = 50,	info = {},	type = "weapon",	slot = 6, },	
		[7] = 	{ name = "weapon_revolver_lemat",					price = 317,	amount = 50,	info = {},	type = "weapon",	slot = 7, },
		-- WEAPONS PISTOL
		[8] = 	{ name = "weapon_pistol_volcanic",					price = 270,	amount = 50,	info = {},	type = "weapon",	slot = 8, },
		[9] = 	{ name = "weapon_pistol_semiauto",					price = 537,	amount = 50,	info = {},	type = "weapon",	slot = 9, },
		[10] = 	{ name = "weapon_pistol_mauser",					price = 600,	amount = 50,	info = {},	type = "weapon",	slot = 10, },
		-- WEAPONS RIFLE
		[11] = 	{ name = "weapon_rifle_varmint",					price = 72,		amount = 50,	info = {},	type = "weapon",	slot = 11, },
		[12] = 	{ name = "weapon_rifle_springfield",				price = 156,	amount = 50,	info = {},	type = "weapon",	slot = 12, },
		[13] = 	{ name = "weapon_rifle_boltaction",					price = 216,	amount = 50,	info = {},	type = "weapon",	slot = 13, },
		[14] = 	{ name = "weapon_sniperrifle_rollingblock",			price = 411,	amount = 50,	info = {},	type = "weapon",	slot = 14, },
		-- WEAPONS REPEATER
		[15] = 	{ name = "weapon_repeater_carbine",					price = 90,		amount = 50,	info = {},	type = "weapon",	slot = 15, },
		[16] = 	{ name = "weapon_repeater_evans",					price = 300,	amount = 50,	info = {},	type = "weapon",	slot = 16, },
		[17] = 	{ name = "weapon_repeater_winchester",				price = 243,	amount = 50,	info = {},	type = "weapon",	slot = 17, },
		[18] = 	{ name = "weapon_repeater_henry",					price = 348,	amount = 50,	info = {},	type = "weapon",	slot = 18, },
		-- WEAPONS SHOTGUN
		[19] = 	{ name = "weapon_shotgun_sawedoff",					price = 111,	amount = 50,	info = {},	type = "weapon",	slot = 19, },
		[20] = 	{ name = "weapon_shotgun_doublebarrel",				price = 185,	amount = 50,	info = {},	type = "weapon",	slot = 20, },
		[21] = 	{ name = "weapon_shotgun_semiauto",					price = 540,	amount = 50,	info = {},	type = "weapon",	slot = 21, },
		-- WEAPONS OTHER
		[22] = 	{ name = "weapon_melee_knife",						price = 75,		amount = 50,	info = {},	type = "weapon",	slot = 22, },
		[23] = 	{ name = "weapon_lasso",							price = 5,		amount = 500,	info = {},	type = "weapon",	slot = 23, },
		-- AMMO
		[24] = 	{ name = "ammo_revolver",							price = 0.50,	amount = 500,	info = {},	type = "item",		slot = 24, },
		[25] = 	{ name = "ammo_pistol",								price = 0.50,	amount = 500,	info = {},	type = "item",		slot = 25, },
		[26] = 	{ name = "ammo_rifle",								price = 0.75,	amount = 500,	info = {},	type = "item",		slot = 26, },
		[27] = 	{ name = "ammo_repeater",							price = 0.75,	amount = 500,	info = {},	type = "item",		slot = 27, },
		[28] = 	{ name = "ammo_shotgun",							price = 0.75,	amount = 500,	info = {},	type = "item",		slot = 28, },
		[29] = 	{ name = "ammo_arrow",								price = 0.10,	amount = 500,	info = {},	type = "item",		slot = 29, },

	},
}

Config.Locations = {

	-- general stores
    {name = 'Rhodes General Store',         products = "normal",    coords = vector3(1328.99, -1293.28, 77.02),     showblip = true},
    {name = 'Valentine General Store',      products = "normal",    coords = vector3(-322.433, 803.797, 117.882),   showblip = true},
    {name = 'Strawberry General Store',     products = "normal",    coords = vector3(-1791.49, -386.87, 160.33),    showblip = true},
    {name = 'Annesburg General Store',      products = "normal",    coords = vector3(2931.35, 1365.94, 45.19),      showblip = true},
    {name = 'Saint Denis General Store',    products = "normal",    coords = vector3(2859.81, -1200.37, 49.59),     showblip = true},
    {name = 'Tumbleweed General Store',     products = "normal",    coords = vector3(-5487.613, -2938.54, -0.38),   showblip = true},
    {name = 'Armadillo General Store',      products = "normal",    coords = vector3(-3685.56, -2622.59, -13.43),   showblip = true},
    {name = 'Blackwater General Store',     products = "normal",    coords = vector3(-785.18, -1323.83, 43.88),     showblip = true},
    {name = 'Van Horn General Store',       products = "normal",    coords = vector3(3027.03, 561.00, 44.72),       showblip = true},
    
	-- weapon shops
	{name = 'Valentine Gunsmith',           products = "weapons",   coords = vector3(-281.97, 781.09,119.52),       showblip = true},
    {name = 'Tumbleweed Gunsmith',          products = "weapons",   coords = vector3(-5508.14, -2964.33,-0.628),    showblip = true},
    {name = 'Saint Denis Gunsmith',         products = "weapons",   coords = vector3(2716.42, -1285.42,49.63),      showblip = true},
    {name = 'Rhodes Gunsmith',              products = "weapons",   coords = vector3(1322.67, -1323.16,77.88),      showblip = true},
    {name = 'Annesburg Gunsmith',           products = "weapons",   coords = vector3(2946.50, 1319.53,44.82),       showblip = true},
    
	-- saloons
	{name = 'Valentine Saloon',             products = "saloon",    coords = vector3(-313.26, 805.22, 118.98),      showblip = true},
    {name = 'Tumbleweed Saloon',            products = "saloon",    coords = vector3(-5518.35, -2906.43, -1.75),    showblip = true},
    {name = 'Armadillo Saloon',             products = "saloon",    coords = vector3(-3699.74, -2594.51, -13.31),   showblip = true},
    {name = 'Blackwater Saloon ',           products = "saloon",    coords = vector3(-817.66, -1319.43, 43.67),     showblip = true},
    {name = 'Rhodes Saloon',                products = "saloon",    coords = vector3(1340.14, -1374.99, 80.48),     showblip = true},
    {name = 'Saint Denis Saloon',           products = "saloon",    coords = vector3(2792.55, -1168.14, 47.93),     showblip = true},
    {name = 'Van Horn Saloon',              products = "saloon",    coords = vector3(2947.58, 528.07, 45.33),       showblip = true},
	
}
