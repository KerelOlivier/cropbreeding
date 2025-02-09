local robot = require('robot')
local config = require('config')

local function patrol()
	print("patrolling")
	for i=1, config.workingFarmArea do
		print("moving", i)
	end
end

local function main()
	print("Starting auto stat")
	patrol()
end

main()
