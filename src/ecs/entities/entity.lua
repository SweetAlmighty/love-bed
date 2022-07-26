local World = require('src/ecs/world')
local Concord = require("libs.concord.init")

local Entity = {}
Entity.__index = Entity

--- Constructor for an instance of an entity that can be controlled by a player.
-- @return A new instance of a player-controlled entity.
function Entity:new(x, y, vx, vy, size, color)
	local e = Concord.entity(World)
	
	e:give("position", x, y)
	 :give("velocity", vx, vy)
	 :give("drawable", size, color)

   	setmetatable(e, self)
   	self.__index = self
   	return e
end

return Entity