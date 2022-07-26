local Concord = require("libs.concord.init")
local DrawableComponent = require('src/ecs/components/drawable_component')
local PositionComponent = require('src/ecs/components/position_component')

local DrawSystem = Concord.system({
    pool = { "position", "drawable" }
})

--- Updates entities that contain a "drawable" component.
-- @param dt The time that has elapsed since the last frame was rendered.
function DrawSystem:draw()
    for _, e in ipairs(self.pool) do
		love.graphics.setColor(e.drawable.color)
        love.graphics.circle("fill", e.position.x, e.position.y, e.drawable.size)
    end
end

return DrawSystem