local Concord = require("libs/concord")
local PositionComponent = require('src/ecs/components/position_component')

local PlayerControlSystem = Concord.system({
    pool = { "position" }
})

--- Updates entities that contain a "position" component.
-- @param dt The time that has elapsed since the last frame was rendered.
function PlayerControlSystem:update(dt)
    self.pool[1].position.x = dt
    self.pool[1].position.y = dt
end

return PlayerControlSystem