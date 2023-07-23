CreateThread(function()
    while true do
        local CamFov = GetGameplayCamFov()
        local CamFovCar = GetFinalRenderedCamFov()
        local CamPos = GetFollowPedCamViewMode()
        local isinveh = IsPedInAnyVehicle(PlayerPedId(), false)
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
        Wait(1500)
    end
end)