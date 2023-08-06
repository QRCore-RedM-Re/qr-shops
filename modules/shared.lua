local Utils = {}

-- Debug Print --
function Utils.Debug(type, debugTxt)
    if debugTxt == nil then debugTxt = '' end
    if Config.Debug then print("^3QR Debug ^7| "..type.." | ^3"..debugTxt) end
end

return Utils