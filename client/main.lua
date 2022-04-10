ESX = nil
                                                                                                                                                                                                                                                                                                                                                                                            print("^0| ^1SJobsCenter^7 | ^0CREATED BY^7 ^2SAY^7 | ^3FOR FIVEM^7")
                                                                                                                                                                                                                                                                                                                                                                                            print("^0| ^1SHOP^7 | ^4dsc.gg/zdev^7")
Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

local isMenuOpen = false

local centermain = RageUI.CreateMenu("", "~b~Accueil Pole Emplois", 10, 80, 'jobcenter', 'interaction_bgd')
local wlmain = RageUI.CreateSubMenu(centermain, "", "~b~Accueil Pole Emplois", 10, 80, 'jobcenter', 'interaction_bgd')
local jobfree = RageUI.CreateSubMenu(centermain, "", "~b~Accueil Pole Emplois", 10, 80, 'jobcenter', 'interaction_bgd')
centermain.closed = function()
    isMenuOpen = false
end

CreateThread(function()
    while true do
        local interval = 850
        local playerco = GetEntityCoords(GetPlayerPed(-1), false)
        local dist = Vdist(playerco.x, playerco.y, playerco.z, -267.75939941406,-963.033203125,31.223129272461)
        if dist < 4.0 then
            interval = 1 
            DrawMarker(20, -267.75939941406,-963.033203125,31.223129272461, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 255, 100, 100, 170, 0, 1, 2, 0, nil, nil, 0)
            ESX.ShowHelpNotification("~b~Appuyez sur ~y~ ~INPUT_CONTEXT~  ~b~pour intéragir")
            if IsControlJustPressed(0, 51) then
                OpenJobMenu()
            end
        elseif dist < 5.0  then
            isMenuOpen = false
            RageUI.Visible(centermain, false)
        end
        Wait(interval)
    end
end)

function OpenJobMenu()
    if isMenuOpen then
        isMenuOpen = false
        RageUI.Visible(centermain, false)
    else
        isMenuOpen = true
        RageUI.Visible(centermain, true)
        CreateThread(function()
            while isMenuOpen do
                Wait(1)
                RageUI.IsVisible(centermain, function()
                    RageUI.Separator("~o~Author ~s~- ~p~Sayzx ")  
                    RageUI.Button("~b~>> ~s~Voir les Jobs WL", "~r~Jobs avec WL obligatoire", {RightLabel= ">>"}, true, {}, wlmain)   
                    RageUI.Button("~b~>> ~s~Voir les Jobs Non-WL", "~g~Jobs Disponible sans entretien", {RightLabel= ">>"}, true, {}, jobfree) 
                end)
                 RageUI.IsVisible(wlmain, function()
                    RageUI.Separator("~o~Author ~s~- ~p~Sayzx ")  
                    RageUI.Button("~b~>> ~s~LSPD", "~p~Devien  Policier et sauve notre belle fille de LS", {RightLabel= ">>"}, true, {
                    onSelected = function() 
                        ESX.ShowNotification("Pour devenir ~b~LSPD rend toi sur le ~r~discord : ~o~dsc.gg/zdev")
                    end}, wlmain)

                    RageUI.Button("~b~>> ~s~EMS", "Devien  ~r~EMS ~s~ et sauve nos citoyens", {RightLabel= ">>"}, true, {
                    onSelected = function() 
                        ESX.ShowNotification("Pour devenir ~b~EMS rend toi sur le ~r~discord : ~o~dsc.gg/zdev")
                    end}, wlmain)

                    RageUI.Button("~b~>> ~s~Taxi", "Devien  ~r~Taxi ~s~et conduis nos citoyens", {RightLabel= ">>"}, true, {
                    onSelected = function() 
                        ESX.ShowNotification("Pour devenir ~b~Taxi rend toi sur le ~r~discord : ~o~dsc.gg/zdev")
                    end}, wlmain)

                    RageUI.Button("~b~>> ~s~Concessionnaire", "Devien  ~r~Concessionnaire ~s~et vend de belles voitures", {RightLabel= ">>"}, true, {
                    onSelected = function() 
                        ESX.ShowNotification("Pour devenir ~b~Concessionnaire rend toi sur le ~r~discord : ~o~dsc.gg/zdev")
                    end}, wlmain)

                    RageUI.Button("~b~>> ~s~Mécano", "Devien  ~r~Mécano ~s~et répare nos voitures", {RightLabel= ">>"}, true, {
                        onSelected = function() 
                            ESX.ShowNotification("Pour devenir ~b~Mécano rend toi sur le ~r~discord : ~o~dsc.gg/zdev")
                        end}, wlmain)

                    RageUI.Button("~b~>> ~s~Agence Immobilière", "Devien une ~r~gence Immobilière ~s~et vend tes plus belles maisons", {RightLabel= ">>"}, true, {
                    onSelected = function() 
                        ESX.ShowNotification("Pour devenir ~b~Membre de l'Agence Immobilière rend toi sur le ~r~discord : ~o~dsc.gg/zdev")
                    end}, wlmain)

                    RageUI.Button("~b~>> ~s~Banquier", "Devien  ~r~Banquier ~s~et gère l'argent de la ville", {RightLabel= ">>"}, true, {
                    onSelected = function() 
                        ESX.ShowNotification("Pour devenir ~b~Banquier rend toi sur le ~r~discord : ~o~dsc.gg/zdev")
                    end}, wlmain)

                    RageUI.Button("~b~>> ~s~Vigneron", "~p~Devien  ~r~Vigneron ~s~~s~et vend ton vin", {RightLabel= ">>"}, true, {
                    onSelected = function() 
                        ESX.ShowNotification("Pour devenir ~b~Vigneron ~s~ ~r~discord : ~o~dsc.gg/zdev")
                    end}, wlmain)

                    RageUI.Button("~b~>> ~s~Tabac", "~p~Devien  ~r~Tabac ~s~et vend des cigarettes", {RightLabel= ">>"}, true, {
                        onSelected = function() 
                            ESX.ShowNotification("Pour devenir ~b~Tabac rend toi sur le ~r~discord : ~o~dsc.gg/zdev")
                        end}, wlmain)
                end)          
                 

                       
                
                RageUI.IsVisible(jobfree, function()
                    RageUI.Separator("~o~Author ~s~- ~p~Sayzx ")  
                    
                    RageUI.Button("~b~>> ~s~Chomeur", "~b~Salaire ~s~ :", {RightLabel= "~b~"..Config.Price.Price4.." $"}, true, {
                    onSelected = function()
                        TriggerServerEvent("sjob:setjob1")
                        ESX.ShowNotification("~g~✅Vous avez un nouveau métier ~s~( "..Config.Jobs.Job1.." )")
                    end
                    }) 
                    RageUI.Button("~b~>> ~s~Abbateur", "~b~Salaire ~s~ :", {RightLabel= "~b~"..Config.Price.Price1.." $"}, true, {
                    onSelected = function()
                        TriggerServerEvent("sjob:setjob2")
                        ESX.ShowNotification("~g~✅Vous avez un nouveau métier ~s~( "..Config.Jobs.Job2.." )")
                    end
                    })   
                    RageUI.Button("~b~>> ~s~Bucheron", "~b~Salaire ~s~ :", {RightLabel= "~b~"..Config.Price.Price2.." $"}, true, {
                    onSelected = function()
                        TriggerServerEvent("sjob:setjob3")
                        ESX.ShowNotification("~g~✅Vous avez un nouveau métier ~s~( "..Config.Jobs.Job3.." )")
                    end
                    })  
                    RageUI.Button("~b~>> ~s~Mineur", "~b~Salaire ~s~ :", {RightLabel= "~b~"..Config.Price.Price3.." $"}, true, {
                    onSelected = function()
                        TriggerServerEvent("sjob:setjob4")
                        ESX.ShowNotification("~g~✅Vous avez un nouveau métier ~s~( "..Config.Jobs.Job4.." )")
                    end
                    })  
 
                end)
            end
            
        end)
    end
end

