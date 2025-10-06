local function GetLocalPlayerController() -- simple function to get local player controller entity --
    for i = 1, 64 do
        local controller = Entities.GetEntityFromIndex(i)
        if controller and controller.m_bIsLocalPlayerController then
            return controller
        end
    end
    return nil
end

local function OnRenderer()
    CVar.ExecuteClientCmd(string.format("echoln GetEntityFromIndex[Name]: %s", tostring(GetLocalPlayerController().m_sSanitizedPlayerName or "nil"))); -- Using echoln to print in console, because print dont working here --
end

Cheat.RegisterCallback("OnRenderer", OnRenderer)