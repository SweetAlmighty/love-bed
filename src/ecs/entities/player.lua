local Concord = require("libs/concord")

local Player = {}
Player.__index = Player

function Player:new(p)
	p = p or {}
   	setmetatable(p, self)
   	self.__index = self
   	return p
end

function Player:has(name)
	return true
end

return Player