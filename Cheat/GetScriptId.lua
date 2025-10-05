local function OnRenderer()
    CVar.ExecuteClientCmd("echoln GetScriptId: " .. Cheat.GetScriptId()); -- Using echoln to print in console, because print dont working here --
end

Cheat.RegisterCallback("OnRenderer", OnRenderer)