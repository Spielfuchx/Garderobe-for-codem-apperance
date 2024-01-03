fx_version 'adamant'
game 'gta5'
lua54 'yes'

description 'Garderobe for codem-apperance'
name 'Garderobe'
author 'SpielFuchx'

version '1.0.0'
legacyversion '1.9.4'

shared_script '@es_extended/imports.lua'

client_scripts {
	'@es_extended/locale.lua',
	'locales/*.lua',
	'config.lua',
	'client/main.lua'
}

dependencies {
	'es_extended',
	'codem-appearance'
}
