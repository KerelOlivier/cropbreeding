local shell = require('shell')

local repo = 'https://raw.githubusercontent.com/KerelOlivier/cropbreeding/master/'
local files={
	'config.lua',
	'autoStat.lua'
}

for i=1, #files do
    shell.execute(string.format('wget -f %s/%s', repo, files[i]))
end
