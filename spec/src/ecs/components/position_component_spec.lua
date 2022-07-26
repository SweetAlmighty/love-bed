local component = require("src/ecs/components/position_component")

describe("Position Component", function()
	describe("should be created with", function()
		it("'position' as its name.", function()
			assert.truthy(component:hasName('position'))
		end)
	end)
end)