-----------------------------------------------------------------------------------------------------------------------------------------
-- BLACKLIST VEHICLES
-----------------------------------------------------------------------------------------------------------------------------------------
blackVehicles = {
	"tug",
	"submersible",
	"marquis",
	"submersible2",
	"cerberus",
	"cerberus2",
	"cerberus3",
	"phantom2",
	"stockade",
	"stockade3",
	"terbyte",
	"riot",
	"riot2",
	"cargobob",
	"cargobob2",
	"cargobob3",
	"cargobob4",
	"skylift",
	"bulldozer",
	"cutter",
	"dump",
	"handler",
	"scarab",
	"scarab3",
	"bruiser2",
	"bruiser3",
	"bruiser",
	"rcbandito",
	"zhaba",
	"besra",
	"cargoplane",
	"dodo",
	"duster",
	"howard",
	"jet",
	"luxor",
	"luxor2",
	"mammatus",
	"nimbus",
	"microlight",
	"miljet",
	"shamal",
	"tula",
	"velum",
	"velum2",
	"vestra",
	"airbus",
	"coach",
	"vigilante",
	"oppressor",
	"oppressor2"


}

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		checkCar(GetVehiclePedIsIn(PlayerPedId()))
		x,y,z = table.unpack(GetEntityCoords(PlayerPedId()))
		for k,v in pairs(blackVehicles) do
			checkCar(GetClosestVehicle(x,y,z,300.0,GetHashKey(v),70))
		end
	end
end)

function checkCar(vehicle)
	if vehicle then
		local model = GetEntityModel(vehicle)
		if isCarBlacklisted(model) then
			Citizen.InvokeNative(0xAE3CBE5BF394C9C9,Citizen.PointerValueIntInitialized(vehicle))
		end
	end
end

function isCarBlacklisted(model)
	for k,v in pairs(blackVehicles) do
		if model == GetHashKey(v) then
			return true
		end
	end
	return false
end
