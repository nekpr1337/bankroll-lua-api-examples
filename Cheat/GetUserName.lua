local function OnRenderer()
    CVar.ExecuteClientCmd("echoln GetUserName: " .. Cheat.GetUserName()); -- Using echoln to print in console, because print dont working here --
end

Cheat.RegisterCallback("OnRenderer", OnRenderer)