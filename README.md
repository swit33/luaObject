# luaObject
A small OOP library.

## Usage

1. Create a new class:

```lua
local Class = require("luaObject.Class")
local MyClass = Class:extend()
```

2. Create a constructor:

```lua
function MyClass:_init(params)
    Class._init(self, params)
    self.name = params.name
    return self
end
```

3. Create a method:

```lua
function MyClass:sayHello()
    print("Hello, " .. self.name)
end
```

4. Extend a class:

```lua
local MySubClass = MyClass:extend()
-- Reuse the constructor from the parent class
function MySubClass:_init(params)
    MyClass._init(self, params)
    self.age = params.age
    return self
end
```

5. Create an instance:

```lua
local mySubClass = MySubClass:new("MySubClass")
```


6. Call the parent method:

```lua
function MySubClass:sayHello()
    print("Hello, " .. self.name .. " from MySubClass")
end
```

This library was made with emmyLua annotation in mind.
Refer to the example.lua file for more information.

If your IDE supports VScode style snippets, you can use the snippet in snippet.json.
