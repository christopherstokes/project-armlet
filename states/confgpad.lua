local ConfGamePad = {}
local lastbutton = "none"

ConfGamePad.update = function (dt)
    function love.gamepadpressed(joystick, button)
        lastbutton = button
    end

    if love.keyboard.isDown("escape") then current_state = MenuState end
end

ConfGamePad.draw = function ()
    love.graphics.clear()
    love.graphics.print("Last gamepad button pressed: "..lastbutton, 10, 10)
    love.graphics.print("Joystick value: "..joystick:getGUID() or "none", 10, 30)

    love.graphics.print("press ESC to go back to MENU", 10, 100)
end

return ConfGamePad