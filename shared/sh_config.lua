Config = {}

-- Debugs --
Config.Debug = false
Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qr-target ( Change this in your server.cfg and add setr UseTarget = true )
Config.LicenseCheck = false -- Check for weapons license

-- Item Tables --
Config.Items = {
    ['general'] = {
        [1] = { name = "water", price = 1, amount = 50, info = {}, type = "item", slot = 1 },
        [2] = { name = "bread", price = 1, amount = 50, info = {}, type = "item", slot = 2 },
    },
    ["saloon"] = {
        [1] = { name = "water",	price = 1, 	amount = 50, info = {}, type = "item", slot = 1, },
        [2] = { name = "bread",	price = 1, 	amount = 50, info = {}, type = "item", slot = 2, },
    },
    ['weapons'] = {
        [1] = 	{ name = "weapon_revolver_cattleman",				price = 50,		amount = 50,	info = {},	type = "weapon",	slot = 1, },
		[2] = 	{ name = "weapon_revolver_cattleman_mexican",		price = 127,	amount = 50,	info = {},	type = "weapon",	slot = 2, },
		[3] = 	{ name = "weapon_revolver_doubleaction_gambler",	price = 190,	amount = 50,	info = {},	type = "weapon",	slot = 3, },
		[4] = 	{ name = "weapon_revolver_schofield",				price = 192,	amount = 50,	info = {},	type = "weapon",	slot = 4, },
		[5] = 	{ name = "weapon_revolver_navy",					price = 275,	amount = 50,	info = {},	type = "weapon",	slot = 5, },
		[6] = 	{ name = "weapon_revolver_navy_crossover",			price = 349,	amount = 50,	info = {},	type = "weapon",	slot = 6, },
		[7] = 	{ name = "weapon_revolver_lemat",					price = 317,	amount = 50,	info = {},	type = "weapon",	slot = 7, },

		-- WEAPONS PISTOL --
		[8] = 	{ name = "weapon_pistol_volcanic",					price = 270,	amount = 50,	info = {},	type = "weapon",	slot = 8, },
		[9] = 	{ name = "weapon_pistol_semiauto",					price = 537,	amount = 50,	info = {},	type = "weapon",	slot = 9, },
		[10] = 	{ name = "weapon_pistol_mauser",					price = 600,	amount = 50,	info = {},	type = "weapon",	slot = 10, },

		-- WEAPONS RIFLES --
		[11] = 	{ name = "weapon_rifle_varmint",					price = 72,		amount = 50,	info = {},	type = "weapon",	slot = 11, },
		[12] = 	{ name = "weapon_rifle_springfield",				price = 156,	amount = 50,	info = {},	type = "weapon",	slot = 12, },
		[13] = 	{ name = "weapon_rifle_boltaction",					price = 216,	amount = 50,	info = {},	type = "weapon",	slot = 13, },
		[14] = 	{ name = "weapon_sniperrifle_rollingblock",			price = 411,	amount = 50,	info = {},	type = "weapon",	slot = 14, },

		-- WEAPONS REPEATERS --
		[15] = 	{ name = "weapon_repeater_carbine",					price = 90,		amount = 50,	info = {},	type = "weapon",	slot = 15, },
		[16] = 	{ name = "weapon_repeater_evans",					price = 300,	amount = 50,	info = {},	type = "weapon",	slot = 16, },
		[17] = 	{ name = "weapon_repeater_winchester",				price = 243,	amount = 50,	info = {},	type = "weapon",	slot = 17, },
		[18] = 	{ name = "weapon_repeater_henry",					price = 348,	amount = 50,	info = {},	type = "weapon",	slot = 18, },

		-- WEAPONS SHOTGUNS --
		[19] = 	{ name = "weapon_shotgun_sawedoff",					price = 111,	amount = 50,	info = {},	type = "weapon",	slot = 19, },
		[20] = 	{ name = "weapon_shotgun_doublebarrel",				price = 185,	amount = 50,	info = {},	type = "weapon",	slot = 20, },
		[21] = 	{ name = "weapon_shotgun_semiauto",					price = 540,	amount = 50,	info = {},	type = "weapon",	slot = 21, },

		-- OTHER WEAPONS --
		[22] = 	{ name = "weapon_melee_knife",						price = 75,		amount = 50,	info = {},	type = "weapon",	slot = 22, },
		[23] = 	{ name = "weapon_lasso",							price = 5,		amount = 500,	info = {},	type = "weapon",	slot = 23, },

		-- AMMO --
		[24] = 	{ name = "ammo_revolver",							price = 0.50,	amount = 500,	info = {},	type = "item",		slot = 24, },
		[25] = 	{ name = "ammo_pistol",								price = 0.50,	amount = 500,	info = {},	type = "item",		slot = 25, },
		[26] = 	{ name = "ammo_rifle",								price = 0.75,	amount = 500,	info = {},	type = "item",		slot = 26, },
		[27] = 	{ name = "ammo_repeater",							price = 0.75,	amount = 500,	info = {},	type = "item",		slot = 27, },
		[28] = 	{ name = "ammo_shotgun",							price = 0.75,	amount = 500,	info = {},	type = "item",		slot = 28, },
		[29] = 	{ name = "ammo_arrow",								price = 0.10,	amount = 500,	info = {},	type = "item",		slot = 29, },
    }
}

-- Shops (Peds & Blips Configs) --
Config.Shops = {
    -- General Stores --
    [1] = {
        name = 'General Store', -- Rhodes
        ped = { model = 'U_M_O_VhTExoticShopkeeper_01', coords = vector4(1329.72, -1294.42, 77.02, 61.42) },
        blip = { icon = 1475879922, scale = 0.5 },
        type = 'items',
        items = Config.Items['general']
    },
    [2] = {
        name = 'General Store', -- Valentine
        ped = { model = 'U_M_O_VhTExoticShopkeeper_01', coords = vector4(-324.08, 803.5, 117.88, 274.09) },
        blip = { icon = 1475879922, scale = 0.5 },
        type = 'items',
        items = Config.Items['general']
    },
    [3] = {
        name = 'General Store', -- Strawberry
        ped = { model = 'U_M_O_VhTExoticShopkeeper_01', coords = vector4(-1791.49, -386.87, 160.33, 106.83) },
        blip = { icon = 1475879922, scale = 0.5 },
        type = 'items',
        items = Config.Items['general']
    },
    [4] = {
        name = 'General Store', -- Annesburg
        ped = { model = 'U_M_O_VhTExoticShopkeeper_01', coords = vector4(2931.15, 1365.78, 45.2, 250.66) },
        blip = { icon = 1475879922, scale = 0.5 },
        type = 'items',
        items = Config.Items['general']
    },
    [5] = {
        name = 'General Store', -- Saint Denis
        ped = { model = 'U_M_O_VhTExoticShopkeeper_01', coords = vector4(2859.51, -1202.19, 49.59, 3.92) },
        blip = { icon = 1475879922, scale = 0.5 },
        type = 'items',
        items = Config.Items['general']
    },
    [6] = {
        name = 'General Store', -- Tumbleweed
        ped = { model = 'U_M_O_VhTExoticShopkeeper_01', coords = vector4(-3687.35, -2623.47, -13.43, 271.15) },
        blip = { icon = 1475879922, scale = 0.5 },
        type = 'items',
        items = Config.Items['general']
    },
    [7] = {
        name = 'General Store', -- Armadillo
        ped = { model = 'U_M_O_VhTExoticShopkeeper_01', coords = vector4(-3685.56, -2622.59, -13.43, 106.83) },
        blip = { icon = 1475879922, scale = 0.5 },
        type = 'items',
        items = Config.Items['general']
    },
    [8] = {
        name = 'General Store', -- Blackwater
        ped = { model = 'U_M_O_VhTExoticShopkeeper_01', coords = vector4(-785.93, -1322.28, 43.88, 168.53) },
        blip = { icon = 1475879922, scale = 0.5 },
        type = 'items',
        items = Config.Items['general']
    },
    [9] = {
        name = 'General Store', -- Van Horn
        ped = { model = 'U_M_O_VhTExoticShopkeeper_01', coords = vector4(3025.56, 562.26, 44.72, 261.17) },
        blip = { icon = 1475879922, scale = 0.5 },
        type = 'items',
        items = Config.Items['general']
    },

    -- Saloons --
    [10] = {
        name = 'Saloon', -- Valentine
        ped = { model = 'U_M_O_VhTExoticShopkeeper_01', coords = vector4(-313.45, 806.24, 118.98, 286.84) },
        blip = { icon = 1879260108, scale = 0.5 },
        type = 'items',
        items = Config.Items['general']
    },
    [11] = {
        name = 'Saloon', -- Tumbleweed
        ped = { model = 'U_M_O_VhTExoticShopkeeper_01', coords = vector4(-5518.27, -2906.37, -1.75, 212.75) },
        blip = { icon = 1879260108, scale = 0.5 },
        type = 'items',
        items = Config.Items['general']
    },
    [12] = {
        name = 'Saloon', -- Armadillo
        ped = { model = 'U_M_O_VhTExoticShopkeeper_01', coords = vector4(-3699.74, -2594.51, -13.31, 106.83) },
        blip = { icon = 1879260108, scale = 0.5 },
        type = 'items',
        items = Config.Items['general']
    },
    [13] = {
        name = 'Saloon', -- Blackwater
        ped = { model = 'U_M_O_VhTExoticShopkeeper_01', coords = vector4(-817.63, -1319.31, 43.68, 264.16) },
        blip = { icon = 1879260108, scale = 0.5 },
        type = 'items',
        items = Config.Items['general']
    },
    [14] = {
        name = 'Saloon', -- Rhodes
        ped = { model = 'U_M_O_VhTExoticShopkeeper_01', coords = vector4(1340.14, -1374.99, 80.48, 250.12) },
        blip = { icon = 1879260108, scale = 0.5 },
        type = 'items',
        items = Config.Items['general']
    },
    [15] = {
        name = 'Saloon', -- Saint Denis
        ped = { model = 'U_M_O_VhTExoticShopkeeper_01', coords = vector4(2792.54, -1168.12, 47.93, 229.66) },
        blip = { icon = 1879260108, scale = 0.5 },
        type = 'items',
        items = Config.Items['general']
    },
    [16] = {
        name = 'Saloon', -- Van Horn
        ped = { model = 'U_M_O_VhTExoticShopkeeper_01', coords = vector4(2947.88, 528.06, 45.34, 179.12) },
        blip = { icon = 1879260108, scale = 0.5 },
        type = 'items',
        items = Config.Items['general']
    },

    -- Gunsmiths --
    [17] = {
        name = 'Gunsmith', -- Valentine
        ped = { model = 'U_M_M_AsbGunsmith_01', coords = vector4(-281.58, 778.88, 119.5, 1.18) },
        blip = { icon = -145868367, scale = 0.5 },
        type = 'weapons',
        items = Config.Items['weapons']
    },
    [18] = {
        name = 'Gunsmith', -- Tumbleweed
        ped = { model = 'U_M_M_AsbGunsmith_01', coords = vector4(-5506.44, -2963.83, -0.64, 106.83) },
        blip = { icon = -145868367, scale = 0.5 },
        type = 'weapons',
        items = Config.Items['weapons']
    },
    [19] = {
        name = 'Gunsmith', -- Saint Denis
        ped = { model = 'U_M_M_AsbGunsmith_01', coords = vector4(2717.26, -1286.84, 49.64, 27.85) },
        blip = { icon = -145868367, scale = 0.5 },
        type = 'weapons',
        items = Config.Items['weapons']
    },
    [20] = {
        name = 'Gunsmith', -- Rhodes
        ped = { model = 'U_M_M_AsbGunsmith_01', coords = vector4(1322.39, -1323.05, 77.89, 341.78) },
        blip = { icon = -145868367, scale = 0.5 },
        type = 'weapons',
        items = Config.Items['weapons']
    },
    [21] = {
        name = 'Gunsmith', -- Annesburg
        ped = { model = 'U_M_M_AsbGunsmith_01', coords = vector4(2948.28, 1319.15, 44.82, 71.31) },
        blip = { icon = -145868367, scale = 0.5 },
        type = 'weapons',
        items = Config.Items['weapons']
    },
}

--------------------------------------------

QRCore = exports['qr-core']:GetCoreObject()