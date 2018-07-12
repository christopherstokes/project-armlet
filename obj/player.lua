local Player = Entity:extend("Player")

function Player:update(dt)
    if love.keyboard.isDown("up") then self.y = self.y - self.speed end
    if love.keyboard.isDown("down") then self.y = self.y + self.speed end
    if love.keyboard.isDown("left") then self.x = self.x - self.speed end
    if love.keyboard.isDown("right") then self.x = self.x + self.speed end
end

return Player