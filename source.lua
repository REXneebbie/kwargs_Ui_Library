-- Coloque este script em um LocalScript dentro de StarterGui

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Cria a tela principal
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "CustomUI"
screenGui.Parent = playerGui

-- Cria o quadro de fundo
local background = Instance.new("ImageLabel")
background.Name = "Background"
background.Size = UDim2.new(1, 0, 1, 0)
background.BackgroundTransparency = 1
background.Image = "https://i.imgur.com/urszG3h.png"
background.Parent = screenGui

-- Função para criar botões
local function createButton(text, position, action)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0.2, 0, 0.1, 0)
    button.Position = position
    button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    button.TextColor3 = Color3.fromRGB(0, 0, 0)
    button.Text = text
    button.Parent = background

    button.MouseButton1Click:Connect(action)
end

-- Cria os 12 botões
local buttonWidth = 0.2
local buttonHeight = 0.1
local xOffset = 0.25
local yOffset = 0.15

for i = 1, 12 do
    local row = math.floor((i - 1) / 4)
    local col = (i - 1) % 4
    local xPos = col * xOffset
    local yPos = row * yOffset
    local position = UDim2.new(xPos, 0, yPos, 0)

    local buttonText = "Button " .. i
    local action = function()
        print(buttonText .. " clicked!")
        -- Adicione aqui a ação específica para cada botão
    end

    createButton(buttonText, position, action)
end
