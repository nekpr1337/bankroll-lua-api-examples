local function OnRenderer()
    CVar.ExecuteClientCmd("echoln GetPlayerFromUserId from 79 UID: " .. Cheat.GetPlayerFromUserId(79)); -- Using echoln to print in console, because print dont working here --
end

Cheat.RegisterCallback("OnRenderer", OnRenderer)