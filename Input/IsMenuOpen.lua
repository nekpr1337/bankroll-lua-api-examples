local function OnRenderer()
    if Input.IsMenuOpen() then
        CVar.ExecuteClientCmd("echoln Menu is Open"); -- Using echoln to print in console, because print dont working here --
    else
        CVar.ExecuteClientCmd("echoln Menu is Closed"); -- Using echoln to print in console, because print dont working here --
    end
end

Cheat.RegisterCallback("OnRenderer", OnRenderer)