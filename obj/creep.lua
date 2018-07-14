local Creep = Entity:extend("Creep")

local BasicCreep = {
    level_3 = {
        hp = 4,
        atk = 1,
        range = 1,
        spd = 2
    },
    level_2 = {
        hp = 3,
        atk = 1,
        range = 0.5,
        spd = 2
    },
    level_1 = {
        hp = 2,
        atk = 0.5,
        range = 0.5,
        spd = 3
    }
}

function Creep:init(x, y, r, col)
    Creep.super.init(self, x, y, r, col)

    for k, v in ipairs(BasicCreep.level_3) do
        self[k] = v
    end
end

function Creep:update(dt)
    if player.x > self.x then self.x = self.x + self.spd end
    if player.x < self.x then self.x = self.x - self.spd end
    if player.y > self.y then self.y = self.y + self.spd end
    if player.y < self.y then self.y = self.y - self.spd end
end

return Creep