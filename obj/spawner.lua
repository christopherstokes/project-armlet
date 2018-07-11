local Spawner = Entity:extend("Spawner")

function Spawner:init(x, y, r, col, period)
    Spawner.super:init(x, y, r, col)
    self.period = period
end

function Spawner:update(dt)
    if dt % period == 0 then
        
    end
end

return Spawner