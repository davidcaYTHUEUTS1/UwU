local OrionLib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/1st-Mars/Misc/main/O")))()
local Window =
    OrionLib:MakeWindow(
    {
        Name = "Edward Newgate Hub",
        HidePremium = false,
        IntroText = "EdwardNewgateHub Library",
        SaveConfig = true,
        ConfigFolder = "Edward Newgate Hub"
    }
)

local M =
    Window:MakeTab(
    {
        Name = " Main",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    }
)


   M:AddToggle({
        Name = "nhặt linh hồn",
        Default = false,
        Flag = "FarmAzure",
        Save = true,
        Callback = function(Value)
            _G.Auto = Value
        end
    })

    function _TP(Pos)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,Pos.Y,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
        Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if game.Players.LocalPlayer.Character.Humanoid.Sit == true then game.Players.LocalPlayer.Character.Humanoid.Sit = false end
        pcall(function() _TP = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/310, Enum.EasingStyle.Linear),{CFrame = Pos}) end)
        _TP:Play()
        if C_TP then
            _TP:Cancel()
        end
    end
    function TpKitsune()
        repeat
            wait()
        until game.Workspace._WorldOrigin.Locations:FindFirstChild('Kitsune Island')
        if game.Workspace._WorldOrigin.Locations:FindFirstChild('Kitsune Island') then
            _TP(game.Workspace._WorldOrigin.Locations["Kitsune Island"])
        end
    end

    M:AddButton(
        {
            Name = "Tele đến đảo",
            Callback = function()
                TpKitsune()
            end
        }
    )
local ScreenGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")
ScreenGui.Name = ""
ScreenGui.Parent = game.CoreGui or game.Players.LocalPlayer.PlayerGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ImageButton.Parent = ScreenGui
ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
ImageButton.Size = UDim2.new(0, 50, 0, 50)
ImageButton.Draggable = true
ImageButton.Image = "https://www.roblox.com/asset/?id=15446676864"
UICorner.Parent = ImageButton
ImageButton.MouseButton1Down:connect(function()
       game:GetService("VirtualInputManager"):SendKeyEvent(true,305,false,game)
       game:GetService("VirtualInputManager"):SendKeyEvent(false,305,false,game)
end)

spawn(function()
  while wait() do
    if _G.Auto then
for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
 if v.Name == "Azure" then
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame 
 end
end
end
  end
end)
