gl.setup(NATIVE_WIDTH, NATIVE_HEIGHT)

local loader = require "loader"

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
    for name, module in pairs(loader.modules) do
        module.draw()
    end
end
