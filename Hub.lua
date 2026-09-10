-- Carrega a Rayfield UI Library
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- Cria a Janela Principal do seu Meta-Hub
local Window = Rayfield:CreateWindow({
   Name = "Multi-Hub",
   LoadingTitle = "Carregando Central de Hubs...",
   LoadingSubtitle = "por Gordin",
   Theme = "Default",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "MultiHubConfigs",
      FileName = "MainConfig"
   },
   KeySystem = false
})

-- Cria a Aba principal onde ficam os botões dos hubs
local TabHubs = Window:CreateTab("Hubs ", 4483362458)

TabHubs:CreateSection("Selecione o Hub para Carregar")

--- BOTÃO 1: CHILLA'S / CHILLABERNHOT ---
TabHubs:CreateButton({
   Name = "Steal an Egg", -- Nome que aparece no botão
   Callback = function()
      -- AQUI VOCÊ COLOCA O LOADSTRING DO OUTRO HUB:
      loadstring(game:HttpGet('https://raw.githubusercontent.com/casanovaerickmiguel-svg/phantomhub123/refs/heads/main/steal_an_egg.lua'))()
      
      -- Notificação visual avisando que carregou
      Rayfield:Notify({
         Title = "Sucesso!",
         Content = "Hub de Steal an Egg carregado.",
         Duration = 3,
      })
   end,
})

--- BOTÃO 2: OUTRO HUB QUALQUER ---
TabHubs:CreateButton({
   Name = "PvP", -- Nome que aparece no botão
   Callback = function()
      -- AQUI VOCÊ COLOCA O OUTRO LOADSTRING:
      loadstring(game:HttpGet('https://raw.githubusercontent.com/casanovaerickmiguel-svg/OnionHUBs/refs/heads/main/pvplast.lua'))()
      
      Rayfield:Notify({
         Title = "Sucesso!",
         Content = "OnionHub carregado.",
         Duration = 3,
      })
   end,
})

TabHubs:CreateButton({
   Name = "Blox Fruits", -- Nome que aparece no botão
   Callback = function()
      -- AQUI VOCÊ COLOCA O LOADSTRING DO OUTRO HUB:
      loadstring(game:HttpGet('https://raw.githubusercontent.com/casanovaerickmiguel-svg/phantomc/refs/heads/main/SourceSkibidi.lua'))()
      
      -- Notificação visual avisando que carregou
      Rayfield:Notify({
         Title = "Sucesso!",
         Content = "Hub de Blox Fruits carregado.",
         Duration = 3,
      })
   end,
})

TabHubs:CreateButton({
   Name = "Fisch", -- Nome que aparece no botão
   Callback = function()
      -- AQUI VOCÊ COLOCA O OUTRO LOADSTRING:
      loadstring(game:HttpGet('loadstring(game:HttpGet('https://github.com/casanovaerickmiguel-svg/fisch/blob/main/fisch.lua'))()'))()
      
      Rayfield:Notify({
         Title = "Sucesso!",
         Content = "OnionHub carregado.",
         Duration = 3,
      })
   end,
})

-- Carrega as configurações salvas
Rayfield:LoadConfiguration()