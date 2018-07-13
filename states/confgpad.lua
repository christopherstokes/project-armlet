local ConfGamePad = {}
local lastbutton = {"none"}

ConfGamePad.update = function (dt)
    for i=1, #joysticks do
        local joystick = joysticks[i]
        function love.gamepadpressed(joystick, button)
            lastbutton[i] = button
        end
    end
    if love.keyboard.isDown("escape") then current_state = MenuState end
end

ConfGamePad.draw = function ()
    love.graphics.clear()
    for j=1, #joysticks do
        love.graphics.print("Last gamepad button pressed: "..lastbutton[j], 10, 10 + ((j-1) * 40))
        love.graphics.print("Joystick value: "..joysticks[j]:getGUID() or "none", 10, 30 + ((j-1) * 40))
    end
    love.graphics.print("press ESC to go back to MENU", 10, 300)
end

return ConfGamePad