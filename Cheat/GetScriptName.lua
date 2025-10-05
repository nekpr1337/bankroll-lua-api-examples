local function OnRenderer()
    CVar.ExecuteClientCmd("echoln GetScriptName: " .. Cheat.GetScriptName()); -- Using echoln to print in console, because print dont working here --
end

Cheat.RegisterCallback("OnRenderer", OnRenderer)