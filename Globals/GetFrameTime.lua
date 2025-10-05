local function OnRenderer()
    CVar.ExecuteClientCmd(string.format("echoln GetFrameTime: %d", Globals.GetFrameTime() or 0)) -- Using echoln to print in console, because print dont working here --
end

Cheat.RegisterCallback("OnRenderer", OnRenderer)