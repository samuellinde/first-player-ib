gl.setup(NATIVE_WIDTH, NATIVE_HEIGHT)

local loader = require "loader"
local font = resource.load_font('robotob.ttf')
local active_module = 'slideshow'
local current_track = ''
local current_track_width = 0
local current_track_x = 0

-- Listen for external triggers
util.data_mapper {
    swap = function(module)
        active_module = module
    end
}

util.json_watch('config.json', function(json)
    current_track = config.playing
    current_track_width = font:width(current_track, 60)
    current_track_x = NATIVE_WIDTH / 2 - current_track_width / 2
end)

function node.render()
    gl.clear(0, 0, 0, 1)
    for name, module in pairs(loader.modules) do
        if name == active_module then
            module.draw()
        else
            module.unload()
        end
    end
    -- font:write(current_track_x, 980, current_track, 60, 1, 1, 1, 1)
end
