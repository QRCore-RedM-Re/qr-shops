Config = {}
Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qr-target interactions (don't change this, go to your server.cfg and add setr UseTarget true)
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
    {name = 'Rhodes General Store',         products = "normal",    coords = vector3(1329.72, -1294.42, 77.02), heading = 61.42, ped = 'U_M_M_AsbGunsmith_01',     showblip = true},
    {name = 'Valentine General Store',      products = "normal",    coords = vector3(-324.08, 803.5, 117.88), heading = 274.09, ped = 'U_M_M_AsbGunsmith_01',   showblip = true},
    {name = 'Strawberry General Store',     products = "normal",    coords = vector3(-1791.49, -386.87, 160.33), heading = 106.83, ped = 'U_M_M_AsbGunsmith_01',    showblip = true},
    {name = 'Annesburg General Store',      products = "normal",    coords = vector3(2931.15, 1365.78, 45.2), heading = 250.66, ped = 'U_M_M_AsbGunsmith_01',      showblip = true},
    {name = 'Saint Denis General Store',    products = "normal",    coords = vector3(2859.51, -1202.19, 49.59), heading = 3.92, ped = 'U_M_M_AsbGunsmith_01',     showblip = true},
    {name = 'Tumbleweed General Store',     products = "normal",    coords = vector3(-3687.35, -2623.47, -13.43), heading = 271.15, ped = 'U_M_M_AsbGunsmith_01',  showblip = true},
    {name = 'Armadillo General Store',      products = "normal",    coords = vector3(-3685.56, -2622.59, -13.43), heading = 106.83, ped = 'U_M_M_AsbGunsmith_01',   showblip = true},
    {name = 'Blackwater General Store',     products = "normal",    coords = vector3(-785.93, -1322.28, 43.88), heading = 168.53, ped = 'U_M_M_AsbGunsmith_01',     showblip = true},
    {name = 'Van Horn General Store',       products = "normal",    coords = vector3(3025.56, 562.26, 44.72), heading = 261.17, ped = 'U_M_M_AsbGunsmith_01',       showblip = true},
    
	-- weapon shops
	{name = 'Valentine Gunsmith',           products = "weapons",   coords = vector3(-281.58, 778.88, 119.5), heading = 1.18, ped = 'U_M_M_AsbGunsmith_01',       showblip = true},
    {name = 'Tumbleweed Gunsmith',          products = "weapons",   coords = vector3(-5506.44, -2963.83, -0.64), heading = 106.83, ped = 'U_M_M_AsbGunsmith_01',    showblip = true,},
    {name = 'Saint Denis Gunsmith',         products = "weapons",   coords = vector3(2717.26, -1286.84, 49.64), heading = 27.85, ped = 'U_M_M_AsbGunsmith_01',      showblip = true},
    {name = 'Rhodes Gunsmith',              products = "weapons",   coords = vector3(1322.39, -1323.05, 77.89), heading = 341.78, ped = 'U_M_M_AsbGunsmith_01',      showblip = true},
    {name = 'Annesburg Gunsmith',           products = "weapons",   coords = vector3(2948.28, 1319.15, 44.82), heading = 71.31, ped = 'U_M_M_AsbGunsmith_01',      showblip = true},
    
	-- saloons
	{name = 'Valentine Saloon',             products = "saloon",    coords = vector3(-313.45, 806.24, 118.98), heading = 286.84, ped = 'U_M_M_AsbGunsmith_01',     showblip = true},
    {name = 'Tumbleweed Saloon',            products = "saloon",    coords = vector3(-5518.27, -2906.37, -1.75), heading = 212.75, ped = 'U_M_M_AsbGunsmith_01',   showblip = true},
    {name = 'Armadillo Saloon',             products = "saloon",    coords = vector3(-3699.74, -2594.51, -13.31), heading = 106.83, ped = 'U_M_M_AsbGunsmith_01',  showblip = true},
    {name = 'Blackwater Saloon ',           products = "saloon",    coords = vector3(-817.63, -1319.31, 43.68), heading = 264.16, ped = 'U_M_M_AsbGunsmith_01',    showblip = true},
    {name = 'Rhodes Saloon',                products = "saloon",    coords = vector3(1340.14, -1374.99, 80.48), heading = 250.12, ped = 'U_M_M_AsbGunsmith_01',    showblip = true},
    {name = 'Saint Denis Saloon',           products = "saloon",    coords = vector3(2792.54, -1168.12, 47.93), heading = 229.66, ped = 'U_M_M_AsbGunsmith_01',    showblip = true},
    {name = 'Van Horn Saloon',              products = "saloon",    coords = vector3(2947.88, 528.06, 45.34), heading = 179.12, ped = 'U_M_M_AsbGunsmith_01',      showblip = true},
	
}
