

CreateThread(function()
    local inRange = false
    local shown = false
    while true do
        local inRange = false
        local cooldown = 1500
        local coords = GetEntityCoords(PlayerPedId())
        local near = false
        for _,v in pairs(Config.Umkleide.coords) do
            local dist = #(coords - v)
            if dist < 2.0 and not menuOpen then
                near = true
                cooldown = 0
                if Config.Umkleide.marker.enable then
                    local rgba = Config.Umkleide.marker.rgba
                    local size = Config.Umkleide.marker.size
                    local type = Config.Umkleide.marker.type

                    DrawMarker(type, v, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, size, size, size, rgba[1] or 255, rgba[2] or 255, rgba[3] or 0, rgba[4] or 255, false, false, 0, true, false, false, false)
                end
                inRange = true
                if IsControlJustPressed(0, Config.Umkleide.openKey) then
                inRange = false
                    TriggerEvent('codem-apperance:OpenWardrobe')
                end
            end
        end
        if Config.Umkleide.interact.enable then
            if inRange and not shown then
                shown = true
                exports["interact"]:Open("E", "Umkleide")
            elseif not inRange and shown then
                shown = false
                exports["interact"]:Close()
            end
        end
       Citizen.Wait(cooldown)
    end
end)

CreateThread(function()
    if Config.Umkleide.blip.enable then
        for k,v in pairs(Config.Umkleide.coords) do
            local blip = AddBlipForCoord(v)
            SetBlipSprite(blip, Config.Umkleide.blip.type)
            SetBlipColour(blip, Config.Umkleide.blip.color)
            SetBlipAsShortRange(blip, true)
            SetBlipScale(blip, Config.Umkleide.blip.size)
            BeginTextCommandSetBlipName('STRING')
            AddTextComponentString(Config.Umkleide.blip.label)
            EndTextCommandSetBlipName(blip)
        end
    end
end)