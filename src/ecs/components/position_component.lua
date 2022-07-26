local Concord = require("libs.concord.init")

local name = "position"

--- Constructor for an instance of a component that provides an entity with a position value.
-- @return A new instance of a position component.
local function PositionComponent()
	local created, component = Concord.components.try(name)

	if not created then
		component = Concord.component(name,
		function(entity, x, y)
			entity.x = x or 0
			entity.y = y or 0
		end)
	end

   	return component
end

return PositionComponent()