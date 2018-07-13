local Player = Entity:extend("Player")

function Player:init(x, y, r, col, spd, joystick)
    Player.super.init(self, x, y, r, col, spd)
    self.joystick = joystick or joysticks[1]
end

function Player:update(dt)
    if self.joystick:isGamepadDown("dpup") and self.y > 0 then self.y = self.y - self.spd end
    if self.joystick:isGamepadDown("dpdown") and self.y < love.graphics.getHeight() then self.y = self.y + self.spd end
    if self.joystick:isGamepadDown("dpleft") and self.x > 0 then self.x = self.x - self.spd end
    if self.joystick:isGamepadDown("dpright") and self.x < love.graphics.getWidth() then self.x = self.x + self.spd end
end

return Player