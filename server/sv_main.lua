RegisterCommand('alerts', function(source, args)
    type = 'police'
    data = {["code"] = '10-31B', ["name"] = 'House Break-In', ["loc"] = 'Panorama Dr, Grand Senora Desert'}
    length = 3500
    TriggerClientEvent('wf_alerts:SendAlert', source, type, data, length)
end, false)

RegisterCommand('alerts2', function(source, args)
    type = 'ems'
    data = {["code"] = '*CALL*', ["name"] = 'Unresponsive Person', ["loc"] = 'Panorama Dr, Grand Senora Desert'}
    length = 3500
    TriggerClientEvent('wf_alerts:SendAlert', source, type, data, length)
end, false)

RegisterCommand('alerts3', function(source, args)
    type = 'officer-down'
    data = {["code"] = '10-00', ["name"] = 'Officer Down', ["loc"] = 'Mirror Park, somewhere I guess'}
    length = 7500
    TriggerClientEvent('wf_alerts:SendAlert', source, type, data, length)
end, false)

RegisterNetEvent('wf_alerts:server:Notification')
AddEventHandler('wf_alerts:server:Notification', function(type, street)
    data = {["code"] = '10-31B', ["name"] = 'House Break-In', ["loc"] = street}
    length = 3500
    TriggerClientEvent('wf_alerts:SendAlert', -1, type, data, length)
end)