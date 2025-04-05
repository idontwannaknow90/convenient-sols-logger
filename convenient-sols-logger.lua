local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Sol's RNG Logger",
   Icon = 0, 
   LoadingTitle = "Sol's RNG Logger",
   LoadingSubtitle = "by (CANT TELL)",
   Theme = "Default", 

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, 

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil,
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false, 
      Invite = "noinvitelink", 
      RememberJoins = true 
   },

   KeySystem = true, 
   KeySettings = {
      Title = "Whitelist Key",
      Subtitle = "Input the Whitelist Key",
      Note = "This Script is for Friends Only, No Randoms, DM the Owner",
      FileName = "Key", 
      SaveKey = true, 
      GrabKeyFromSite = false,
      Key = {"rnglog888"}
   }
})

local Tab = Window:CreateTab("Logger", 4483362458) 
local Section = Tab:CreateSection("Activation")

local Toggle = Tab:CreateToggle({
   Name = "Aura Logger",
   CurrentValue = false,
   Flag = "logger1",
   Callback = function(Value)
   -- The function that takes place when the toggle is pressed
   -- The variable (Value) is a boolean on whether the toggle is true or false
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Biome Logger",
   CurrentValue = false,
   Flag = "logger2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   -- The function that takes place when the toggle is pressed
   -- The variable (Value) is a boolean on whether the toggle is true or false
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Merchant Logger",
   CurrentValue = false,
   Flag = "logger3", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   -- The function that takes place when the toggle is pressed
   -- The variable (Value) is a boolean on whether the toggle is true or false
   end,
})

local Section = Tab:CreateSection("Webhook URLS (Auras)")

local Input = Tab:CreateInput({
   Name = "100K Auras",
   CurrentValue = "",
   PlaceholderText = "Input Placeholder",
   RemoveTextAfterFocusLost = false,
   Flag = "Input100k",
   Callback = function(Text)
   -- The function that takes place when the input is changed
   -- The variable (Text) is a string for the value in the text box
   end,
})

local Input = Tab:CreateInput({
   Name = "1M Auras",
   CurrentValue = "",
   PlaceholderText = "Input Placeholder",
   RemoveTextAfterFocusLost = false,
   Flag = "Input1M",
   Callback = function(Text)
   -- The function that takes place when the input is changed
   -- The variable (Text) is a string for the value in the text box
   end,
})

local Input = Tab:CreateInput({
   Name = "10M Auras",
   CurrentValue = "",
   PlaceholderText = "Input Placeholder",
   RemoveTextAfterFocusLost = false,
   Flag = "Input10M",
   Callback = function(Text)
   -- The function that takes place when the input is changed
   -- The variable (Text) is a string for the value in the text box
   end,
})

local Input = Tab:CreateInput({
   Name = "100M Auras",
   CurrentValue = "",
   PlaceholderText = "Input Placeholder",
   RemoveTextAfterFocusLost = false,
   Flag = "Input100M",
   Callback = function(Text)
   -- The function that takes place when the input is changed
   -- The variable (Text) is a string for the value in the text box
   end,
})

local Input = Tab:CreateInput({
   Name = "1B Auras",
   CurrentValue = "",
   PlaceholderText = "Input Placeholder",
   RemoveTextAfterFocusLost = false,
   Flag = "Input1B",
   Callback = function(Text)
   -- The function that takes place when the input is changed
   -- The variable (Text) is a string for the value in the text box
   end,
})

local Section = Tab:CreateSection("Webhook URLS (Biome)")

local Input = Tab:CreateInput({
   Name = "Normal Biomes",
   CurrentValue = "",
   PlaceholderText = "Input Placeholder",
   RemoveTextAfterFocusLost = false,
   Flag = "normalbioinput",
   Callback = function(Text)
   -- The function that takes place when the input is changed
   -- The variable (Text) is a string for the value in the text box
   end,
})

local Input = Tab:CreateInput({
   Name = "Rare Biomes",
   CurrentValue = "rarebioinput",
   PlaceholderText = "Input Placeholder",
   RemoveTextAfterFocusLost = false,
   Flag = "Input1",
   Callback = function(Text)
   -- The function that takes place when the input is changed
   -- The variable (Text) is a string for the value in the text box
   end,
})

local Section = Tab:CreateSection("Webhook URLS (Limited)")

local Input = Tab:CreateInput({
   Name = "Limited Auras",
   CurrentValue = "auralimitedinput",
   PlaceholderText = "Input Placeholder",
   RemoveTextAfterFocusLost = false,
   Flag = "Input1",
   Callback = function(Text)
   -- The function that takes place when the input is changed
   -- The variable (Text) is a string for the value in the text box
   end,
})

local Input = Tab:CreateInput({
   Name = "Limited Biomes",
   CurrentValue = "biomelimitedinput",
   PlaceholderText = "Input Placeholder",
   RemoveTextAfterFocusLost = false,
   Flag = "Input1",
   Callback = function(Text)
   -- The function that takes place when the input is changed
   -- The variable (Text) is a string for the value in the text box
   end,
})

local Tab = Window:CreateTab("Detection", 4483362458)

local Section = Tab:CreateSection("Auras")

local Toggle = Tab:CreateToggle({
   Name = "Exotic",
   CurrentValue = false,
   Flag = "exodetection", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Diaboli : Void",
   CurrentValue = false,
   Flag = "diabolidetection", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Undead : Devil",
   CurrentValue = false,
   Flag = "devildetection", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Comet",
   CurrentValue = false,
   Flag = "cometdetection", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Jade",
   CurrentValue = false,
   Flag = "jadedetection", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Spectre",
   CurrentValue = false,
   Flag = "spectredetection", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Jazz",
   CurrentValue = false,
   Flag = "jazzdetection", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Bounded",
   CurrentValue = false,
   Flag = "boundeddetection", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Celestial",
   CurrentValue = false,
   Flag = "celestialdetection", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Kyawthuite",
   CurrentValue = false,
   Flag = "kyawthuitedetection", 
   Callback = function(Value)
   
   
   end,
})

local Divider = Tab:CreateDivider()

local Toggle = Tab:CreateToggle({
   Name = "Arcane",
   CurrentValue = false,
   Flag = "arcanedetection", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Magnetic : Reverse Polarity",
   CurrentValue = false,
   Flag = "polaritydetection", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Undefined",
   CurrentValue = false,
   Flag = "undefineddetection", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Rage : Brawler",
   CurrentValue = false,
   Flag = "brawlerdetection", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Astral",
   CurrentValue = false,
   Flag = "astraldetection", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Cosmos",
   CurrentValue = false,
   Flag = "cosmosdetection", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Gravitational",
   CurrentValue = false,
   Flag = "gravitationaldetection", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Bounded : Unbound",
   CurrentValue = false,
   Flag = "unbounddetection", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Virtual",
   CurrentValue = false,
   Flag = "virtualdetection", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Savior",
   CurrentValue = false,
   Flag = "saviordetection", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Aquatic : Flame",
   CurrentValue = false,
   Flag = "flamedetection", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Poseidon",
   CurrentValue = false,
   Flag = "poseidondetection", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Zeus",
   CurrentValue = false,
   Flag = "zeusdetection", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Solar : Solstice",
   CurrentValue = false,
   Flag = "solsticedetection", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Lunar : Full Moon",
   CurrentValue = false,
   Flag = "fmdetection", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Galaxy",
   CurrentValue = false,
   Flag = "galaxydetection", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Twilight",
   CurrentValue = false,
   Flag = "twilightdetection", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Origin",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Hades",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Celestial : Divine",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Hypervolt",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Velocity",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Nihility",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Helios",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Divider = Tab:CreateDivider()

local Toggle = Tab:CreateToggle({
   Name = "Starscourge",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Sailor",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Sirius",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Arcane : Legacy",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Chromatic",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Aviator",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Arcane : Dark",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Ethereal",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Overseer",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Exotic : Apex",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Matrix",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Twilight : Iridescent Memory",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Sailor : Flying Dutchman",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Divider = Tab:CreateDivider()

local Toggle = Tab:CreateToggle({
   Name = "Chromatic : Genesis",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Starscourge : Radiant",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Overture",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Symphony",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Impeached",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Archangel",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Bloodlust",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Overture : History",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Atlas",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Abyssal Hunter",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Gargantua",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Apostolos",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Ruins",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Matrix : Overdrive",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Matrix : Reality",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Sovereign",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Ruins : Withered",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Aegis",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Divider = Tab:CreateDivider()

local Toggle = Tab:CreateToggle({
   Name = "Pixelation",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Luminosity",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Section = Tab:CreateSection("Biomes")

local Toggle = Tab:CreateToggle({
   Name = "Windy Weather",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Snowy Weather",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Rainy Weather",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Divider = Tab:CreateDivider()

local Toggle = Tab:CreateToggle({
   Name = "Sandstorm Biome",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Hell Biome",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Starfall Biome",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Corruption Biome",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Null Biome",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Divider = Tab:CreateDivider()

local Toggle = Tab:CreateToggle({
   Name = "Dreamscape Biome",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Glitched Biome",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Section = Tab:CreateSection("Limited Auras")

local Toggle = Tab:CreateToggle({
   Name = "Flushed : Troll",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Origin : Onion",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Glock : The Glock of the Sky",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
   
   
   end,
})

local Section = Tab:CreateSection("Limited Biomes")

local Paragraph = Tab:CreateParagraph({Title = "Limited Biomes", Content = "There are NO Limited Biomes as of the 2025 April Fools Event."})
