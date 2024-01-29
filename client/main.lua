ESX = exports.es_extended:getSharedObject()

-- Blip Map (Burker King)
Wql_burger_blip = AddBlipForCoord(-1188.3792, -888.2173, 13.8862, 155.6976)

SetBlipSprite(Wql_burger_blip, 106)
SetBlipScale(Wql_burger_blip, 0.7)
SetBlipColour(Wql_burger_blip, 75)
BeginTextCommandSetBlipName("STRING")
AddTextComponentString("Burker King")
EndTextCommandSetBlipName(Wql_burger_blip)

-- Npc cashier
Citizen.CreateThread(function()
    if not HasModelLoaded('ig_claypain') then
       RequestModel('ig_claypain')
       while not HasModelLoaded('ig_claypain') do
          Citizen.Wait(5)
       end
    end

npc = CreatePed(4, 'ig_claypain', -1195.3878, -893.9330, 12.8862, 341.6566, false, true)
FreezeEntityPosition(npc, true)
SetEntityInvincible(npc, true)
SetBlockingOfNonTemporaryEvents(npc, true)

local VenditaProdotti = false
local options = {
    {
        name = 'ox:option1',
        event = 'wql_burger_king:acquista',
        icon = 'fa-solid fa-person',
        label = 'Cassiere Burger King',
        canInteract = function(entity)
            return not IsEntityDead(entity)
        end
        
    }
}

exports.ox_target:addLocalEntity(npc,options)

end)

local VenditaProdotti = nil

RegisterNetEvent('wql_burger_king:acquista')
AddEventHandler('wql_burger_king:acquista', function(value)
    VenditaProdotti = value
end)


-- Menù customizable for the products
RegisterNetEvent('wql_burger_king:acquista') 
AddEventHandler('wql_burger_king:acquista', function()
    local Ped = PlayerPedId()
    local input = lib.inputDialog('🅱️​ BURGER KING 🅱️​', {
        {type = 'select', label = '🍱​​ RITIRO PRODOTTI', options = {
            {label = "🍔​ Ritira Menù Baby (2000$)", value = "menubaby"},
            {label = "🍔​ Ritira Menù Adulto (5000$)", value = "menuadulto"}
        }},
    })
    
    if input and #input > 0 then
        TriggerServerEvent('wql_burger_king:acquista', input[1])
    end

end)
