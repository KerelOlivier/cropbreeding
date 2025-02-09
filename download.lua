local shell = require('shell')

local files={
	'config.lua',
	'autoStat.lua'
}

for i=1, #files do
    shell.execute(string.format('wget -f %s%s/%s', repo, branch, scripts[i]))
end
