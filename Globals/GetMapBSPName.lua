local function OnRenderer()
    CVar.ExecuteClientCmd(string.format("echoln Map Name: %s", Globals.GetMapBSPName() or "None")) -- Using echoln to print in console, because print dont working here --
end

Cheat.RegisterCallback("OnRenderer", OnRenderer)