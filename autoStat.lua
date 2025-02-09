local robot = require('robot')
local config = require('config')

local function patrol()
	print("patrolling")
	local farmSpot = 1
	while farmSpot < config.workingFarmArea do
		while not robot.forward() do end
		if farmSpot%(config.workingFarmArea*2) == (config.workingFarmSize*2)-1 then
			print("turn right")
			robot.turnRight()
			robot.foward()
			robot.turnRight()
		elseif farmSpot%config.workingFarmSize == config.workingFarmSize-1 then
			print("turn")
			robot.turnLeft()
			robot.forward()
			robot.turnLeft()
		end
		farmSpot = farmSpot + 1
	end
end

local function main()
	print("Starting auto stat")
	patrol()
end

main()
