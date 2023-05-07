QRCore = exports['qr-core']:GetCoreObject()
sharedItems = QRCore.Shared.Items
Keys = QRCore.Shared.Keybinds

-- Debug Print --
function Debug(type, debugTxt)
    if debugTxt == nil then debugTxt = '' end
    if Config.Debug then print("^3QR Debug ^7| "..type.." | ^3"..debugTxt) end
end

-- Debug / Resource Print on Startup --
AddEventHandler('onResourceStart', function(resource)
    if resource == GetCurrentResourceName() then
        Debug('qr-core', 'dsc.gg/qrcore ^7| '..resource)
    end
end)