Config = {}
Config.Locale = GetConvar('esx:locale', 'en')


Config.Umkleide = {
    coords = {
        vector3(251.62, -3150.85, -0.19),    --club77
        vector3(-278.02, 212.8, 85.41),      --pipedown
        vector3(899.76, -2100.17, 34.89),     --otc
        vector3(-1675.5864, 66.3696, 67.5724),     --otc
        vector3(974.4949, -99.4634, 78.0927), --blackmc
        vector3(-781.4507, -1017.3174, 20.1652), --cardealer

    },
    blip = {
		enable = false,
        size = 0.7,
        type = 71,
        color = 51,
        label = "Umkleide",
    },
    openKey = 38, -- https://docs.fivem.net/docs/game-references/controls/
    marker = {
        enable = false,
        type = 0,
        size = 0.6,
        rgba = {255, 0, 0, 255}   
    },
    interact = {
		enable = true
    },
}