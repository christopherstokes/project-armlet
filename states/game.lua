local Game = {}

Game.load = function()
    local player = Player:new(400, 300, 10, {255, 0, 0}, 3)
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