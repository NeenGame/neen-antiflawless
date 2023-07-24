CreateThread(function()
    while true do
        local ped = PlayerPedId()
        local armed = IsPedArmed
        local CamFov = GetGameplayCamFov()
        local CamFovCar = GetFinalRenderedCamFov()
        local CamPos = GetFollowPedCamViewMode()
        local isinveh = IsPedInAnyVehicle(ped, false)
        if armed(ped, 1) or armed(ped, 2) or armed(ped, 4) then
            if isinveh and CamPos == 0 and CamFovCar > 60.1 then
                TriggerServerEvent('neen-antiflawless:server:kick:vinka', CamFov)
            elseif not isinveh and CamPos == 0 and CamFov > 60.2 then
                TriggerServerEvent('neen-antiflawless:server:kick:vinka', CamFov)
            elseif not isinveh and CamPos == 4 and CamFov > 58.0 then
                TriggerServerEvent('neen-antiflawless:server:kick:vinka', CamFov)
            elseif CamFov < 39.0 then
                TriggerServerEvent('neen-antiflawless:server:kick:vinka', CamFov)
            elseif isinveh and CamPos == 4 and CamFovCar > 60.6 then
                TriggerServerEvent('neen-antiflawless:server:kick:vinka', CamFov)
            end
        end
        Wait(1500)
    end
end)