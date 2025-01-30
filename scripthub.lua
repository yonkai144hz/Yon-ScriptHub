if game PlaceId == local Rayfield = 4616652839 then

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Sharigan Hub",
    Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
    LoadingTitle = "Loading...",
    LoadingSubtitle = "by: I am Yon, Itoshi Sae, Arthur Thell",
    Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes
 
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface
 
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "#1 HUB (SHINDO LIFE)"
    },
 
    Discord = {
       Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
       Invite = "https://discord.gg/tAdxuC34QJ", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
 
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
       Title = "Sharigan Auth",
       Subtitle = "Sharigan | Key Auth",
       Note = "001", -- Use this to tell the user how to get a key
       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"THEBESTHUB#1"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })

local Tab = Window:CreateTab(" 🏠 Main", 4483362458) -- Title, Image

local Section = Main:CreateSection("Clicker")

local Button = Clicker:CreateButton({
   Name = "Auto Click",
   Callback = function()
       local function autoClique()
           local mouse = game.Players.LocalPlayer:GetMouse()
           local alvo = mouse.Target
           
           if alvo then
               -- Simula um clique no alvo
               print("Clicando em:", alvo)
           end
       end
       
       -- Chama a função de auto clique (você pode rodá-la em um loop, por exemplo)
       while true do
           autoClique()
           wait(0.1)  -- Espera 0.1 segundos entre os cliques (ajuste conforme necessário)
       end
   end,
})

local Tab = Window:CreateTab(" ⚙️ Misc", 4483362458) -- Title, Image

local Section = Main:CreateSection("Speed")

local Button = Speed:CreateButton({
   Name = "Speed Boost",
   Callback = function()
       -- Função de Speed Boost
       local function aplicarSpeedBoost(jogador, tempo, fator)
           -- Checa se o jogador está em um personagem e se o humanoide existe
           local personagem = jogador.Character
           if personagem and personagem:FindFirstChild("Humanoid") then
               local humanoide = personagem:FindFirstChild("Humanoid")
               
               -- Armazena a velocidade original do jogador
               local velocidadeOriginal = humanoide.WalkSpeed
               
               -- Aumenta a velocidade do jogador
               humanoide.WalkSpeed = velocidadeOriginal * fator
               
               -- Após o tempo determinado, retorna à velocidade original
               wait(tempo)
               humanoide.WalkSpeed = velocidadeOriginal
           end
       end
       
       -- Chama a função de speed boost
       aplicarSpeedBoost(game.Players.LocalPlayer, 5, 2)  -- Aplica speed boost por 5 segundos com fator 2x
   end,
})
