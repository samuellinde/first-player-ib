gl.setup(NATIVE_WIDTH, NATIVE_HEIGHT)

local loader = require "loader"

function node.render()
    for name, module in pairs(loader.modules) do
        module.draw()
    end
end
