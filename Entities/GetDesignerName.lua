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
        local designerName = Entities.GetDesignerName(GetLocalPlayer()) or "nil"
        CVar.ExecuteClientCmd(string.format("echoln GetDesignerName: %s", designerName)) -- Using echoln to print in console, because print dont working here --
    end
end

Cheat.RegisterCallback("OnRenderer", OnRenderer)