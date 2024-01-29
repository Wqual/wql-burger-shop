ESX = exports['es_extended']:getSharedObject()


RegisterServerEvent('wql_burger_tablet:primo')
AddEventHandler('wql_burger_tablet:primo', function(value)
    local xPlayer = ESX.GetPlayerFromId(source)
    local primo = 2000
    local secondo = 5000
    
    if value == 'pagamento1' then
        if xPlayer.getMoney() >= primo then
            xPlayer.removeMoney(primo)
            xPlayer.addInventoryItem('scontrino_baby', 1)

            local xPlayer = ESX.GetPlayerFromId(source)
   
        end
    elseif value == 'pagamento2' then
        if xPlayer.getMoney() >= secondo then
            xPlayer.removeMoney(secondo)
            xPlayer.addInventoryItem('scontrino_adulto', 1)

            local xPlayer = ESX.GetPlayerFromId(source)
   
        end
    end
end)
