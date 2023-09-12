if Config.Framework == 'QB' then
    local QBCore = exports[Config.QBCoreName]:GetCoreObject()
end

RegisterServerEvent('ld-cityhall:setjob', function(data)
    local src = source
    for k,v in pairs(Config.Jobs) do 
        if v.job == data.job then 
            if Config.Framework == 'ESX' then
                local xPlayer = ESX.GetPlayerFromId(src)
                if ESX.DoesJobExist(data.job, data.grade) then
                    xPlayer.setJob(data.job, data.grade)
                    TriggerClientEvent('esx:showNotification', src, 'Congratulations, you have a new job '..data.job) 
                end
            elseif Config.Framework == 'QB' then
                local Player = QBCore.Functions.GetPlayer(src)
                if Player then
                    Player.Functions.SetJob(data.job, data.grade)
                end
            end
        end
    end
end)