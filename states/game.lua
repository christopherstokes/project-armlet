local Game = {}

Game.load = function(joystick)
    local player = Player:new(400, 300, 10, {255, 0, 0}, 3, joystick)
    local creep = Creep:new(200, 200, 5, {0,255,0})
    local spawner = Spawner:new(200, 300, 20, {0,0,255})
end

Game.update = function(dt)
    for e=#Entity.entities, 1, -1 do
        Entity.entities[e]:update(dt)
    end
end

Game.draw = function()
    for e=1, #Entity.entities do
        Entity.entities[e]:draw()
    end
end

return Game