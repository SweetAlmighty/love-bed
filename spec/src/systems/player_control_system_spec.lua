local world = require("src/ecs/world")
local Concord = require("libs/concord")
local PlayerControlSystem = require('src/ecs/systems/player_control_system')

describe('Player Control System', function()
	it('can be instantiated safely.', function()
		assert.has_no_errors(function()
			PlayerControlSystem:hasName()
		end)
	end)
	it('update() updates the player position.', function()
		world:addSystem(PlayerControlSystem)

		local player = Concord.entity(world):give("position", 0, 0)

		world:emit("update", 1)

		assert.is_true(player.position.x == 1)
		assert.is_true(player.position.y == 1)
	end)
end)