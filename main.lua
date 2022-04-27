--- summary.
-- Main.lua.
-- The entry point for the application.

local World = require('src/ecs/world')
local Entity = require('src/ecs/entities/entity')

function love.load()
	love.math.setRandomSeed(os.time())

	for i=1,10 do
		Entity:new(
			love.math.random(0, 800), 
			love.math.random(0, 600),
			love.math.random(1, 50), 
			{  
				love.math.random(0.0, 1.0), 
				love.math.random(0.0, 1.0),
				love.math.random(0.0, 1.0),
				1 
			})
	end
end

function love.update(dt)
    World:emit("update", dt)
end

function love.draw()
    World:emit("draw")
end