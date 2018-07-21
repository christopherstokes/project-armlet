class = require "lib/30log" -- object-orientation library
flux = require "lib/flux" -- tweening library

MenuState = require "states/menu"
ConfGPadState = require "states/confgpad"
CharSelectState = require "states/charselect"
GameState = require "states/game"
LevelState = require "states/level"
GameoverState = require "states/gameover"

Mixin = require "obj/mixin"
Animation = require "obj/animation"
Entity = require "obj/entity"
Player = require "obj/player"
Spawner = require "obj/spawner"
Creep = require "obj/creep"


-- preload function to load any images/sounds or the like
function love.load()
    joysticks = love.joystick.getJoysticks()
    
    timer = 0
    current_state = MenuState
end

-- update function called continuously
function love.update(dt)
    flux.update(dt)
    timer = timer + 1
    current_state.update(dt)
end

-- draw function called 60 times/sec typically
function love.draw()
    current_state.draw()
end

-- quit function called when player exits game
function love.quit()
end
