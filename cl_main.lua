local pokazano = false

RegisterNetEvent('futro_popui:pokazi')
AddEventHandler('futro_popui:pokazi', function(action, text)
	SendNUIMessage({
		action = action,
		text = text,
	})
	pokazano = true
end)

RegisterNetEvent('futro_popui:ugasi')
AddEventHandler('futro_popui:ugasi', function()
	SendNUIMessage({
		action = 'hide'
	})
	pokazano = false
end)


-- This part is optional (ESX.ShowHelpNotification)
Citizen.CreateThread(function()
	while true do
		Wait(7000)	-- refresh time / hide after 7 sec
		TriggerEvent('futro_popui:ugasi')
	end
	return
end)