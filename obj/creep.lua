local Creep = Entity:extend("Creep")

local level_3 = {
    hp = 4,
    atk = 1,
    range = 1,
    spd = 2
}

local level_2 = {
    hp = 3,
    atk = 1,
    range = 0.5,
    spd = 2
}

local level_1 = {
    hp = 2,
    atk = 0.5,
    range = 0.5,
    spd = 3
}

function Creep:init(x, y, r, col)
    Creep.super.init(self, x, y, r, col)

    for k, v in ipairs(level_3) do
        self[k] = v
    end
end

function Creep:update(dt)
    
end

return Creep