local Player = Entity:extend("Player")

function Player:init(x, y, r, col, spd, joystick)
    Player.super.init(self, x, y, r, col, spd)
    self.joystick = joystick
end

function Player:update(dt)
    local left_button_pressed, right_button_pressed, down_button_pressed, up_button_pressed
    local screen_height = love.graphics.getHeight()
    local screen_width = love.graphics.getWidth()

    if self.joystick then
        left_button_pressed = self.joystick:isGamepadDown("dpleft")
        right_button_pressed = self.joystick:isGamepadDown("dpright")
        down_button_pressed = self.joystick:isGamepadDown("dpdown")
        up_button_pressed = self.joystick:isGamepadDown("dpup")
    else
        left_button_pressed = love.keyboard.isDown("left")
        right_button_pressed = love.keyboard.isDown("right")
        down_button_pressed = love.keyboard.isDown("down")
        up_button_pressed = love.keyboard.isDown("up")
    end

    if  up_button_pressed    and self.y > 0 then self.y = self.y - self.spd end
    if  down_button_pressed  and self.y < screen_height then self.y = self.y + self.spd end
    if  left_button_pressed  and self.x > 0 then self.x = self.x - self.spd end
    if  right_button_pressed and self.x < screen_width then self.x = self.x + self.spd end
end

return Player