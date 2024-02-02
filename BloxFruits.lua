local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Rubik Hub - Blox Fruits",
    SubTitle = "by SewB",
    TabWidth = 160,
    Size = UDim2.fromOffset(595, 375),
    Acrylic = true,
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.LeftControl
})

local Tabs = {
    TabShop = Window:AddTab({ Title = "Tab Shop", Icon = "" }),
    TabFarm = Window:AddTab({ Title = "Tab Farm", Icon = "" }),
    TabMisc = Window:AddTab({ Title = "Tab Misc", Icon = "" }),
    TabTeleport = Window:AddTab({ Title = "Tab Teleport", Icon + "" }),
}

local Options = Fluent.Options

Tabs.TabShop:AddButton({
    Title = "Redeem Code"
})

Tabs.TabShop:AddParagraph({
    Title = "Fighting Shop",
    Content = "Melee Shop"
})

Tabs.TabShop:AddButton({
    Title = "Black Leg",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
    end
})


Tabs.TabShop:AddButton({
    Title = "Fishman Karate",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
    end
})

Tabs.TabShop:AddButton({
    Title = "Electro",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
    end
})

Tabs.TabShop:AddButton({
    Title = "Dragon Breath",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
    end
})

Tabs.TabShop:AddButton({
    Title = "SuperHuman",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperHuman")
    end
})

Tabs.TabShop:AddButton({
    Title = "Death Step",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
    end
})

Tabs.TabShop:AddButton({
    Title = "Sharkman Karate",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
    end
})

Tabs.TabShop:AddButton({
    Title = "Electric Claw",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
    end
})

Tabs.TabShop:AddButton({
    Title = "Dragon Talon",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
    end
})

Tabs.TabShop:AddButton({
    Title = "God Human",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
    end
})

Tabs.TabShop:AddButton({
    Title = "Sanguine Art",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt")
    end
})

Tabs.TabShop:AddParagraph({
    Title = "Abilities Shop",
    Content = "Abilities Shop"
})

Tabs.TabShop:AddButton({
    Title = "Sky Jump [ $10.000 Beli ]",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
    end
})

Tabs.TabShop:AddButton({
    Title = "Buso Haki [ $25.000 Beli ]",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
    end
})

Tabs.TabShop:AddButton({
    Title = "Observation Haki [ $750.000 Beli ]",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
    end
})

Tabs.TabShop:AddButton({
    Title = "Soru [ $100.000 Beli]",
    Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
    end
})

Tab.TabTeleport:AddParagraph({
    Title = "Teleport World",
    Content = "Teleport World"
})

Tabs.TabTeleport:AddButton({
    Title = "Old World",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
    end
})

Tabs.TabTeleport:AddButton({
    Title = "New World",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
    end
})

Tabs.TabTeleport:AddButton({
    Title = "Third World",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
    end
})

local TradeBone = Tabs.TabMisc:AddToggle("TradeBone", {Title = "Trade Bone", Default = false})
   TradeBone:OnChanged(function(value)
        _G.RandomBoneFunction = value
    end)

   Options.TradeBone:SetValue(false)

   spawn(function()
    pcall(function()
        while wait(0.75) do
            if _G.RandomBoneFunction then    
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
            end
        end
    end)
end)
