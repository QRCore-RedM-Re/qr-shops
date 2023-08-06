local Utils = require('modules.shared')
local qrc = {}

-- Relationships --
function qrc.GetDefaultRelationshipGroupHash(iParam0)
    return Citizen.InvokeNative(0x3CC4A718C258BDD0 , iParam0);
end

function qrc.SetPedRelationshipGroupHash(iVar0, iParam0)
    return Citizen.InvokeNative(0xC80A74AC829DDD92, iVar0, qrc.GetDefaultRelationshipGroupHash(iParam0))
end

-- Create Blip --
function qrc.Blip(text, coords, icon, scale)
    if text == nil or coords == nil or icon == nil or scale == nil then Utils.Debug('Create Blip Error') return end

    local NewBlip = N_0x554d9d53f696d002(1664425300, coords)
    SetBlipSprite(NewBlip, icon, 1)
    SetBlipScale(NewBlip, scale)
    Citizen.InvokeNative(0x9CB1A1623062F402, NewBlip, text)
    Utils.Debug('Create Blip', 'Blip Text: '..text..' | Coords: '..coords)
    return NewBlip
end

-- Spawn Ped --
function qrc.SpawnPed(model, coords)
    if model == nil or coords == nil then Utils.Debug('Spawn Ped Error') return end

    local pedmodel = GetHashKey(model)

    lib.requestModel(model)
    local NewPed = CreatePed(pedmodel, coords.x, coords.y, coords.z - 1, coords.w, false, false, 0, 0)
    while not DoesEntityExist(NewPed) do Wait(300) end

    Citizen.InvokeNative(0x283978A15512B2FE, NewPed, true)
    FreezeEntityPosition(NewPed, true)
    SetEntityInvincible(NewPed, true)
    TaskStandStill(NewPed, -1)
    SetBlockingOfNonTemporaryEvents(NewPed, true)
    qrc.SetPedRelationshipGroupHash(NewPed, pedmodel)
    SetEntityCanBeDamagedByRelationshipGroup(NewPed, false, `PLAYER`)
    SetEntityAsMissionEntity(NewPed, true, true)
    SetModelAsNoLongerNeeded(pedmodel)
    Utils.Debug('Spawn Ped', 'Ped Name: '..NewPed..' Model: '..pedmodel..' Coordinates: '..coords)
    return NewPed
end

return qrc