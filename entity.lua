local Entity = {}

function Entity:init(x, y, r, col)
  self.x = x
  self.y = y
  self.r = r
  self.col = col
  self.clcol = {0, 0, 0}
end

function Entity:update(dt)
  self.r = self.r + dt*128
  if self.r > love.graphics.getWidth()/2 then
    local r = math.random(100,255)
    local g = math.random(1,255)
    local b = math.random(1,255)

    self.clcol = self.col
    self.col = {}
    table.insert(self.col, r)
    table.insert(self.col, g)
    table.insert(self.col, b)
    self.r = 1
  end
end

function Entity:draw()
  love.graphics.setColor(self.col)
  love.graphics.circle("fill", self.x, self.y, self.r)
end

return Entity
