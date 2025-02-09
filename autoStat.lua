local robot = require('robot')
local config = require('config')

local function patrol()
	print("patrolling")
	local farmSpot = 1
	while farmSpot < config.workingFarmArea do
		if farmSpot%(config.workingFarmArea*2) == 0 then
			print("turn right")
			robot.turnRight()
			robot.foward()
			robot.turnRight()
		elseif farmSpot%config.workingFarmSize == 0 then
			print("turn")
			robot.turnLeft()
			robot.forward()
			robot.turnLeft()
		else
			while not robot.forward() do end
		end
		farmSpot = farmSpot + 1
	end
end

local function main()
	print("Starting auto stat")
	patrol()
end

main()
