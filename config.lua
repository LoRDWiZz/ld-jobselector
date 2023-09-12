Config = {}

Config.Framework = "QB" -- QB / ESX
Config.QBCoreName = 'qb-core'

Config.NPC = {
    [1] = {
        coords = vector4(-545.14, -204.0, 38.22, 209.42),  -- Coords for ped
        model = "s_m_m_fiboffice_02", -- Ped Model
        synced = true -- Ignor
    },
}

Config.Blip = {
    coords = vector3(-542.3152, -208.2808, 37.649833), -- Blip coords
    label = 'Job Centre',  -- Blip label
    blip = 606, -- Blip
    color = 17, -- Blip color
}

Config.Jobs = { 
    {label = 'Unemployed', job = 'unemployed', grade = '0', icon = 'fas fa-broom'},
    {label = 'Fisherman', job = 'fisherman', grade = '0', icon = 'fas fa-fish'},
    {label = 'Lumberjack', job = 'lumberjack', grade = '0', icon = 'fas fa-tree'},
    {label = 'Miner', job = 'miner', grade = '0', icon = 'fas fa-gem'},
    {label = 'Reporter', job = 'reporter', grade = '0', icon = 'fas fa-newspaper'},
    {label = 'Butcher', job = 'slaughterer', grade = '0', icon = 'fas fa-bacon'},
    {label = 'Tailor', job = 'tailor', grade = '0', icon = 'fas fa-map-pin'},
}