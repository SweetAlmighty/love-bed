local world = require("src/ecs/world")

describe('World', function()
 	it("is like a Highlander; there can be only one.", function()    	
    	assert.is_true(world == require("src/ecs/world"))
  	end)
 	it("will index Concord.world for functions that it needs.", function()    	
    	assert.has_no_error(function() world:hasName() end)
  	end)
end)