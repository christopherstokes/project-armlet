local Menu = {}

Menu.update = function(dt)
    if love.keyboard.isDown("up") then current_state = ConfGPadState end

    if love.keyboard.isDown("return") then
        GameState.load()
        current_state = GameState
    end

    for j=1, #joysticks do
        local joystick = joysticks[j]
        if joystick:isGamepad() then
            function love.gamepadpressed(joystick, button)
                if button == "start" then
                    GameState.load(joystick)
                    current_state = GameState 
                end
            end
        end
    end
end

Menu.draw = function()
    love.graphics.clear()
    love.graphics.print("Project Armlet", 400, 200)
    love.graphics.print("Press UP to configure gamepad", 400, 300)
    love.graphics.print("Press START or ENTER to play", 400, 400)
end

return Menu