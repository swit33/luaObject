--- @class Object
--- @field extend fun(self: Object): Object
--- @field _init fun(self: Object, ...): nil
local Object = {}
Object.__index = Object

--- @param self Object
--- @return Object The
function Object:extend()
	local subtype = {}
	subtype.__index = subtype
	return setmetatable(subtype, { __index = self })
end

--- @param self Object
--- @param ... any
function Object:_init(...) end

--- @generic T
--- @param self T
--- @param ... any
--- @return T
function Object:new(...)
	local instance = setmetatable({}, self)
	instance:_init(...)
	return instance
end

return Object
