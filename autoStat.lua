local robot = require('robot')
local config = require('config')

local function patrol()
	print("patrolling")
	local farmSpot = 1
	while farmSpot < config.workingFarmArea do
		while ~robot.forward() do end
		if farmSpot%config.workingFarmSize == 0 then
			print("turn")
			robot.turnLeft()
			robot.forward()
			robot.turnRight()
		end
		farmSpot = farmSpot + 1
	end
end

local function main()
	print("Starting auto stat")
	patrol()
end

main()
