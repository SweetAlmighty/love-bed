local Concord = require("libs/concord")

function World(super)
	local world = {}
	world.__index = Concord.world()
	setmetatable(world, super)

	function world.new(...)
		if world._instance then return world._instance end

		local instance = setmetatable({}, world)
		if instance.ctor then instance:ctor(...) end

		world._instance = instance
		return world._instance
	end

	return world
end