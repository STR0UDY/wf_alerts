RegisterCommand('alerts', function(source, args)
    type = 'police'
    data = {["code"] = '10-31B', ["name"] = 'House Break-In', ["loc"] = 'Panorama Dr, Grand Senora Desert'}
    TriggerClientEvent('wf_alerts:SendAlert', source, type, data)
end, false)