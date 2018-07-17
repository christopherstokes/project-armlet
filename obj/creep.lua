local Creep = Entity:extend("Creep")

Creep.creeps = {}

local CreepMixins = {
    BasicCreep = {
        {
            hp = 2,
            atk = 0.5,
            range = 0.5,
            spd = 3
        },
        {
            hp = 3,
            atk = 1,
            range = 0.5,
            spd = 2
        },
        {
            hp = 4,
            atk = 1,
            range = 1,
            spd = 2
        }
    }
}

function Creep:init(type, level, x, y, r, col)
    Creep.super.init(self, x, y, r, col)

    Creep.super:with(CreepMixins[type][level])

    -- for k,v in ipairs(CreepMixins[type][level]) do
    --     self[k] = v
    -- end

    table.insert(Creep.creeps, self) 
end

function Creep:update(dt)
    if player.x > self.x then self.x = self.x + self.spd end
    if player.x < self.x then self.x = self.x - self.spd end
    if player.y > self.y then self.y = self.y + self.spd end
    if player.y < self.y then self.y = self.y - self.spd end
end

return Creep