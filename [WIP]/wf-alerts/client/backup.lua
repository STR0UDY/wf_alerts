RegisterNetEvent('wl-alerts:civilian:notify')
AddEventHandler('wl-alerts:civilian:notify', function(distance,alertType,objPassed,isGunshot, isSpeeder)

    local job = exports["isPed"]:isPed("job") -- Replace this with however you wish to check for a job
    local popo = false
    if job == "police" then
        popo = true -- If you've amended the above, this will work fine
    end
    
    local object = objPassed

    if alertType == "Suspicious" and not popo then
    end

end)
