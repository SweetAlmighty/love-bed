local Concord = require("libs/concord")

local name = "visual"

--- Constructor for a component that provides a visual representation of an entity.
-- @return A new instance of a player-controlled entity.
local function VisualComponent()
	local created, component = Concord.components.try(name)

	if not created then
		component = Concord.component(name,
		function(entity, size, shape)
			entity.size = size or 0
			entity.shape = shape or 0
		end)
	end

   	return component
end

return VisualComponent()