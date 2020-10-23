local cfg = {}

cfg.groups = {
    ["owner"] = {
        "owner.permissao"
	},

	["supervisor"] = {
		"supervisor.permissao"
	},

	["staff"] = {
		"staff.permissao"
	},

	["helper"] = {
		"helper.permissao"
	},
	
    ["Policia"] = {
        _config = {
            title = "Policia",
            gtype = "job"
        },
        "policia.permissao",
        "polpar.permissao"
    },
    ["Paramedico"] = {
        _config = {
            title = "Paramedico",
            gtype = "job"
        },
        "paramedico.permissao",
        "polpar.permissao"
    },
    ["PaisanaPolicia"] = {
        _config = {
            title = "PaisanaPolicia",
            gtype = "job"
        },
        "paisanapolicia.permissao"
    },
    ["PaisanaParamedico"] = {
        _config = {
            title = "PaisanaParamedico",
            gtype = "job"
        },
        "paisanaparamedico.permissao"
    },
    ["Mecanico"] = {
        _config = {
            title = "Mecanico",
            gtype = "job"
        },
        "mecanico.permissao"
    },
    ["PaisanaMecanico"] = {
        _config = {
            title = "PaisanaMecanico",
            gtype = "job"
        },
        "paisanamecanico.permissao"
    },
    ["Taxista"] = {
        _config = {
            title = "Taxista",
            gtype = "job"
        },
        "taxista.permissao"
    },
    ["PaisanaTaxista"] = {
        _config = {
            title = "PaisanaTaxista",
            gtype = "job"
        },
        "paisanataxista.permissao"
    },
    
    ["Ouro"] = {
        _config = {
            title = "Ouro"
        },
        "ouro.permissao",
    },
    ["Diamante"] = {
        _config = {
            title = "Diamante"
        },
        "diamante.permissao",
    },
    ["Motoclub"] = {
        _config = {
            title = "Motoclub",
            gtype = "job"
        },
        "motoclub.permissao",
        "entrada.permissao"
    },
    ["Trafico"] = {
        _config = {
            title = "Trafico",
            gtype = "job"
        },
        "trafico.permissao",
        "entrada.permissao"
    }
}

cfg.users = {
    [1] = { "owner" }
}

cfg.selectors = {}

return cfg