ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

                                                                                                                                                                                                                                                                                                                                print("^0| ^1SJobsCenter^7 | ^0CREATED BY^7 ^2SAY^7 | ^3FOR FIVEM^7")
                                                                                                                                                                                                                                                                                                                                print("^0| ^1SHOP^7 | ^4dsc.gg/zdev^7")
RegisterNetEvent("sjob:setjob1")
AddEventHandler("sjob:setjob1", function()
    local _src = source
    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.setJob(Config.Job.Job1, 0)
end)


RegisterNetEvent("sjob:setjob2")
AddEventHandler("sjob:setjob2", function()
    local _src = source
    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.setJob(Config.Job.Job2, 0)
end)

RegisterNetEvent("sjob:setjob3")
AddEventHandler("sjob:setjob3", function()
    local _src = source
    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.setJob(Config.Job.Job3, 0)
end)

RegisterNetEvent("sjob:setjob4")
AddEventHandler("sjob:setjob4", function()
    local _src = source
    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.setJob(Config.Job.Job4, 0)
    
end)