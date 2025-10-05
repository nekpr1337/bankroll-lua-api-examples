local Loaded = false
local Tahoma = "Tahoma"
local Verdana = "Verdana"
local Arial = "Arial"
local TahomaSmall = "bankrollsu_tahoma_small"
local VerdanaSmall = "bankrollsu_verdana_small"
local ArialSmall = "bankrollsu_arial_small"
local TahomaMedium = "bankrollsu_tahoma_medium"
local VerdanaMedium = "bankrollsu_verdana_medium"
local ArialMedium = "bankrollsu_arial_medium"
local TahomaLarge = "bankrollsu_tahoma_large"
local VerdanaLarge = "bankrollsu_verdana_large"
local ArialLarge = "bankrollsu_arial_large"

local function LoadFonts()
    if not Loaded then
        Renderer.LoadFontFromFile(TahomaSmall, Tahoma, 10, 1)
        Renderer.LoadFontFromFile(VerdanaSmall, Verdana, 10, 1)
        Renderer.LoadFontFromFile(ArialSmall, Arial, 10, 1)
        Renderer.LoadFontFromFile(TahomaMedium, Tahoma, 14, 1)
        Renderer.LoadFontFromFile(VerdanaMedium, Verdana, 14, 1)    
        Renderer.LoadFontFromFile(ArialMedium, Arial, 14, 1)
        Renderer.LoadFontFromFile(TahomaLarge, Tahoma, 18, 1)
        Renderer.LoadFontFromFile(VerdanaLarge, Verdana, 18, 1)
        Renderer.LoadFontFromFile(ArialLarge, Arial, 18, 1)

        Loaded = true
    end
end

local function OnRenderer()
    LoadFonts()

    Renderer.DrawText(TahomaSmall, "Tahoma Small", Vector2D(10, 10), false, false, Color(255, 255, 255, 255))
    Renderer.DrawText(VerdanaSmall, "Verdana Small", Vector2D(10, 30), false, false, Color(255, 255, 255, 255))
    Renderer.DrawText(ArialSmall, "Arial Small", Vector2D(10, 50), false, false, Color(255, 255, 255, 255))
    Renderer.DrawText(TahomaMedium, "Tahoma Medium", Vector2D(10, 100), false, false, Color(255, 255, 255, 255))
    Renderer.DrawText(VerdanaMedium, "Verdana Medium", Vector2D(10, 130), false, false, Color(255, 255, 255, 255))
    Renderer.DrawText(ArialMedium, "Arial Medium", Vector2D(10, 160), false, false, Color(255, 255, 255, 255))
    Renderer.DrawText(TahomaLarge, "Tahoma Large", Vector2D(10, 230), false, false, Color(255, 255, 255, 255))
    Renderer.DrawText(VerdanaLarge, "Verdana Large", Vector2D(10, 270), false, false, Color(255, 255, 255, 255))
    Renderer.DrawText(ArialLarge, "Arial Large", Vector2D(10, 310), false, false, Color(255, 255, 255, 255))
end

Cheat.RegisterCallback("OnRenderer", OnRenderer)