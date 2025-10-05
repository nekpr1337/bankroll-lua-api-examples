Renderer.LoadFontFromFile("verdana", "Tahoma", 10, 1)

local function OnRenderer()
    local text = "b3nkr0ll.s4 gang"
    local size = Renderer.GetTextSize("verdana", text)
    CVar.ExecuteClientCmd(string.format("echoln Text Size: Width=%d, Height=%d", size.x or 0, size.y or 0)); -- Using echoln to print in console, because print dont working here --
end

Cheat.RegisterCallback("OnRenderer", OnRenderer)