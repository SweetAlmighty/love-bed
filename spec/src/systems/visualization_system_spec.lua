local world = require("src/ecs/world")
local VisualizationSystem = require('src/ecs/systems/visualization_system')

describe('Visualization System', function()
	it('can be instantiated safely.', function()
		assert.has_no_errors(function()
			VisualizationSystem:hasName()
		end)
	end)
	it('visualize() attempts to draw an entity.', function ()
		world:addSystem(VisualizationSystem)
		world:emit('visualize')
	end)
end)