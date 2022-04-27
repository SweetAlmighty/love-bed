local Concord = require("libs/concord")

local name = "drawable"

local default_color = { 1, 1, 1, 1 }

--- Constructor for a component that provides a Drawable representation of an entity.
-- @return A new instance of a player-controlled entity.
local function DrawableComponent()
	local created, component = Concord.components.try(name)

	if not created then
		component = Concord.component(name,
		function(entity, size, color)
			entity.size = size or 5
			entity.color = color or default_color
		end)
	end

   	return component
end

return DrawableComponent()