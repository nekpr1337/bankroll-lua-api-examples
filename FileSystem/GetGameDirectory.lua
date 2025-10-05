local dir = FileSystem.GetGameDirectory() or "N/A"

local function OnRenderer()
    CVar.ExecuteClientCmd(string.format("echoln Game Directory: %s", dir)); -- Using echoln to print in console, because print dont working here --
end

Cheat.RegisterCallback("OnRenderer", OnRenderer)