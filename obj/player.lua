local Player = Entity:extend("Player")

function Player:update(dt)
    if love.keyboard.isDown("up") then self.y = self.y-2 end
    if love.keyboard.isDown("down") then self.y = self.y+2 end
    if love.keyboard.isDown("left") then self.x = self.x-2 end
    if love.keyboard.isDown("right") then self.x = self.x+2 end
end

return Player