local Concord = require("libs/concord")
local MoveSystem = require("src/ecs/systems/move_system")
local DrawableSystem = require("src/ecs/systems/drawable_system")

--- Constructor for an instance of a World.
-- @param super The super class for an instance of a world.
-- @return An instance of World. Returns a cached instance if called multiple times within the runtime of the application.
local function World(super)
	local world = {}
	world.__index = Concord.world()
	setmetatable(world, super)

	function world.new(...)
		if world._instance then return world._instance end

		local instance = setmetatable({}, world)
		if instance.ctor then instance:ctor(...) end

		instance:addSystems(
			MoveSystem,
			DrawableSystem
		)

		world._instance = instance
		return world._instance
	end

	return world
end


return World().new()