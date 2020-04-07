local dispatchCodes = {}

AddEventHandler('onResourceStart', function(resource)
    if resource == GetCurrentResourceName() then
        MySQL.Async.fetchAll('SELECT * FROM dispatch_codes', {}, function(result)
            if not result then print("No results available from the DB") return end
            for k, v in pairs(result) do
                print("Adding " .. v.display_code .. " to the table")
                dispatchCodes[v.code] = {
                    dbId = v.id,
                    displayCode = v.display_code,
                    description = v.description,
                    isImportant = v.is_important,
                    priority = v.priority,
                    recipientList = {
                        ["police"] = v.is_police,
                        ["ems"] = v.is_ems
                    }
                }
            end
        end)
    end
end)

RegisterServerEvent('wf-alerts:svNotify')
AddEventHandler('wf-alerts:svNotify', function(pData)
    if pData ~= nil then
        if dispatchCodes[pData.dispatchCode] ~= nil then
            local dispatchData = dispatchCodes[pData.dispatchCode]
            pData.dbId = dispatchCodes[pData.dispatchCode].dbId
            pData.priority = dispatchCodes[pData.dispatchCode].priority
            pData.dispatchMessage = dispatchCodes[pData.dispatchCode].description
            pData.isImportant = dispatchData.isImportant
            pData.recipientList = dispatchCodes[pData.dispatchCode].recipientList
            TriggerClientEvent('wf-alerts:clNotify', -1, pData)
        end
    end
end)

function addDataBaseEntry(pData)
    
end