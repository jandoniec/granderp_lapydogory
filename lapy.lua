Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0) 

        if IsControlJustReleased(1, 243) then 
            local playerPed = PlayerPedId() 
            if DoesEntityExist(playerPed) and not IsEntityDead(playerPed) then
                RequestAnimDict("random@mugging3")

                while not HasAnimDictLoaded("random@mugging3") do
                    Citizen.Wait(100)
                end

                if IsEntityPlayingAnim(playerPed, "random@mugging3", "handsup_standing_base", 3) then
                    ClearPedSecondaryTask(playerPed)
                else
                    TaskPlayAnim(playerPed, "random@mugging3", "handsup_standing_base", 3.0, -1, -1, 50, 0, false, false, false)
                end
            end
        end
    end
end)
