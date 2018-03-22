gl.setup(NATIVE_WIDTH, NATIVE_HEIGHT)

local loader = require "loader"
local font = resource.load_font('robotob.ttf')
local active_module = 'slideshow'

-- Listen for external triggers
util.data_mapper {
    swap = function(module)
        active_module = module
    end
}

function node.render()
    gl.clear(0, 0, 0, 1)
    for name, module in pairs(loader.modules) do
        if name == active_module then
            module.draw()
        else
            module.unload()
        end
    end
end
