local Entity = class("Entity")

Entity.entities = {}

function Entity:init(x, y, r, col, spd)
	self.x, self.y, self.r, self.col = x or 0, y or 0, r or 10, col or {255, 255, 255}
	self.spd = spd or 1
	table.insert(Entity.entities, self)
end

function Entity:update(dt)
end

function Entity:draw()
	love.graphics.setColor(self.col)
	love.graphics.circle("fill", self.x, self.y, self.r)
end

return Entity
