
local command = Config.Command
local users = Config.Users


local function has_value (tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end

    return false
end


RegisterCommand(command, function(src, args, rawCommand)
    local plrId = tonumber(args[1])
    local videoFile = args[2]
    

    local identifiers = GetPlayerIdentifiers(src)

    local steamid  = false
    local license  = false
    local discord  = false
    local xbl      = false
    local liveid   = false
    local ip       = false

  for k,v in pairs(identifiers)do
        
      if string.sub(v, 1, string.len("steam:")) == "steam:" then
        steamid = v
      elseif string.sub(v, 1, string.len("license:")) == "license:" then
        license = v
      elseif string.sub(v, 1, string.len("xbl:")) == "xbl:" then
        xbl  = v
      elseif string.sub(v, 1, string.len("ip:")) == "ip:" then
        ip = v
      elseif string.sub(v, 1, string.len("discord:")) == "discord:" then
        discord = v
      elseif string.sub(v, 1, string.len("live:")) == "live:" then
        liveid = v
      end
    
  end

    if has_value(users, license) then
        TriggerClientEvent('jumpscare:jumpscare', plrId, videoFile)
    else
        TriggerClientEvent('jumpscare:nopermission', src, "You don't have permission to execute this command.")
    end
    
end, false)



