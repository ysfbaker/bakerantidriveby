-- Sağ tık tuşuna basılı tuttuğunuzda iç kamera modunu etkinleştirme veya devre dışı bırakma
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsControlPressed(0, 25) then -- 25 sağ tık tuşunun kontrol kodu
            if not isInVehicleCamMode then
                isInVehicleCamMode = true
                SetFollowVehicleCamViewMode(4) -- İç kamera modunu etkinleştir
            end
        else
            if isInVehicleCamMode then
                isInVehicleCamMode = false
                SetFollowVehicleCamViewMode(1) -- Normal kamera moduna geri dön
            end
        end
    end
end)