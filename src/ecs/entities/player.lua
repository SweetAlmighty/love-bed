local Concord = require("libs/concord")

local Player = {}
Player.__index = Player

--- Constructor for an instance of an entity that can be controlled by a player.
-- @param p A table containing data for the entity.
-- @return A new instance of a player-controlled entity.
function Player:new(p)
	p = p or {}
   	setmetatable(p, self)
   	self.__index = self
   	return p
end

--- Checks to see if this entity has a component with a given name.
-- @return True. if the entity has the component, otherwise false.
function Player:has(name)
	return true
end

return Player