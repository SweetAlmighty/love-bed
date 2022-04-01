local PositionComponent = require('src/ecs/components/position_component')

describe('Position Component', function()
	it('can be instantiated.', function()
		assert.has_no_errors(function()
			PositionComponent:hasName()
		end)
	end)
	it('has a name.', function ()
		assert.is_true(PositionComponent:hasName())
	end)
	it('has the correct name.', function ()
		assert.is_true(PositionComponent:getName() == "position")
	end)
end)