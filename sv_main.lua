RegisterServerEvent('ld-cityhall:setjob', function(data)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    if ESX.DoesJobExist(data.job, data.grade) then
        xPlayer.setJob(data.job, data.grade)
        TriggerClientEvent('esx:showNotification', src, 'Congratulations, you have a new job '..data.job)
    end
end)