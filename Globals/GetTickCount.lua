local function OnRenderer()
    CVar.ExecuteClientCmd(string.format("echoln GetTickCount: %d", Globals.GetTickCount() or 0)) -- Using echoln to print in console, because print dont working here --
end

Cheat.RegisterCallback("OnRenderer", OnRenderer)