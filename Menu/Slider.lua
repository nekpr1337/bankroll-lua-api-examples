local value = Menu.Slider("Value", 50, 0, 100)

local function OnRenderer()
    CVar.ExecuteClientCmd(string.format("echoln Slider Value: %d", value:GetInt())); -- Using echoln to print in console, because print dont working here --
end

Cheat.RegisterCallback("OnRenderer", OnRenderer)