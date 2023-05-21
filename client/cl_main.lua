local Player = QRCore.Functions.GetPlayerData()
local ShopPeds = {}
local ShopBlips = {}

-- Create Shops --
local function SetupShops()
    for q, r in ipairs(Config.Shops) do
        if ShopBlips[q] == nil then ShopBlips[q] = QRBlip(r.name, vector3(r.ped.coords.x, r.ped.coords.y, r.ped.coords.z), r.blip.icon, r.blip.scale) end
        if ShopPeds[q] == nil then ShopPeds[q] = QRSpawnPed(r.ped.model, r.ped.coords) end
        if Config.UseTarget then
            exports['qr-target']:AddTargetEntity(ShopPeds[q], {
                options = {
                    {
                        type = "client",
                        icon = 'fas fa-shop',
                        label = 'Open Shop',
                        action = function() TriggerEvent('qr-shops:client:Shop', q) end,
                    }
                },
                distance = 3.0,
            })
        else
            local PromptCoords = GetOffsetFromEntityInWorldCoords(ShopPeds[q], 0.0, 3.0, 0.0) -- Prompt 3 Units in Front of Ped
            exports['qr-core']:createPrompt(r.name..q, vector3(PromptCoords.x, PromptCoords.y, PromptCoords.z), QRCore.Shared.GetKey('J'), 'Open ' .. r.name, {
                type = 'client',
                event = 'qr-shops:client:Shop',
                args = { q },
            })
        end
    end
    Debug('Shops Created')
end

-- Remove Shops --
local function CleanupShops()
    for q, r in ipairs(Config.Shops) do
        DeletePed(ShopPeds[q])
        RemoveBlip(ShopBlips[q])
        if not Config.UseTarget then exports['qr-core']:deletePrompt(r.name..q) end
    end
    Debug('Shops Removed')
end

-- Open Shop --
RegisterNetEvent('qr-shops:client:Shop', function(shopID)
    local playerCoords = GetEntityCoords(PlayerPedId())
    local shopCoords = Config.Shops[shopID].ped.coords
    local dist = #(playerCoords - vector3(shopCoords.x, shopCoords.y, shopCoords.z))
    if dist > 5 then return end
    local ShopItems = {}
    ShopItems.items = {}
    ShopItems.label = Config.Shops[shopID].name
    if Config.Shops[shopID].type == "weapons" then
        if Config.LicenseCheck then
            lib.callback('qr-shops:server:getWeaponLicenseStatus', false, function(result)
                if result then
                    ShopItems.items = Config.Shops[shopID].items
                else
                    QRCore.Functions.Notify('You do not have a weapon\'s license!', 'error')
                    for i = 1, #Config.Shops[shopID].items do
                        if not Config.Shops[shopID].items[i].requiresLicense then
                            table.insert(ShopItems.items, Config.Shops[shopID].items[i])
                        end
                    end
                end
            end)
        else
            ShopItems.items = Config.Shops[shopID].items
        end
    else
        ShopItems.items = Config.Shops[shopID].items
    end
    ShopItems.slots = #Config.Shops[shopID].items
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "Itemshop_"..Config.Shops[shopID].type, ShopItems)
end)

-- Player Load --
local function playerLoaded()
    Player = QRCore.Functions.GetPlayerData()
    SetupShops()
end

-- Player Unload --
local function playerUnload()
    Player = {}
    CleanupShops()
end

AddEventHandler('onResourceStart', function(resource) if resource == GetCurrentResourceName() then playerLoaded() end end)
AddEventHandler('onResourceStop', function(resource) if resource == GetCurrentResourceName() then playerUnload() end end)
RegisterNetEvent('QRCore:Client:OnPlayerLoaded', function() playerLoaded() end)
RegisterNetEvent('QRCore:Client:OnPlayerUnload', function() playerUnload() end)
