local config = {
	storageFarmSize = 9,
	workingFarmSize = 6,

	storageFarmArea = 0,
	workingFarmArea = 0,
}

config.storageFarmArea = config.storageFarmSize^2
config.workingFarmArea = config.workingFarmSize^2

return config
