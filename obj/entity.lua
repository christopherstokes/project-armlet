local Entity = class("Entity")

Entity.entities = {}

function Entity:init(x, y, r, col, spd)
	self.x, self.y, self.r, self.col = x or 0, y or 0, r or 10, col or {255, 255, 255}
	self.spd = spd or 1
	self.hp, self.range, self.atk = 0, 0, 0
	self.debug = ""
	table.insert(Entity.entities, self)
end

function Entity:update(dt)
end

function Entity:draw()
	love.graphics.setColor(self.col)
	love.graphics.circle("fill", self.x, self.y, self.r)

	
	
	-- status message for debugging
	local status_message = ""
	for k,v in pairs(self) do
		if type(v) ~= "table" and type(v) ~= "function" and type(v) ~= "userdata" then
			status_message = status_message.."| "..k..": "..v.." |"
		end
		-- status_message = (status_message..k..": "..v.." || ")
	end
	local status_font = love.graphics.getFont()
	local status_width = status_font:getWidth(status_message)
	
	love.graphics.print(status_message, self.x - (status_width/2), self.y + 20)

end

return Entity
