local Tunnel = module('vrp','lib/Tunnel')
local Proxy = module('vrp','lib/Proxy')
vRP = Proxy.getInterface('vRP')
local Config = module('papakko_hud', 'config')
local Locales = module('papakko_hud', 'locales/languages')

function _U(entry)
	return Locales[ Config.Locale ][entry] 
end

RegisterServerEvent('papakko_hud:getServerInfo')
AddEventHandler('papakko_hud:getServerInfo', function()

	local source = source
	local playerID = vRP.getUserId(source)

	local info = {
		hunger = vRP.getHunger(playerID),
		thirst = vRP.getThirst(playerID),

		job = vRP.getUserGroupByType(playerID, 'job'),

		money = vRP.getMoney(playerID),
		bankMoney = vRP.getBankMoney(playerID),
		blackMoney = vRP.getInventoryItemAmount(playerID, Config.vRP.items.blackMoney)
	}
	
	TriggerClientEvent('papakko_hud:setInfo', source, info)
end)

RegisterServerEvent('papakko_hud:syncCarLights')
AddEventHandler('papakko_hud:syncCarLights', function(status)
	TriggerClientEvent('papakko_hud:syncCarLights', -1, source, status)
end)