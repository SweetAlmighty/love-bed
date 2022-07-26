--- summary.
-- Main.lua.
-- The entry point for the application.

local World = require('src/ecs/world')
local Entity = require('src/ecs/entities/entity')

local math = love.math

math.setRandomSeed(os.time() + tonumber(tostring({}):sub(8)))

local function RandomRadius()
	return math.random(1, 50)
end

local function RandomPosition()
	return {
		x = math.random(0, 800),
		y = math.random(0, 600),
	}
end

local function RandomVelocity()
	return {
		x = math.random(0, 5),
		y = math.random(0, 5),
	}
end

local function RandomColor()
	return {
		math.random(0.0, 1.0),
		math.random(0.0, 1.0),
		math.random(0.0, 1.0),
		1
	}
end

local function CreateEntity()
	local pos = RandomPosition()
	local vel = RandomVelocity()
	Entity:new(pos.x, pos.y, vel.x, vel.y, RandomRadius(), RandomColor())
end

function love.draw() World:emit("draw") end

function love.update(dt) World:emit("update", dt) end

function love.load() for i=1,10 do CreateEntity() end end
