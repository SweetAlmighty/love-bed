local Concord = require("libs/concord")

local name = "position"

local created, component = Concord.components.try(name)

if not created then
	component = Concord.component(name, function(entity)
		entity.x = x or 0
		entity.y = y or 0
	end)
end

return component