local Concord = require("libs/concord")

local name = "position"

--- Constructor for an instance of an entity that can be controlled by a player.
-- @return A new instance of a player-controlled entity.
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