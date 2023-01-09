local Player = game:GetService('Players').LocalPlayer

local ScreenGui = Instance.new('ScreenGui')
local Text = Instance.new('TextLabel')
local Frame = Instance.new('Frame')
local TextButton = Instance.new('TextButton')
local SpeedInput = Instance.new('TextBox')
local ResetSpeedButton = Instance.new('TextButton')
local InsertSpeedButton = Instance.new('TextButton')
local JumpInput = Instance.new('TextBox')
local ResetJumpButton = Instance.new('TextButton')
local InsertJumpButton = Instance.new('TextButton')
local ResetAll = Instance.new('TextButton')
local InsertAll = Instance.new('TextButton')

ScreenGui.Parent = Player.PlayerGui
Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0.2, 0, 0.2, 0)
Frame.BackgroundColor3 = Color3.fromRGB(25, 3, 56)
Frame.Position = UDim2.new(0.2, 0, 0.4, 0)

Text.Parent = Frame
Text.BackgroundColor3 = Color3.fromRGB(62, 8, 143)
Text.Size = UDim2.new(1,0, 0.1, 0)
Text.Position = UDim2.new(0,0,0,0)
Text.Text = 'Speed and Jump | HUB'
Text.TextColor3 = Color3.fromRGB(255, 255, 255)

TextButton.Parent = ScreenGui
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.Text = 'Hide'
TextButton.Position = UDim2.new(0.206, 0,0.402, 0)
TextButton.Size = UDim2.new(0.033, 0,0.014, 0)
TextButton.ZIndex = 2

SpeedInput.Parent = Frame
SpeedInput.BackgroundColor3 = Color3.fromRGB(255,255,255)
SpeedInput.PlaceholderText = 'Speed'
SpeedInput.Position = UDim2.new(0.172, 0, 0.179, 0)
SpeedInput.Size = UDim2.new(0.507,0,0.142,0)
SpeedInput.ClearTextOnFocus = false
SpeedInput.Text = ''

ResetSpeedButton.Parent = Frame
ResetSpeedButton.Position = UDim2.new(0.034, 0,0.196, 0)
ResetSpeedButton.Size = UDim2.new(0.113, 0,0.106, 0)
ResetSpeedButton.BackgroundColor3 = Color3.fromRGB(255,255,255)
ResetSpeedButton.Text = 'Reset'

InsertSpeedButton.Parent = Frame
InsertSpeedButton.BackgroundColor3 = Color3.fromRGB(255,255,255)
InsertSpeedButton.Position = UDim2.new(0.712, 0,0.196, 0)
InsertSpeedButton.Size = UDim2.new(0.218, 0,0.106, 0)
InsertSpeedButton.Text = 'Insert'

JumpInput.Parent = Frame
JumpInput.BackgroundColor3 = Color3.fromRGB(255,255,255)
JumpInput.PlaceholderText = 'Jump'
JumpInput.Position = UDim2.new(0.172, 0, 0.364, 0)
JumpInput.Size = UDim2.new(0.507,0,0.142,0)
JumpInput.ClearTextOnFocus = false
JumpInput.Text = ''

ResetJumpButton.Parent = Frame
ResetJumpButton.Position = UDim2.new(0.034, 0,0.381, 0)
ResetJumpButton.Size = UDim2.new(0.113, 0,0.106, 0)
ResetJumpButton.BackgroundColor3 = Color3.fromRGB(255,255,255)
ResetJumpButton.Text = 'Reset'

InsertJumpButton.Parent = Frame
InsertJumpButton.BackgroundColor3 = Color3.fromRGB(255,255,255)
InsertJumpButton.Position = UDim2.new(0.712, 0,0.381, 0)
InsertJumpButton.Size = UDim2.new(0.218, 0,0.106, 0)
InsertJumpButton.Text = 'Insert'

ResetAll.Parent = Frame
ResetAll.BackgroundColor3 = Color3.fromRGB(255,255,255)
ResetAll.Text = 'Reset All'
ResetAll.Position = UDim2.new(0.034, 0,0.789, 0)
ResetAll.Size = UDim2.new(0.896, 0,0.106, 0)

InsertAll.Parent = Frame
InsertAll.BackgroundColor3 = Color3.fromRGB(255,255,255)
InsertAll.Text = 'Insert All'
InsertAll.Position = UDim2.new(0.034, 0,0.628, 0)
InsertAll.Size = UDim2.new(0.896, 0,0.106, 0)

local IsHidden = false
local Character = Player.Character or Player.CharacterAdded:Wait()
local WalkSpeed = 16
local JumpPower = 50

TextButton.MouseButton1Down:Connect(function()
	if IsHidden == false then
		print('a')
		TextButton.Text = 'Show'
		IsHidden = true
		Frame.Visible = false
	elseif IsHidden == true then
		TextButton.Text = 'Hide'
		IsHidden = false
		Frame.Visible = true
	end
end)

ResetSpeedButton.MouseButton1Down:Connect(function()
	WalkSpeed = 16
	Character.Humanoid.WalkSpeed = WalkSpeed
	SpeedInput.Text = ''
end)

InsertSpeedButton.MouseButton1Down:Connect(function()
	WalkSpeed = tonumber(SpeedInput.Text)
	if type(WalkSpeed) == 'number' then
		Character.Humanoid.WalkSpeed = WalkSpeed
	end
	SpeedInput.Text = ''
end)

ResetJumpButton.MouseButton1Down:Connect(function()
	JumpPower = 50
	Character.Humanoid.JumpPower = JumpPower
	JumpInput.Text = ''
end)

InsertJumpButton.MouseButton1Down:Connect(function()
	JumpPower = tonumber(JumpInput.Text)
	if type(JumpPower) == 'number' then
		Character.Humanoid.JumpPower = JumpPower
	end
	JumpInput.Text = ''
end)

ResetAll.MouseButton1Down:Connect(function()
	WalkSpeed = 16
	JumpPower = 50
	Character.Humanoid.WalkSpeed = WalkSpeed
	Character.Humanoid.JumpPower = JumpPower
	JumpInput.Text = ''
	SpeedInput.Text = ''
end)

InsertAll.MouseButton1Down:Connect(function()
	WalkSpeed = tonumber(SpeedInput.Text)
	if type(WalkSpeed) == 'number' then
		Character.Humanoid.WalkSpeed = WalkSpeed
	end
	JumpPower = tonumber(JumpInput.Text)
	if type(JumpPower) == 'number' then
		Character.Humanoid.JumpPower = JumpPower
	end
	JumpInput.Text = ''
	SpeedInput.Text = ''
end)
