local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- DV
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('dv',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"helper.permissao") or vRP.hasPermission(user_id,"staff.permissao") or vRP.hasPermission(user_id,"supervisor.permissao") or vRP.hasPermission(user_id,"owner.permissao") then
		TriggerClientEvent('deletarveiculo',source,11)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- FIX
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('fix',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	local vehicle = vRPclient.getNearestVehicle(source,11)
	if vehicle then
		if vRP.hasPermission(user_id,"supervisor.permissao") or vRP.hasPermission(user_id,"owner.permissao") or vRP.hasPermission(user_id,"ouro.permissao") or vRP.hasPermission(user_id,"diamante.permissao") then
			TriggerClientEvent('reparar',source)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- GOD
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('god',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"helper.permissao") or vRP.hasPermission(user_id,"staff.permissao") or vRP.hasPermission(user_id,"supervisor.permissao") or vRP.hasPermission(user_id,"owner.permissao") then
		if args[1] then
			local nplayer = vRP.getUserSource(parseInt(args[1]))
			if nplayer then
				vRPclient.killGod(nplayer)
				vRPclient.setHealth(nplayer,400)
			end
		else
			vRPclient.killGod(source)
			vRPclient.setHealth(source,400)
			vRPclient.setArmour(source,100)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- HASH
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('hash',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"helper.permissao") or vRP.hasPermission(user_id,"staff.permissao") or vRP.hasPermission(user_id,"supervisor.permissao") or vRP.hasPermission(user_id,"owner.permissao") then
		TriggerClientEvent('vehash',source)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TUNING
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('tuning',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"supervisor.permissao") or vRP.hasPermission(user_id,"owner.permissao") or vRP.hasPermission(user_id,"diamante.permissao") then
		TriggerClientEvent('vehtuning',source)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- WL
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('wl',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"helper.permissao") or vRP.hasPermission(user_id,"staff.permissao") or vRP.hasPermission(user_id,"supervisor.permissao") or vRP.hasPermission(user_id,"owner.permissao") then
		if args[1] then
			vRP.setWhitelisted(parseInt(args[1]),true)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- UNWL
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('unwl',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"helper.permissao") or vRP.hasPermission(user_id,"staff.permissao") or vRP.hasPermission(user_id,"supervisor.permissao") or vRP.hasPermission(user_id,"owner.permissao") then
		if args[1] then
			vRP.setWhitelisted(parseInt(args[1]),false)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- KICK
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('kick',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"helper.permissao") or vRP.hasPermission(user_id,"staff.permissao") or vRP.hasPermission(user_id,"supervisor.permissao") or vRP.hasPermission(user_id,"owner.permissao") then
		if args[1] then
			local id = vRP.getUserSource(parseInt(args[1]))
			if id then
				vRP.kick(id,"Você foi expulso da cidade.")
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- BAN
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('ban',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"staff.permissao") or vRP.hasPermission(user_id,"supervisor.permissao") or vRP.hasPermission(user_id,"owner.permissao") then
		if args[1] then
			vRP.setBanned(parseInt(args[1]),true)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- UNBAN
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('unban',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"supervisor.permissao") or vRP.hasPermission(user_id,"owner.permissao") then
		if args[1] then
			vRP.setBanned(parseInt(args[1]),false)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- MONEY
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('money',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"supervisor.permissao") or vRP.hasPermission(user_id,"owner.permissao") then
		if args[1] then
			vRP.giveMoney(user_id,parseInt(args[1]))
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ITEM
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('item',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"helper.permissao") or vRP.hasPermission(user_id,"staff.permissao") or vRP.hasPermission(user_id,"supervisor.permissao") or vRP.hasPermission(user_id,"owner.permissao") then
		if args[1] and args[2] then
			vRP.giveInventoryItem(user_id,args[1],parseInt(args[2]))
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- NC
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('nc',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"helper.permissao") or vRP.hasPermission(user_id,"staff.permissao") or vRP.hasPermission(user_id,"supervisor.permissao") or vRP.hasPermission(user_id,"owner.permissao") then
		vRPclient.toggleNoclip(source)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TPCDS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('tpcds',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"staff.permissao") or vRP.hasPermission(user_id,"supervisor.permissao") or vRP.hasPermission(user_id,"owner.permissao") then
		local fcoords = vRP.prompt(source,"Cordenadas:","")
		if fcoords == "" then
			return
		end
		local coords = {}
		for coord in string.gmatch(fcoords or "0,0,0","[^,]+") do
			table.insert(coords,parseInt(coord))
		end
		vRPclient.teleport(source,coords[1] or 0,coords[2] or 0,coords[3] or 0)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CDS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('cds',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"staff.permissao") or vRP.hasPermission(user_id,"supervisor.permissao") or vRP.hasPermission(user_id,"owner.permissao") then
		local x,y,z = vRPclient.getPosition(source)
		vRP.prompt(source,"Cordenadas:",x..","..y..","..z)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- GROUP
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('group',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"staff.permissao") or vRP.hasPermission(user_id,"supervisor.permissao") or vRP.hasPermission(user_id,"owner.permissao") then
		if args[1] and args[2] then
			vRP.addUserGroup(parseInt(args[1]),args[2])
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- UNGROUP
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('ungroup',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"staff.permissao") or vRP.hasPermission(user_id,"supervisor.permissao") or vRP.hasPermission(user_id,"owner.permissao") then
		if args[1] and args[2] then
			vRP.removeUserGroup(parseInt(args[1]),args[2])
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TPTOME
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('tptome',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"helper.permissao") or vRP.hasPermission(user_id,"staff.permissao") or vRP.hasPermission(user_id,"supervisor.permissao") or vRP.hasPermission(user_id,"owner.permissao") then
		if args[1] then
			local tplayer = vRP.getUserSource(parseInt(args[1]))
			local x,y,z = vRPclient.getPosition(source)
			if tplayer then
				vRPclient.teleport(tplayer,x,y,z)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TPTO
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('tpto',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"helper.permissao") or vRP.hasPermission(user_id,"staff.permissao") or vRP.hasPermission(user_id,"supervisor.permissao") or vRP.hasPermission(user_id,"owner.permissao") then
		if args[1] then
			local tplayer = vRP.getUserSource(parseInt(args[1]))
			if tplayer then
				vRPclient.teleport(source,vRPclient.getPosition(tplayer))
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TPWAY
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('tpway',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"helper.permissao") or vRP.hasPermission(user_id,"staff.permissao") or vRP.hasPermission(user_id,"owner.permissao") then
		TriggerClientEvent('tptoway',source)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CAR
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('car',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"helper.permissao") or vRP.hasPermission(user_id,"staff.permissao") or vRP.hasPermission(user_id,"supervisor.permissao") or vRP.hasPermission(user_id,"owner.permissao") then
		if args[1] then
			TriggerClientEvent('spawnarveiculo',source,args[1])
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- DELNPCS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('delnpcs',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"staff.permissao") or vRP.hasPermission(user_id,"supervisor.permissao") or vRP.hasPermission(user_id,"owner.permissao") then
		TriggerClientEvent('delnpcs',source)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADM
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('adm',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"staff.permissao") or vRP.hasPermission(user_id,"supervisor.permissao") or vRP.hasPermission(user_id,"owner.permissao") then
		local mensagem = vRP.prompt(source,"Mensagem:","")
		if mensagem == "" then
			return
		end
		vRPclient.setDiv(-1,"anuncio",".div_anuncio { background: rgba(255,50,50,0.8); font-size: 11px; font-family: arial; color: #fff; padding: 20px; bottom: 10%; right: 5%; max-width: 500px; position: absolute; -webkit-border-radius: 5px; } bold { font-size: 16px; }","<bold>"..mensagem.."</bold><br><br>Mensagem enviada por: Administrador")
		SetTimeout(60000,function()
			vRPclient.removeDiv(-1,"anuncio")
		end)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYERSON
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('pon',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"helper.permissao") or vRP.hasPermission(user_id,"staff.permissao") or vRP.hasPermission(user_id,"supervisor.permissao") or vRP.hasPermission(user_id,"owner.permissao") then
		local users = vRP.getUsers()
		local players = ""
		for k,v in pairs(users) do
			if k ~= #users then
				players = players..", "
			end
			players = players..k
		end
		TriggerClientEvent('chatMessage',source,"ONLINE",{255,160,0},players)
	end
end)

---------------------------------------------------------------------------------------------
-- RESET
---------------------------------------------------------------------------------------------
RegisterCommand('reset',function(source,args,rawCommand)
    local user_id = vRP.getUserId(source)
    if user_id then
        if vRP.hasPermission(user_id,"owner.permissao") then
            if args[1] then
                local nplayer = vRP.getUserSource(parseInt(args[1]))
                local id = vRP.getUserId(nplayer)
                if id then
                    vRP.kick(id,"Transplante Iniciado.")
                    vRP.setUData(id,"vRP:spawnController",json.encode(1))
                    vRP.setUData(id,"vRP:currentCharacterMode",json.encode(1))
                    vRP.setUData(id,"vRP:tattoos",json.encode(1))
                end
            end
        end
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- /GODMOD
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('godmod',function(source,args,rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id,"supervisor.permissao") or vRP.hasPermission(user_id,"owner.permissao") then
    if args[1] then
        local nplayer = vRP.getUserSource(parseInt(args[1]))
        if nplayer then
            if gods[nplayer] then
                    gods[nplayer] = nil
                    TriggerClientEvent("Notify",source,"negado","<b>GODMODE</b> desativado do ID: <b>"..parseInt(args[1]).."</b>.")
                else
                    gods[nplayer] = parseInt(args[1])
                    TriggerClientEvent("Notify",source,"sucesso","<b>GODMODE</b> ativado no ID: <b>"..parseInt(args[1]).."</b>.")
                end
            end
        end
    end
end)

gods = {}
function task_god()
    SetTimeout(1, task_god)

    for k,v in pairs(gods) do
      vRP.setHunger(v, 0)
      vRP.setThirst(v, 0)
  
      local player = vRP.getUserSource(v)
          if player ~= nil then
            vRPclient.setHealth(player,401)
            vRPclient.setArmour(player,100)
            TriggerClientEvent("resetBleeding",player)
            TriggerClientEvent("resetDiagnostic",player)
          end
    end
end

Citizen.CreateThread(function()
    task_god()
end)


-----------------------------------------------------------------------------------------------------------------------------------------
-- MATAR ID
-----------------------------------------------------------------------------------------------------------------------------------------

RegisterCommand('matar',function(source,args,rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id,"supervisor.permissao") or vRP.hasPermission(user_id,"owner.permissao") then
        if args[1] then
            local nplayer = vRP.getUserSource(parseInt(args[1]))
            if nplayer then
                vRPclient.setHealth(nplayer,1)
            end
        else
            vRPclient.setHealth(source,10)
        end
    end
end)