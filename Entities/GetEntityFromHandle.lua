local function GetLocalPlayerController()
    for i = 1, 64 do
        local controller = Entities.GetEntityFromIndex(i)
        if controller and controller.m_bIsLocalPlayerController then
            return controller
        end
    end
    return nil
end

local function GetLocalPlayer()
    local controller = GetLocalPlayerController()
    if controller then
        return controller.m_hPawn
    end
    return nil
end

local function OnRenderer()
    if Globals.IsConnected() then
        local entityHandle = Entities.GetEntityHandle(GetLocalPlayer()) or 0
        CVar.ExecuteClientCmd(string.format("echoln GetEntityHandle: %d", entityHandle or 0)) -- Using echoln to print in console, because print dont working here --

        local entityFromHandle = Entities.GetEntityFromHandle(entityHandle) or nil
        CVar.ExecuteClientCmd(string.format("echoln GetEntityFromHandle: %s", entityFromHandle or "nil")) -- Using echoln to print in console, because print dont working here --
    end
end

Cheat.RegisterCallback("OnRenderer", OnRenderer)