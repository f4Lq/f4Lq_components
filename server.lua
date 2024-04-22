ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('suppresor', function(source)
    TriggerClientEvent('components:useSuppresor', source)
end)

ESX.RegisterUsableItem('grip', function(source)
    TriggerClientEvent('components:useGrip', source)
end)

ESX.RegisterUsableItem('flashlight', function(source)
    TriggerClientEvent('components:useFlashlight', source)
end)

ESX.RegisterUsableItem('scope', function(source)
    TriggerClientEvent('components:useScope', source)
end)

ESX.RegisterUsableItem('box_magazine', function(source)
    TriggerClientEvent('components:useBoxMagazine', source)
end)

ESX.RegisterUsableItem('extended_clip', function(source)
    TriggerClientEvent('components:useExtendedClip', source)
end)

RegisterServerEvent('components:removeItem')
AddEventHandler('components:removeItem', function(item)
	local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem(item, 1)
end)