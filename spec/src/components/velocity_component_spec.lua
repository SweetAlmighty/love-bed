local VelocityComponent = require('src/ecs/components/velocity_component')

describe('Velocity Component', function()
	it('can be instantiated safely.', function()
		assert.has_no_errors(function()
			VelocityComponent:hasName()
		end)
	end)
end)