fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'MG / MathewGaming'
description 'Scatch gun serial number'
version '1.0'

client_scripts {
    '@es_extended/locale.lua',
    'locales/*.lua',
    'client/main.lua',
}

server_scripts {
    '@es_extended/locale.lua',
    'locales/*.lua',
    'server/main.lua',
    'server/updater.lua',
}

shared_scripts {
    '@ox_lib/init.lua',
    'shared/Config.lua',
}