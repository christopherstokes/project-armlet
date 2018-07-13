local Player = Entity:extend("Player")

function Player:update(dt)
    if joystick:isGamepadDown("dpup") and self.y > 0 then self.y = self.y - self.spd end
    if joystick:isGamepadDown("dpdown") and self.y < love.graphics.getHeight() then self.y = self.y + self.spd end
    if joystick:isGamepadDown("dpleft") and self.x > 0 then self.x = self.x - self.spd end
    if joystick:isGamepadDown("dpright") and self.x < love.graphics.getWidth() then self.x = self.x + self.spd end
end

return Player