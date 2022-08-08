local ChiccMadd = Instance.new("ScreenGui")
local Container = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Top = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local Bottom = Instance.new("TextLabel")
local UICorner_3 = Instance.new("UICorner")
local TextLabel_2 = Instance.new("TextLabel")
local Back = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local Items = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local JumpPower_Enabled = Instance.new("Frame")
local TextLabel_3 = Instance.new("TextLabel")
local ImageButton = Instance.new("ImageButton")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local JumpPower_Title = Instance.new("Frame")
local TextLabel_4 = Instance.new("TextLabel")
local JumpPower_Toggle = Instance.new("Frame")
local TextLabel_5 = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local UICorner_4 = Instance.new("UICorner")
local JumpPower_Set = Instance.new("Frame")
local TextLabel_6 = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
local UICorner_5 = Instance.new("UICorner")
local Stamina_Title = Instance.new("Frame")
local TextLabel_7 = Instance.new("TextLabel")
local Stamina_Set = Instance.new("Frame")
local TextLabel_8 = Instance.new("TextLabel")
local TextBox_2 = Instance.new("TextBox")
local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
local UICorner_6 = Instance.new("UICorner")
local Stamina_Toggle = Instance.new("Frame")
local TextLabel_9 = Instance.new("TextLabel")
local TextButton_2 = Instance.new("TextButton")
local UIAspectRatioConstraint_5 = Instance.new("UIAspectRatioConstraint")
local UICorner_7 = Instance.new("UICorner")
local Stamina_Enabled = Instance.new("Frame")
local TextLabel_10 = Instance.new("TextLabel")
local ImageButton_2 = Instance.new("ImageButton")
local UIAspectRatioConstraint_6 = Instance.new("UIAspectRatioConstraint")
local Jam_Title = Instance.new("Frame")
local TextLabel_11 = Instance.new("TextLabel")
local Jam_Toggle = Instance.new("Frame")
local TextLabel_12 = Instance.new("TextLabel")
local TextButton_3 = Instance.new("TextButton")
local UIAspectRatioConstraint_7 = Instance.new("UIAspectRatioConstraint")
local UICorner_8 = Instance.new("UICorner")
local UI_Title = Instance.new("Frame")
local TextLabel_13 = Instance.new("TextLabel")
local UI_Toggle = Instance.new("Frame")
local TextLabel_14 = Instance.new("TextLabel")
local TextButton_4 = Instance.new("TextButton")
local UIAspectRatioConstraint_8 = Instance.new("UIAspectRatioConstraint")
local UICorner_9 = Instance.new("UICorner")
local Follow_Toggle = Instance.new("Frame")
local TextLabel_15 = Instance.new("TextLabel")
local TextButton_5 = Instance.new("TextButton")
local UIAspectRatioConstraint_9 = Instance.new("UIAspectRatioConstraint")
local UICorner_10 = Instance.new("UICorner")
local Follow_Title = Instance.new("Frame")
local TextLabel_16 = Instance.new("TextLabel")

--Properties:

ChiccMadd.Name = "ChiccMadd"
ChiccMadd.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ChiccMadd.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Container.Name = "Container"
Container.Parent = ChiccMadd
Container.AnchorPoint = Vector2.new(0.5, 0.5)
Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Container.BackgroundTransparency = 1.000
Container.Position = UDim2.new(0, 350, 0.5, 0)
Container.Size = UDim2.new(0, 350, 0, 400)

UICorner.CornerRadius = UDim.new(0, 30)
UICorner.Parent = Container

Top.Name = "Top"
Top.Parent = Container
Top.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
Top.BorderSizePixel = 0
Top.Size = UDim2.new(1, 0, 0, 60)
Top.Font = Enum.Font.SourceSans
Top.Text = ""
Top.TextColor3 = Color3.fromRGB(0, 0, 0)
Top.TextSize = 14.000

UICorner_2.CornerRadius = UDim.new(1, 0)
UICorner_2.Parent = Top

TextLabel.Parent = Top
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Size = UDim2.new(1, 0, 0.5, 0)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "OFL Script Bundle"
TextLabel.TextColor3 = Color3.fromRGB(158, 158, 158)
TextLabel.TextSize = 22.000

Bottom.Name = "Bottom"
Bottom.Parent = Container
Bottom.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
Bottom.BorderSizePixel = 0
Bottom.Position = UDim2.new(0, 0, 1, -60)
Bottom.Size = UDim2.new(1, 0, 0, 60)
Bottom.Font = Enum.Font.SourceSans
Bottom.Text = ""
Bottom.TextColor3 = Color3.fromRGB(0, 0, 0)
Bottom.TextSize = 14.000

UICorner_3.CornerRadius = UDim.new(1, 0)
UICorner_3.Parent = Bottom

TextLabel_2.Parent = Bottom
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0, 0, 0.5, 0)
TextLabel_2.Size = UDim2.new(1, 0, 0.5, 0)
TextLabel_2.Font = Enum.Font.SourceSansBold
TextLabel_2.Text = "Made by ChiccMadd"
TextLabel_2.TextColor3 = Color3.fromRGB(158, 158, 158)
TextLabel_2.TextSize = 22.000

Back.Name = "Back"
Back.Parent = Container
Back.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Back.BorderSizePixel = 0
Back.Position = UDim2.new(0, 0, 0, 30)
Back.Size = UDim2.new(1, 0, 1, -60)

UIGradient.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0.00, Color3.fromRGB(24, 24, 24)),
	ColorSequenceKeypoint.new(1.00, Color3.fromRGB(34, 34, 34)),
})
UIGradient.Rotation = 90
UIGradient.Parent = Back

Items.Name = "Items"
Items.Parent = Back
Items.Active = true
Items.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Items.BackgroundTransparency = 1.000
Items.BorderSizePixel = 0
Items.Position = UDim2.new(0, 0, 0.0199999996, 0)
Items.Size = UDim2.new(1, 0, 0.959999979, 0)
Items.CanvasSize = UDim2.new(0, 0, 0, 625)
Items.ScrollBarThickness = 6

UIListLayout.Parent = Items
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 5)

JumpPower_Enabled.Name = "JumpPower_Enabled"
JumpPower_Enabled.Parent = Items
JumpPower_Enabled.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
JumpPower_Enabled.BackgroundTransparency = 1.000
JumpPower_Enabled.LayoutOrder = 2
JumpPower_Enabled.Size = UDim2.new(0.899999976, 0, 0, 40)

TextLabel_3.Parent = JumpPower_Enabled
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Size = UDim2.new(0.75, 0, 1, 0)
TextLabel_3.Font = Enum.Font.Highway
TextLabel_3.Text = "Enabled:"
TextLabel_3.TextColor3 = Color3.fromRGB(154, 154, 154)
TextLabel_3.TextSize = 21.000
TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left

ImageButton.Parent = JumpPower_Enabled
ImageButton.AnchorPoint = Vector2.new(0.5, 0.5)
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BackgroundTransparency = 1.000
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.875, 0, 0.5, 0)
ImageButton.Size = UDim2.new(0.25, 0, 0.75, 0)
ImageButton.Image = "rbxassetid://10506293716"

UIAspectRatioConstraint.Parent = ImageButton

JumpPower_Title.Name = "JumpPower_Title"
JumpPower_Title.Parent = Items
JumpPower_Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
JumpPower_Title.BackgroundTransparency = 1.000
JumpPower_Title.LayoutOrder = 1
JumpPower_Title.Size = UDim2.new(0.899999976, 0, 0, 40)

TextLabel_4.Parent = JumpPower_Title
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Size = UDim2.new(1, 0, 1, 0)
TextLabel_4.Font = Enum.Font.Highway
TextLabel_4.RichText = true
TextLabel_4.Text = "<b>Jump Power Settings</b>"
TextLabel_4.TextColor3 = Color3.fromRGB(154, 154, 154)
TextLabel_4.TextSize = 19.000

JumpPower_Toggle.Name = "JumpPower_Toggle"
JumpPower_Toggle.Parent = Items
JumpPower_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
JumpPower_Toggle.BackgroundTransparency = 1.000
JumpPower_Toggle.LayoutOrder = 3
JumpPower_Toggle.Size = UDim2.new(0.899999976, 0, 0, 40)

TextLabel_5.Parent = JumpPower_Toggle
TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.BorderSizePixel = 0
TextLabel_5.Size = UDim2.new(0.75, 0, 1, 0)
TextLabel_5.Font = Enum.Font.Highway
TextLabel_5.Text = "Toggle Key:"
TextLabel_5.TextColor3 = Color3.fromRGB(154, 154, 154)
TextLabel_5.TextSize = 21.000
TextLabel_5.TextXAlignment = Enum.TextXAlignment.Left

TextButton.Parent = JumpPower_Toggle
TextButton.AnchorPoint = Vector2.new(0.5, 0.5)
TextButton.BackgroundColor3 = Color3.fromRGB(154, 154, 154)
TextButton.BackgroundTransparency = 0.600
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.875, 0, 0.5, 0)
TextButton.Size = UDim2.new(0.25, 0, 1, 0)
TextButton.RichText = true
TextButton.Text = "<b>T</b>"
TextButton.TextColor3 = Color3.fromRGB(154, 154, 154)
TextButton.TextSize = 19.000
TextButton.TextWrapped = true

UIAspectRatioConstraint_2.Parent = TextButton

UICorner_4.Parent = TextButton

JumpPower_Set.Name = "JumpPower_Set"
JumpPower_Set.Parent = Items
JumpPower_Set.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
JumpPower_Set.BackgroundTransparency = 1.000
JumpPower_Set.LayoutOrder = 4
JumpPower_Set.Size = UDim2.new(0.899999976, 0, 0, 40)

TextLabel_6.Parent = JumpPower_Set
TextLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.BackgroundTransparency = 1.000
TextLabel_6.BorderSizePixel = 0
TextLabel_6.Size = UDim2.new(0.75, 0, 1, 0)
TextLabel_6.Font = Enum.Font.Highway
TextLabel_6.Text = "Set Jump Power:"
TextLabel_6.TextColor3 = Color3.fromRGB(154, 154, 154)
TextLabel_6.TextSize = 21.000
TextLabel_6.TextXAlignment = Enum.TextXAlignment.Left

TextBox.Parent = JumpPower_Set
TextBox.AnchorPoint = Vector2.new(0.5, 0.5)
TextBox.BackgroundColor3 = Color3.fromRGB(154, 154, 154)
TextBox.BackgroundTransparency = 0.600
TextBox.Position = UDim2.new(0.875, 0, 0.5, 0)
TextBox.Size = UDim2.new(0.25, 0, 1, 0)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderColor3 = Color3.fromRGB(107, 107, 107)
TextBox.PlaceholderText = "55"
TextBox.Text = "55"
TextBox.TextColor3 = Color3.fromRGB(154, 154, 154)
TextBox.TextScaled = true
TextBox.TextSize = 19.000
TextBox.TextWrapped = true

UIAspectRatioConstraint_3.Parent = TextBox

UICorner_5.Parent = TextBox

Stamina_Title.Name = "Stamina_Title"
Stamina_Title.Parent = Items
Stamina_Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Stamina_Title.BackgroundTransparency = 1.000
Stamina_Title.LayoutOrder = 5
Stamina_Title.Size = UDim2.new(0.899999976, 0, 0, 40)

TextLabel_7.Parent = Stamina_Title
TextLabel_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.BackgroundTransparency = 1.000
TextLabel_7.BorderSizePixel = 0
TextLabel_7.Size = UDim2.new(1, 0, 1, 0)
TextLabel_7.Font = Enum.Font.Highway
TextLabel_7.RichText = true
TextLabel_7.Text = "<b>Stamina Regen Settings</b>"
TextLabel_7.TextColor3 = Color3.fromRGB(154, 154, 154)
TextLabel_7.TextSize = 19.000

Stamina_Set.Name = "Stamina_Set"
Stamina_Set.Parent = Items
Stamina_Set.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Stamina_Set.BackgroundTransparency = 1.000
Stamina_Set.LayoutOrder = 8
Stamina_Set.Size = UDim2.new(0.899999976, 0, 0, 40)

TextLabel_8.Parent = Stamina_Set
TextLabel_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_8.BackgroundTransparency = 1.000
TextLabel_8.BorderSizePixel = 0
TextLabel_8.Size = UDim2.new(0.75, 0, 1, 0)
TextLabel_8.Font = Enum.Font.Highway
TextLabel_8.Text = "Set Regen Speed:"
TextLabel_8.TextColor3 = Color3.fromRGB(154, 154, 154)
TextLabel_8.TextSize = 21.000
TextLabel_8.TextXAlignment = Enum.TextXAlignment.Left

TextBox_2.Parent = Stamina_Set
TextBox_2.AnchorPoint = Vector2.new(0.5, 0.5)
TextBox_2.BackgroundColor3 = Color3.fromRGB(154, 154, 154)
TextBox_2.BackgroundTransparency = 0.600
TextBox_2.Position = UDim2.new(0.875, 0, 0.5, 0)
TextBox_2.Size = UDim2.new(0.25, 0, 1, 0)
TextBox_2.Font = Enum.Font.SourceSans
TextBox_2.PlaceholderColor3 = Color3.fromRGB(107, 107, 107)
TextBox_2.PlaceholderText = "1"
TextBox_2.Text = "1"
TextBox_2.TextColor3 = Color3.fromRGB(154, 154, 154)
TextBox_2.TextScaled = true
TextBox_2.TextSize = 19.000
TextBox_2.TextWrapped = true

UIAspectRatioConstraint_4.Parent = TextBox_2

UICorner_6.Parent = TextBox_2

Stamina_Toggle.Name = "Stamina_Toggle"
Stamina_Toggle.Parent = Items
Stamina_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Stamina_Toggle.BackgroundTransparency = 1.000
Stamina_Toggle.BorderSizePixel = 0
Stamina_Toggle.LayoutOrder = 7
Stamina_Toggle.Size = UDim2.new(0.899999976, 0, 0, 40)

TextLabel_9.Parent = Stamina_Toggle
TextLabel_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_9.BackgroundTransparency = 1.000
TextLabel_9.BorderSizePixel = 0
TextLabel_9.Size = UDim2.new(0.75, 0, 1, 0)
TextLabel_9.Font = Enum.Font.Highway
TextLabel_9.Text = "Toggle Key:"
TextLabel_9.TextColor3 = Color3.fromRGB(154, 154, 154)
TextLabel_9.TextSize = 21.000
TextLabel_9.TextXAlignment = Enum.TextXAlignment.Left

TextButton_2.Parent = Stamina_Toggle
TextButton_2.AnchorPoint = Vector2.new(0.5, 0.5)
TextButton_2.BackgroundColor3 = Color3.fromRGB(154, 154, 154)
TextButton_2.BackgroundTransparency = 0.600
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0.875, 0, 0.5, 0)
TextButton_2.Size = UDim2.new(0.25, 0, 1, 0)
TextButton_2.RichText = true
TextButton_2.Text = "<b>Y</b>"
TextButton_2.TextColor3 = Color3.fromRGB(154, 154, 154)
TextButton_2.TextSize = 19.000
TextButton_2.TextWrapped = true

UIAspectRatioConstraint_5.Parent = TextButton_2

UICorner_7.Parent = TextButton_2

Stamina_Enabled.Name = "Stamina_Enabled"
Stamina_Enabled.Parent = Items
Stamina_Enabled.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Stamina_Enabled.BackgroundTransparency = 1.000
Stamina_Enabled.LayoutOrder = 6
Stamina_Enabled.Size = UDim2.new(0.899999976, 0, 0, 40)

TextLabel_10.Parent = Stamina_Enabled
TextLabel_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_10.BackgroundTransparency = 1.000
TextLabel_10.BorderSizePixel = 0
TextLabel_10.Size = UDim2.new(0.75, 0, 1, 0)
TextLabel_10.Font = Enum.Font.Highway
TextLabel_10.Text = "Enabled:"
TextLabel_10.TextColor3 = Color3.fromRGB(154, 154, 154)
TextLabel_10.TextSize = 21.000
TextLabel_10.TextXAlignment = Enum.TextXAlignment.Left

ImageButton_2.Parent = Stamina_Enabled
ImageButton_2.AnchorPoint = Vector2.new(0.5, 0.5)
ImageButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton_2.BackgroundTransparency = 1.000
ImageButton_2.BorderSizePixel = 0
ImageButton_2.Position = UDim2.new(0.875, 0, 0.5, 0)
ImageButton_2.Size = UDim2.new(0.25, 0, 0.75, 0)
ImageButton_2.Image = "rbxassetid://10506293716"

UIAspectRatioConstraint_6.Parent = ImageButton_2

Jam_Title.Name = "Jam_Title"
Jam_Title.Parent = Items
Jam_Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Jam_Title.BackgroundTransparency = 1.000
Jam_Title.LayoutOrder = 9
Jam_Title.Size = UDim2.new(0.899999976, 0, 0, 40)

TextLabel_11.Parent = Jam_Title
TextLabel_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_11.BackgroundTransparency = 1.000
TextLabel_11.BorderSizePixel = 0
TextLabel_11.Size = UDim2.new(1, 0, 1, 0)
TextLabel_11.Font = Enum.Font.Highway
TextLabel_11.RichText = true
TextLabel_11.RichText = true
TextLabel_11.Text = "<b>Jam Settings</b>"
TextLabel_11.TextColor3 = Color3.fromRGB(154, 154, 154)
TextLabel_11.TextSize = 19.000

Jam_Toggle.Name = "Jam_Toggle"
Jam_Toggle.Parent = Items
Jam_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Jam_Toggle.BackgroundTransparency = 1.000
Jam_Toggle.LayoutOrder = 10
Jam_Toggle.Size = UDim2.new(0.899999976, 0, 0, 40)

TextLabel_12.Parent = Jam_Toggle
TextLabel_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_12.BackgroundTransparency = 1.000
TextLabel_12.BorderSizePixel = 0
TextLabel_12.Size = UDim2.new(0.75, 0, 1, 0)
TextLabel_12.Font = Enum.Font.Highway
TextLabel_12.Text = "Toggle Key:"
TextLabel_12.TextColor3 = Color3.fromRGB(154, 154, 154)
TextLabel_12.TextSize = 21.000
TextLabel_12.TextXAlignment = Enum.TextXAlignment.Left

TextButton_3.Parent = Jam_Toggle
TextButton_3.AnchorPoint = Vector2.new(0.5, 0.5)
TextButton_3.BackgroundColor3 = Color3.fromRGB(154, 154, 154)
TextButton_3.BackgroundTransparency = 0.600
TextButton_3.BorderSizePixel = 0
TextButton_3.Position = UDim2.new(0.875, 0, 0.5, 0)
TextButton_3.Size = UDim2.new(0.25, 0, 1, 0)
TextButton_3.RichText = true
TextButton_3.Text = "<b>V</b>"
TextButton_3.TextColor3 = Color3.fromRGB(154, 154, 154)
TextButton_3.TextSize = 19.000
TextButton_3.TextWrapped = true

UIAspectRatioConstraint_7.Parent = TextButton_3

UICorner_8.Parent = TextButton_3

UI_Title.Name = "UI_Title"
UI_Title.Parent = Items
UI_Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UI_Title.BackgroundTransparency = 1.000
UI_Title.LayoutOrder = -2
UI_Title.Size = UDim2.new(0.899999976, 0, 0, 40)

TextLabel_13.Parent = UI_Title
TextLabel_13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_13.BackgroundTransparency = 1.000
TextLabel_13.BorderSizePixel = 0
TextLabel_13.Size = UDim2.new(1, 0, 1, 0)
TextLabel_13.Font = Enum.Font.Highway
TextLabel_13.RichText = true
TextLabel_13.Text = "<b>UI Settings</b>"
TextLabel_13.TextColor3 = Color3.fromRGB(154, 154, 154)
TextLabel_13.TextSize = 19.000

UI_Toggle.Name = "UI_Toggle"
UI_Toggle.Parent = Items
UI_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UI_Toggle.BackgroundTransparency = 1.000
UI_Toggle.LayoutOrder = -1
UI_Toggle.Size = UDim2.new(0.899999976, 0, 0, 40)

TextLabel_14.Parent = UI_Toggle
TextLabel_14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_14.BackgroundTransparency = 1.000
TextLabel_14.BorderSizePixel = 0
TextLabel_14.Size = UDim2.new(0.75, 0, 1, 0)
TextLabel_14.Font = Enum.Font.Highway
TextLabel_14.Text = "Toggle Key:"
TextLabel_14.TextColor3 = Color3.fromRGB(154, 154, 154)
TextLabel_14.TextSize = 21.000
TextLabel_14.TextXAlignment = Enum.TextXAlignment.Left

TextButton_4.Parent = UI_Toggle
TextButton_4.AnchorPoint = Vector2.new(0.5, 0.5)
TextButton_4.BackgroundColor3 = Color3.fromRGB(154, 154, 154)
TextButton_4.BackgroundTransparency = 0.600
TextButton_4.BorderSizePixel = 0
TextButton_4.Position = UDim2.new(0.875, 0, 0.5, 0)
TextButton_4.Size = UDim2.new(0.25, 0, 1, 0)
TextButton_4.RichText = true
TextButton_4.Text = "<b>Z</b>"
TextButton_4.TextColor3 = Color3.fromRGB(154, 154, 154)
TextButton_4.TextSize = 19.000
TextButton_4.TextWrapped = true

UIAspectRatioConstraint_8.Parent = TextButton_4

UICorner_9.Parent = TextButton_4

Follow_Toggle.Name = "Follow_Toggle"
Follow_Toggle.Parent = Items
Follow_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Follow_Toggle.BackgroundTransparency = 1.000
Follow_Toggle.LayoutOrder = 12
Follow_Toggle.Size = UDim2.new(0.899999976, 0, 0, 40)

TextLabel_15.Parent = Follow_Toggle
TextLabel_15.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_15.BackgroundTransparency = 1.000
TextLabel_15.BorderSizePixel = 0
TextLabel_15.Size = UDim2.new(0.75, 0, 1, 0)
TextLabel_15.Font = Enum.Font.Highway
TextLabel_15.Text = "Toggle Key:"
TextLabel_15.TextColor3 = Color3.fromRGB(154, 154, 154)
TextLabel_15.TextSize = 21.000
TextLabel_15.TextXAlignment = Enum.TextXAlignment.Left

TextButton_5.Parent = Follow_Toggle
TextButton_5.AnchorPoint = Vector2.new(0.5, 0.5)
TextButton_5.BackgroundColor3 = Color3.fromRGB(154, 154, 154)
TextButton_5.BackgroundTransparency = 0.600
TextButton_5.BorderSizePixel = 0
TextButton_5.Position = UDim2.new(0.875, 0, 0.5, 0)
TextButton_5.Size = UDim2.new(0.25, 0, 1, 0)
TextButton_5.RichText = true
TextButton_5.Text = "<b>R</b>"
TextButton_5.TextColor3 = Color3.fromRGB(154, 154, 154)
TextButton_5.TextSize = 19.000
TextButton_5.TextWrapped = true

UIAspectRatioConstraint_9.Parent = TextButton_5

UICorner_10.Parent = TextButton_5

Follow_Title.Name = "Follow_Title"
Follow_Title.Parent = Items
Follow_Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Follow_Title.BackgroundTransparency = 1.000
Follow_Title.LayoutOrder = 11
Follow_Title.Size = UDim2.new(0.899999976, 0, 0, 40)

TextLabel_16.Parent = Follow_Title
TextLabel_16.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_16.BackgroundTransparency = 1.000
TextLabel_16.BorderSizePixel = 0
TextLabel_16.Size = UDim2.new(1, 0, 1, 0)
TextLabel_16.Font = Enum.Font.Highway
TextLabel_16.RichText = true
TextLabel_16.Text = "<b>Follow Settings</b>"
TextLabel_16.TextColor3 = Color3.fromRGB(154, 154, 154)
TextLabel_16.TextSize = 19.000

return ChiccMadd
