local Class = require("luaObject.Class")

--- @class MyClass : Class
--- @field new fun(self: MyClass, name:string): MyClass
--- @field sayHello fun(self: MyClass)
--- @field name string
local MyClass = Class:extend()

function MyClass:new(name)
	Class.new(self)
	self.name = name
	return self
end

function MyClass:sayHello()
	print("Hello, " .. self.name)
end

--- @class MySubClass : MyClass
--- @field new fun(self: MySubClass, name:string, age:number): MySubClass
--- @field sayHello fun(self: MySubClass)
--- @field age number
local MySubClass = MyClass:extend()

function MySubClass:new(name, age)
	MyClass.new(self, name)
	self.age = age
	return self
end

function MySubClass:sayHello()
	print("Hello, " .. self.name .. " from MySubClass")
end

local myClass = MyClass:new("MyClass")
myClass:sayHello()

local mySubClass = MySubClass:new("MySubClass")
mySubClass:sayHello()
