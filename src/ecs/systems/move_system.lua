local Concord = require("libs/concord")
local PositionComponent = require('src/ecs/components/position_component')

local MoveSystem = Concord.system({
    pool = { "position" }
})

local elapsed_time = 0

--- Updates entities that contain a "position" component.
-- @param dt The time that has elapsed since the last frame was rendered.
function MoveSystem:update(dt)
    for _, e in ipairs(self.pool) do
        elapsed_time = elapsed_time + dt
        e.position.y = 300 + math.cos(math.pi * elapsed_time)
    end
end

return MoveSystem