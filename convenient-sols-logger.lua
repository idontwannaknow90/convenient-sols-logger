local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

local Window = WindUI:CreateWindow({
    Title = "BSS Modded : Rebirths",
    Icon = "flower",
    Author = "by Onett (source: trust me bro)",
    Folder = "BSSMR",
    
    Size = UDim2.fromOffset(580, 460),
    MinSize = Vector2.new(560, 350),
    MaxSize = Vector2.new(850, 560),
    Transparent = true,
    Theme = "Dark",
    Resizable = true,
    SideBarWidth = 200,
    BackgroundImageTransparency = 0.42,
    HideSearchBar = true,
    ScrollBarEnabled = false,
    
    User = {
        Enabled = true,
        Anonymous = false,
        Callback = function()
            print("clicked")
        end,
    },
})

Window:Tag({
    Title = "v0.1 BETA",
    Icon = "github",
    Color = Color3.fromHex("#30ff6a"),
    Radius = 0, -- from 0 to 13
})

local Section = Window:Section({
    Title = "Farming",
    Icon = "hammer",
    Opened = true,
})

local Tab = Window:Tab({
    Title = "Field",
    Icon = "flower-2", 
    Locked = false,
})

local Section = Tab:Section({ 
    Title = "Field Selection",
})

local Dropdown = Tab:Dropdown({
    Title = "Field",
    Desc = "What field to farm.",
    Values = { "Category A", "Category B", "Category C" },
    Value = "Category A",
    Callback = function(option) 
        print("Category selected: " .. option) 
    end
})

local Toggle = Tab:Toggle({
    Title = "Farm Field",
    Desc = "Farms the selected field.",
    Icon = "backpack",
    Type = "Toggle",
    Value = false, -- default value
    Callback = function(state) 
        print("Farm." .. tostring(state))
    end
})

local Section = Tab:Section({ 
    Title = "Farm Settings",
})

local Toggle = Tab:Toggle({
    Title = "Auto Tool",
    Desc = "Automatically swings your tool.",
    Icon = "shovel",
    Type = "Toggle",
    Value = false, -- default value
    Callback = function(state) 
        print("Toggle Activated" .. tostring(state))
    end
})

local Toggle = Tab:Toggle({
    Title = "Auto Sprinkler",
    Desc = "Auto places sprinklers in a field.",
    Icon = "droplet",
    Type = "Toggle",
    Value = false, -- default value
    Callback = function(state) 
        print("Toggle Activated" .. tostring(state))
    end
})

local Toggle = Tab:Toggle({
    Title = "Auto Convert",
    Desc = "Converts for you.",
    Icon = "badge-dollar-sign",
    Type = "Toggle",
    Value = false, -- default value
    Callback = function(state) 
        print("Toggle Activated" .. tostring(state))
    end
})

local Section = Tab:Section({ 
    Title = "Farm Passives",
})

local Toggle = Tab:Toggle({
    Title = "Auto Pop Star",
    Desc = "Pops bubbles to fill up bubble bloat and pop star stack.",
    Icon = "star",
    Type = "Toggle",
    Value = false, -- default value
    Callback = function(state) 
        print("Toggle Activated" .. tostring(state))
    end
})

local Toggle = Tab:Toggle({
    Title = "Auto Scorching Star",
    Desc = "Stands near flames to fill up scorching star stack.",
    Icon = "star",
    Type = "Toggle",
    Value = false, -- default value
    Callback = function(state) 
        print("Toggle Activated" .. tostring(state))
    end
})

local Toggle = Tab:Toggle({
    Title = "Auto Gummy Star",
    Desc = "Farms goo to fill up gummy star, also collects honey tokens and gumdrops.",
    Icon = "star",
    Type = "Toggle",
    Value = false, -- default value
    Callback = function(state) 
        print("Toggle Activated" .. tostring(state))
    end
})

Tab:Divider()

local Toggle = Tab:Toggle({
    Title = "Auto Star Shower",
    Desc = "Farms star shower for good inspire.",
    Icon = "star",
    Type = "Toggle",
    Value = false, -- default value
    Callback = function(state) 
        print("Toggle Activated" .. tostring(state))
    end
})

Tab:Divider()

local Toggle = Tab:Toggle({
    Title = "Auto Guiding Star",
    Desc = "Farms on a field with guiding star, can whitelist fields.",
    Icon = "star",
    Type = "Toggle",
    Value = false, -- default value
    Callback = function(state) 
        print("Toggle Activated" .. tostring(state))
    end
})

local Dropdown = Tab:Dropdown({
    Title = "Guiding Star Whitelist",
    Desc = "Fields allowed to be farmed in for Guiding Star",
    Values = { "Category A", "Category B", "Category C" },
    Value = { "Category A" },
    Multi = true,
    AllowNone = true,
    Callback = function(option) 
        -- option is a table: { "Category A", "Category B" }
        print("Categories selected: " .. game:GetService("HttpService"):JSONEncode(option)) 
    end
})

Tab:Divider()

local Toggle = Tab:Toggle({
    Title = "Maintain Gummy Morph",
    Desc = "Times gumdrop usage properly for unlimited gummy morph and conversion (You need to be gumdrop rich if you wanna maintain this while macroing.)",
    Icon = "citrus",
    Type = "Toggle",
    Value = false, -- default value
    Callback = function(state) 
        print("Toggle Activated" .. tostring(state))
    end
})

Tab:Divider()

local Slider = Tab:Slider({
    Title = "Max Combo Coconut",
    Desc = "Maximum amount of times Combo Coconut can be catched before stopping.",
    
    Step = 1,
    Value = {
        Min = 1,
        Max = 500,
        Default = 50,
    },
    Callback = function(value)
        print(value)
    end
})

local Toggle = Tab:Toggle({
    Title = "Catch Combo Coconuts",
    Desc = "Automatically catches Combo Coconuts for Coco Combo Buff, best used in Private Servers.",
    Icon = "vegan",
    Type = "Toggle",
    Value = false, -- default value
    Callback = function(state) 
        print("Toggle Activated" .. tostring(state))
    end
})

local Tab = Window:Tab({
    Title = "Planter",
    Icon = "amphora", 
    Locked = false,
})

local Tab = Window:Tab({
    Title = "Puffshroom",
    Icon = "pill-bottle", 
    Locked = false,
})

