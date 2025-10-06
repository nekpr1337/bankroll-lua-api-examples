local function OnRenderer()
    if Globals.IsConnected() then
        local gameRules = Entities.GetGameRules() or 0
        if gameRules then
            if gameRules.m_bWarmupPeriod then
                CVar.ExecuteClientCmd(string.format("echoln m_bWarmupPeriod: True")) -- Using echoln to print in console, because print dont working here --
            else
                CVar.ExecuteClientCmd(string.format("echoln m_bWarmupPeriod: False")) -- Using echoln to print in console, because print dont working here --
            end
        else
            CVar.ExecuteClientCmd(string.format("echoln GetGameRules: nil")) -- Using echoln to print in console, because print dont working here --
        end
    else
        CVar.ExecuteClientCmd(string.format("echoln IsConnected: False")) -- Using echoln to print in console, because print dont working here --
    end
end

Cheat.RegisterCallback("OnRenderer", OnRenderer)