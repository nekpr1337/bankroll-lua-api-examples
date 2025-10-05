local function OnRenderer()
    CVar.ExecuteClientCmd(string.format("echoln GetTickInterval: %d", Globals.GetTickInterval() or 0)) -- Using echoln to print in console, because print dont working here --
end

Cheat.RegisterCallback("OnRenderer", OnRenderer)