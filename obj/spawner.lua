local Spawner = Entity:extend("Spawner")

function Spawner:init(x, y, r, col, period)
    Spawner.super:init(x, y, r, col)
    self.period = period or 4
end

function Spawner:update(dt)
    if dt % period == 0 then
        -- insert creep in some way
    end
end

return Spawner