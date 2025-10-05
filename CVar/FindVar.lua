local sv_cheats = CVar.FindVar("sv_cheats")

local function OnRenderer()
    if sv_cheats:GetBool() == true then
        CVar.ExecuteClientCmd("echoln sv_cheats is enabled"); -- Using echoln to print in console, because print dont working here --
    else
        CVar.ExecuteClientCmd("echoln sv_cheats is disabled"); -- Using echoln to print in console, because print dont working here --
    end
end

Cheat.RegisterCallback("OnRenderer", OnRenderer)