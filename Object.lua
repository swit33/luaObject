--- @class Object
--- @field extend fun(self: Object): Object
local Object = {}
Object.__index = Object

--- Creates a new subclass, inheriting methods and fields from the parent
--- @param self Object The parent class
--- @return Object The new subclass
function Object:extend()
	local subtype = {}
	subtype.__index = subtype
	return setmetatable(subtype, { __index = self })
end

--- Constructor with initialization logic
--- @generic T
--- @param self T
--- @param ... any
--- @return T
function Object:new(...)
	return setmetatable({}, self)
end

return Object
