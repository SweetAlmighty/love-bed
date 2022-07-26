local Concord = require("libs.concord.init")
local VelocityComponent = require('src/ecs/components/velocity_component')
local PositionComponent = require('src/ecs/components/position_component')

local MoveSystem = Concord.system({
    pool = { "position", "velocity" }
})

local elapsed_time = 0

--- Updates entities that contain a "position" component.
-- @param dt The time that has elapsed since the last frame was rendered.
function MoveSystem:update(dt)
    for _, e in ipairs(self.pool) do
        elapsed_time = elapsed_time + dt
        e.position.y = e.position.y + math.cos(math.pi * elapsed_time) * e.velocity.x
    end
end

return MoveSystem