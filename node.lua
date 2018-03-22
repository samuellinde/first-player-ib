gl.setup(NATIVE_WIDTH, NATIVE_HEIGHT)

local loader = require "loader"
local font = resource.load_font('robotob.ttf')
local active_module = 'slideshow'

-- Listen for external triggers
-- util.data_mapper {
--     reset = function()
--         timer = initTimer
--     end,
--     start = function()
--         timerStatus = 'running'
--     end,
--     stop = function()
--         timerStatus = 'stopped'
--     end
-- }

function node.render()
    gl.clear(0, 0, 0, 1)
    -- active_module.draw()
    -- font:write(100, 100, tostring(active_module), 60, 1, 1, 1, 1)
    for name, module in pairs(loader.modules) do
        print(name)
        if name == active_module
            module.draw()
        end
    --     -- font:write(400, start_y, tostring(module), 60, 1, 1, 1, 1)
    --     -- start_y = start_y + 100
    end
end
