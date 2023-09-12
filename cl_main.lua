CreateThread(function()
    for k,v in pairs(Config.NPC) do
        modelHash = GetHashKey(v.model)
        RequestModel(modelHash)
        while not HasModelLoaded(modelHash) do
            Wait(1)
        end   
        created_ped = CreatePed(0, modelHash , v.coords.x, v.coords.y, v.coords.z - 1, v.coords.w, v.synced)
	    FreezeEntityPosition(created_ped, true)
	    SetEntityInvincible(created_ped, true)
	    SetBlockingOfNonTemporaryEvents(created_ped, true)

        exports.ox_target:addModel(v.model, {
            label = TranslateCap('jobselector_target'),
            icon = "fa-regular fa-user",
            event = "ld-jobselector:openMenu",
        })
    end
end)

RegisterNetEvent('ld-jobselector:openMenu', function()
    lib.registerContext({
        id = 'main_menu',
        title = TranslateCap('title_menu'),
        options = {
          {
            title = TranslateCap('takejob_menu'),
            icon = 'fas fa-address-book',
            event = 'ld-jobselector:jobMenu',
          }
        }
      })
     
      lib.showContext('main_menu')
end)

RegisterNetEvent('ld-jobselector:jobMenu', function()
    local jobMenu = {}
    for k, v in pairs(Config.Jobs) do
        jobMenu[#jobMenu+1] = {
            title = v.label,
            txt = "",
            icon = v.icon,
            serverEvent = 'ld-cityhall:setjob',
            args = {
                job = v.job,
                grade = v.grade,
            }
        }
    end
    lib.registerContext({
        id = 'job_menu',
        title = TranslateCap('jobs_title'),
        menu = 'main_menu',
        options = jobMenu
    })

    lib.showContext('job_menu')
end)

----------------------------
-------- Blip ------------
----------------------------

CreateThread(function()
    local blip = AddBlipForCoord(Config.Blip.coords.x, Config.Blip.coords.y, Config.Blip.coords.z)
    SetBlipSprite(blip, Config.Blip.blip)
    SetBlipAsShortRange(blip, true)
    SetBlipScale(blip, 0.8)
    SetBlipColour(blip, Config.Blip.color)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(Config.Blip.label)
    EndTextCommandSetBlipName(blip)
end)