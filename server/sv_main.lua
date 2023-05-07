-- Check if Player has a Weapons License --
lib.callback.register('qr-shops:server:getWeaponLicenseStatus', function(source)
    local src = source
    local Player = QRCore.Functions.GetPlayer(src)
    local licenseTable = Player.PlayerData.metadata["licences"]
    local callback = false
    if licenseTable.weapon then callback = true end
    return callback
end)