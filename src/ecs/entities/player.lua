local World = require('src/ecs/world')
local Concord = require("libs/concord")

local Player = {}
Player.__index = Player

--- Constructor for an instance of an entity that can be controlled by a player.
-- @return A new instance of a player-controlled entity.
function Player:new(x, y)
	local p = Concord.entity(World)
				     :give("position", x, y)
   	setmetatable(p, self)
   	self.__index = self
   	return p
end

return Player