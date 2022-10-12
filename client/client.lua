local QRCore = exports["qr-core"]:GetCoreObject()
local store

function modelrequest( model )
    Citizen.CreateThread(function()
        RequestModel( model )
    end)
end

function SET_PED_RELATIONSHIP_GROUP_HASH ( iVar0, iParam0 )
    return Citizen.InvokeNative( 0xC80A74AC829DDD92, iVar0, _GET_DEFAULT_RELATIONSHIP_GROUP_HASH( iParam0 ) )
end

function _GET_DEFAULT_RELATIONSHIP_GROUP_HASH ( iParam0 )
    return Citizen.InvokeNative( 0x3CC4A718C258BDD0 , iParam0 );
end

Citizen.CreateThread(function()
    for store, v in pairs(Config.Locations) do
        if Config.UseTarget == false then
            exports['qr-core']:createPrompt(v.name, v.coords, QRCore.Shared.Keybinds['J'], 'Open ' .. v.name, {
                type = 'client',
                event = 'qr-shops:openshop',
                args = {v.products, v.name},
            })
        else
            while not HasModelLoaded( GetHashKey(v["ped"]) ) do
                Wait(500)
                modelrequest( GetHashKey(v["ped"]) )
            end
            local npc = CreatePed(GetHashKey(v["ped"]), v["coords"].x, v["coords"].y, v["coords"].z, v["heading"], false, false, 0, 0)
            while not DoesEntityExist(npc) do
                Wait(300)
            end
            Citizen.InvokeNative(0x283978A15512B2FE, npc, true)
            FreezeEntityPosition(npc, false)
            SetEntityInvincible(npc, true)
            SetBlockingOfNonTemporaryEvents(npc, true)
            Wait(100)
            SET_PED_RELATIONSHIP_GROUP_HASH(npc, GetHashKey(v["ped"]))
            SetEntityCanBeDamagedByRelationshipGroup(npc, false, `PLAYER`)
            SetEntityAsMissionEntity(npc, true, true)
            SetModelAsNoLongerNeeded(GetHashKey(v["ped"]))
            exports['qr-target']:AddCircleZone(store, v["coords"], 1, {
                name = store,
                debugPoly = false,
              }, {
                options = {
                  {
                    type = "client",
                    action = function()
                        TriggerEvent('qr-shops:openshop',v.products,v.name)
                    end,
                    icon = "fas fa-shopping-basket",
                    label = "Open Shop",
                  },
                },
                distance = 2.0,
              })
        end
        if v.showblip == true then
            local StoreBlip = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, v.coords)
            if v.products == "normal" then
                SetBlipSprite(StoreBlip, 1475879922, 1)
                SetBlipScale(StoreBlip, 0.2)
            elseif v.products == "weapons" then
                SetBlipSprite(StoreBlip, -145868367, 1)
                SetBlipScale(StoreBlip, 0.2)
            elseif v.products == "saloon" then
                SetBlipSprite(StoreBlip, 1879260108, 1)
                SetBlipScale(StoreBlip, 0.2)
            end
        end
    end
end)

RegisterNetEvent('qr-shops:openshop')
AddEventHandler('qr-shops:openshop', function(shopType, shopName)
    local type = shopType
    local shop = shopName
    local ShopItems = {}
    ShopItems.items = {}
    QRCore.Functions.TriggerCallback('qr-shops:server:getLicenseStatus', function(result)
        ShopItems.label = shop
        if type == "weapon" then
            if result then
                ShopItems.items =  Config.Products[type]
            else
                for i = 1, #Config.Products[type] do
                    if not Config.Products[type][i].requiresLicense then
                        table.insert(ShopItems.items, Config.Products[type][i])
                    end
                end
            end
        else
            ShopItems.items = Config.Products[type]
        end
        ShopItems.slots = 30
        TriggerServerEvent("inventory:server:OpenInventory", "shop", "Itemshop_"..type, ShopItems) --Review later for visual correction
    end)
end)

RegisterNetEvent('qr-shops:client:UpdateShop')
AddEventHandler('qr-shops:client:UpdateShop', function(shopType, itemData, amount)
    TriggerServerEvent('qr-shops:server:UpdateShopItems', shopType, itemData, amount)
end)

RegisterNetEvent('qr-shops:client:SetShopItems')
AddEventHandler('qr-shops:client:SetShopItems', function(shopType, shopProducts)
    Config.Products[shopType] = shopProducts
end)

RegisterNetEvent('qr-shops:client:RestockShopItems')
AddEventHandler('qr-shops:client:RestockShopItems', function(shopType, amount)
    print('RESTOCK FUNCTION')
    print(shopType)
    print(amount)
    if Config.Products[shopType] ~= nil then
        for k, v in pairs(Config.Products[shopType]) do
            Config.Products[shopType][k].amount = Config.Products[shopType][k].amount + amount
        end
    end
end)
