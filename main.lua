class = require "lib/30log" -- object-orientation library
flux = require "lib/flux" -- tweening library

MenuState = require "states/menu"
ConfGPadState = require "states/confgpad"
GameState = require "states/game"
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
    
    current_state = MenuState
end

-- update function called continuously
function love.update(dt)
    flux.update(dt)
    current_state.update(dt)
end

-- draw function called 60 times/sec typically
function love.draw()
    current_state.draw()
end

-- quit function called when player exits game
function love.quit()
end
