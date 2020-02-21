RegisterNetEvent('wf_alerts:SendAlert')
AddEventHandler('wf_alerts:SendAlert', function(type, data)
    SendNUIMessage({action = 'display', style = type, info = data})
end)

