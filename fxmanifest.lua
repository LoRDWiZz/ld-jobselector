fx_version 'cerulean'
games { 'gta5' }

description 'ESX Job Selector'

lua54 'yes'

shared_scripts {
    '@es_extended/imports.lua',
    '@es_extended/locale.lua',
    '@ox_lib/init.lua',
    'locale.lua',
    'config.lua'
}

client_scripts {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    'cl_main.lua'
}

server_scripts {
    'sv_main.lua'
}