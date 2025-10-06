local function OnRenderer()
    CVar.ExecuteClientCmd(string.format("echoln GetHighestEntityIndex: %d", Entities.GetHighestEntityIndex() or 0)) -- Using echoln to print in console, because print dont working here --
end

Cheat.RegisterCallback("OnRenderer", OnRenderer)