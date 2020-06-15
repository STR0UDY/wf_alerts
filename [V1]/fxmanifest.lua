fx_version 'adamant'
games { 'gta5' }

client_scripts {
   'client/cl_main.lua'
}

server_scripts {
    'server/sv_main.lua',
    '@mysql-async/lib/MySQL.lua'
}

ui_page {
    'html/alerts.html',
}

files {
	'html/alerts.html',
	'html/main.js', 
	'html/style.css',
}