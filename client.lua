CreateThread(function()
    while true do
       Wait(0)
        if IsControlPressed(0, 25) then -- 25 sağ tık
            if not isInVehicleCamMode then
                isInVehicleCamMode = true
                SetFollowVehicleCamViewMode(4)
            end
        else
            if isInVehicleCamMode then
                isInVehicleCamMode = false
                SetFollowVehicleCamViewMode(1)
            end
        end
    end
end)
