local enabled = false

local function OnRenderer()
    if not enabled then
        CVar.ExecuteClientCmd("echoln ExecuteClientCmd: executed"); -- Using echoln to print in console, because print dont working here --
        CVar.ExecuteClientCmd("play \\sounds\\physics\\metal\\chain_impact_hard2");
        enabled = true
    end
end

Cheat.RegisterCallback("OnRenderer", OnRenderer)