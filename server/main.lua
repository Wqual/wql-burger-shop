ESX = exports.es_extended:getSharedObject()


RegisterServerEvent('wql_burger_king:acquista')
AddEventHandler('wql_burger_king:acquista', function(value)
    local xPlayer = ESX.GetPlayerFromId(source)
    
    if value == 'menubaby' then
        if xPlayer.removeInventoryItem('scontrino_baby', 1) then
            xPlayer.addInventoryItem('burger', 1)
            xPlayer.addInventoryItem('cola', 1)

            ESX = exports['es_extended']:getSharedObject()

            local xPlayer = ESX.GetPlayerFromId(source)

            if Config.Notification.Enable then
                TriggerClientEvent('wql_burger_king:notify', source)
            end
        end
    elseif value == 'menuadulto' then
        if xPlayer.removeInventoryItem('scontrino_adulto', 1) then
            xPlayer.addInventoryItem('burger', 3)
            xPlayer.addInventoryItem('cola', 3)

            ESX = exports['es_extended']:getSharedObject()

            local xPlayer = ESX.GetPlayerFromId(source)

            if Config.Notification.Enable then
                TriggerClientEvent('wql_burger_king:notify', source)
            end
        end
    end
end)
