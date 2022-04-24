require("src/ecs/world")

local w = World()

describe('World', function()
 	it("is like a Highlander; there can be only one.", function()    	
    	assert.is_true(w.new() == w.new())
  	end)
 	it("will index Concord.world for functions that it needs.", function()    	
    	assert.has_no_error(function() w.new():hasName() end)
  	end)
end)