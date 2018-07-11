local Entity = class("Entity")

function Entity:init(x, y, r, col)
  self.x, self.y, self.r, self.col = x, y, r, col
end

function Entity:update(dt)
end

function Entity:draw()
  love.graphics.setColor(self.col)
  love.graphics.circle("fill", self.x, self.y, self.r)
end

return Entity
