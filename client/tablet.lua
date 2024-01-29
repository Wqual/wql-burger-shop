ESX = exports.es_extended:getSharedObject()

local Tablet = false
exports.ox_target:addBoxZone({
    coords = vector3(-1189.1812, -887.3846, 13.8862),
    size = vec3(2, 2, 2),
    rotation = 45,
    debug = drawZones,
    options = {
        {
            name = 'ox:option2',
            event = 'wql_burger_tablet:primo',
            icon = 'fa-solid fa-burger',
            label = "Visiona Menù"
            
        }
    }
})

exports.ox_target:addBoxZone({
    coords = vector3(-1186.3578, -885.5493, 13.8862),
    size = vec3(2, 2, 2),
    rotation = 45,
    debug = drawZones,
    options = {
        {
            name = 'ox:option2',
            event = 'wql_burger_tablet:primo',
            icon = 'fa-solid fa-burger',
            label = "Visiona Menù"
            
        }
    }
})

exports.ox_target:addBoxZone({
    coords = vector3(-1182.4203, -891.3252, 13.8862),
    size = vec3(2, 2, 2),
    rotation = 45,
    debug = drawZones,
    options = {
        {
            name = 'ox:option2',
            event = 'wql_burger_tablet:primo',
            icon = 'fa-solid fa-burger',
            label = "Visiona Menù"
            
        }
    }
})

exports.ox_target:addBoxZone({
    coords = vector3(-1185.2690, -893.2125, 13.8862),
    size = vec3(2, 2, 2),
    rotation = 45,
    debug = drawZones,
    options = {
        {
            name = 'ox:option2',
            event = 'wql_burger_tablet:primo',
            icon = 'fa-solid fa-burger',
            label = "Visiona Menù"
            
        }
    }
})

local Tablet = nil

RegisterNetEvent('wql_burger_tablet:primo')
AddEventHandler('wql_burger_tablet:primo', function(value)
    Tablet = value
end)

RegisterNetEvent('wql_burger_tablet:primo') 
AddEventHandler('wql_burger_tablet:primo', function()
    local Ped = PlayerPedId()
    local input = lib.inputDialog('🅱️​ BURGER KING 🅱️​', {
        {type = 'select', label = '📄​​ CATALOGO', options = {
            {label = "🍔​ Menù Baby (2000$)", value = "pagamento1"},
            {label = "🍔 Menù Adulto (5000$)", value = "pagamento2"}
        }},
    })

    ESX.ShowNotification('Dirigiti verso la cassa per ricevere i tuoi prodotti!')
    
    if input and #input > 0 then
        TriggerServerEvent('wql_burger_tablet:primo', input[1])
    end
end)
