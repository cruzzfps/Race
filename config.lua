local Config = {}

Config.Locale = ''

Config.serverLogo = ''

Config.font = {
	name 	= 'Montserrat',
	url 	= ''
}

Config.date = {
	format	 	= 'default',
	AmPm		= false
}

Config.voice = {

	levels = {
		default = 5.0,
		shout = 12.0,
		whisper = 1.0,
		current = 0
	},
	
	keys = {
		distance 	= 'HOME',
	}
}


Config.vehicle = {
	speedUnit = 'KMH',
	maxSpeed = 300,

	keys = {
		seatbelt 	= 'G',
		cruiser		= 'M',
		signalLeft	= 'LEFT',
		signalRight	= 'RIGHT',
		signalBoth	= 'DOWN',
	}
}

Config.ui = {
	showServerLogo		= false,

	showJob		 		= false,

	showWalletMoney 	= false,
	showBankMoney 		= false,
	showBlackMoney 		= false,

	showDate 			= false,
	showLocation 		= false,
	showVoice	 		= true,

	showHealth			= true,
	showArmor	 		= true,
	showStamina	 		= false,
	showHunger 			= false,
	showThirst	 		= false,

	showMinimap			= false,

	showWeapons			= false,
	
}



Config.vRP = {
	items = {
		blackMoney = 'dirty_money'
	}
}

return Config