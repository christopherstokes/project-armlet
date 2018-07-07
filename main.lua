local Entity = require "entity"

local player = Entity
player:init(400, 300, 10, {255, 0, 0})

local nothing = 0

-- preload function to load any images/sounds or the like
function love.load()
end

-- update function called continuously
function love.update(dt)
  player:update(dt)
end

-- draw function called 60 times/sec typically
function love.draw()
--  love.graphics.print("Hello World", 400, 300)
--  love.graphics.clear(0,0,0)
  player:draw()
end

-- quit function called when player exits game
function love.quit()
end
