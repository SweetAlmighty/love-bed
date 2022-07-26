local World = require("src/ecs/world")
local Entity = require("src/ecs/entities/entity")

describe("Entity", function()
	describe("should be created with", function()
		it("a Position component.", function()
			local e = Entity:new(0, 0, 0, nil)
			assert.truthy(e["position"])
		end)
		it("a Drawable component.", function()
			local e = Entity:new(0, 0, 0, nil)
			assert.truthy(e["drawable"])
		end)
		it("a Velocity component.", function()
			local e = Entity:new(0, 0, 0, nil)
			assert.truthy(e["velocity"])
		end)
	end)
end)