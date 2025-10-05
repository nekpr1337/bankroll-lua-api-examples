local function OnRenderer()
    if Globals.IsConnected() then -- returns true if connected to a server --
        CVar.ExecuteClientCmd("echoln IsConnected: true"); -- Using echoln to print in console, because print dont working here --
    else
        CVar.ExecuteClientCmd("echoln IsConnected: false"); -- Using echoln to print in console, because print dont working here --
    end
end

Cheat.RegisterCallback("OnRenderer", OnRenderer)