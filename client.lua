CreateThread(function()
    while true do
        local ped = PlayerPedId()
        local armed = IsPedArmed
        local CamFov = GetGameplayCamFov()
        local CamFovCar = GetFinalRenderedCamFov()
        local CamPos = GetFollowPedCamViewMode()
        local CamPosVeh = GetFollowVehicleCamViewMode()
        local isinveh = IsPedInAnyVehicle(ped, false)
        if armed(ped, 1) or armed(ped, 2) or armed(ped, 4) then
            if not isinveh and CamPos == 0 and CamFov > 60.2 then
                TriggerServerEvent('neen-antiflawless:server:kick:vinka', CamFov)
            elseif not isinveh and CamPos == 4 and CamFov > 58.0 then
                TriggerServerEvent('neen-antiflawless:server:kick:vinka', CamFov)
            elseif CamFov < 31.7 then
                TriggerServerEvent('neen-antiflawless:server:kick:vinka', CamFov)
            elseif isinveh then
                local veh = GetVehiclePedIsUsing(ped)
                if CamPosVeh == 4 and CamFovCar > 60.6 then
                    TriggerServerEvent('neen-antiflawless:server:kick:vinka', CamFovCar)
                elseif CamPosVeh == 0 or CamPosVeh == 1 or CamPosVeh == 2 then
                    if GetVehicleClass(veh) == 8 then
                        if CamFovCar > 62.6 then
                            TriggerServerEvent('neen-antiflawless:server:kick:vinka', CamFovCar)
                        end
                    else
                        if CamFovCar > 60.2 then
                            TriggerServerEvent('neen-antiflawless:server:kick:vinka', CamFovCar)
                        end
                    end
                end
            end
        end
        Wait(1500)
    end
end)