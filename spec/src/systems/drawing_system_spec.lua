require("src/ecs/world")
local DrawingSystem = require('src/ecs/systems/drawing_system')

describe('Drawing System', function()
	it('can be instantiated safely.', function()
		assert.has_no_errors(function()
			DrawingSystem:hasName()
		end)
	end)
	it('draw() attempts to draw an entity.', function ()
		local world = World().new()
		world:addSystem(DrawingSystem)

		world:emit("draw")

		--DrawingSystem
	end)
end)