local Menu = {}

Menu.update = function(dt)
    if love.keyboard.isDown("up") then current_state = ConfGPadState end
    if love.keyboard.isDown("down") then current_state = GameState end
end

Menu.draw = function()
    love.graphics.clear()
    love.graphics.print("Project Armlet", 400, 200)
    love.graphics.print("Press UP to configure gamepad", 400, 300)
    love.graphics.print("Press DOWN to play", 400, 400)
end

return Menu