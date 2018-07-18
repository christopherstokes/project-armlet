local Game = {}

Game.load = function(joystick)
    player = Player:new(400, 300, 10, {0, 255, 0}, 6, joystick)
    creep = Creep:new("BasicCreep", 1, 200, 200, 5, {255,0,0})
    spawner = Spawner:new(400, 300, 10, {0,0,255}, 240)
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