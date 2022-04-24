local VisualComponent = require('src/ecs/components/visual_component')

describe('Visual Component', function()
	it('can be instantiated safely.', function()
		assert.has_no_errors(function()
			VisualComponent:hasName()
		end)
	end)
 	it("is like a Highlander; there can be only one.", function()    	
    	assert.is_true(VisualComponent == require('src/ecs/components/visual_component'))
  	end)
	it('has a name.', function ()
		assert.is_true(VisualComponent:hasName())
	end)
	it('has the correct name.', function ()
		assert.is_true(VisualComponent:getName() == "visual")
	end)
end)