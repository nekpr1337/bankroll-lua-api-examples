local address = Cheat.FindExport("tier0.dll", "RandomSeed")

local function OnRenderer()
    if address ~= 0 then
        CVar.ExecuteClientCmd(string.format("echoln FindExport: 0x%d", address)); -- Using echoln to print in console, because print dont working here --
    else
        CVar.ExecuteClientCmd("echoln FindExport: Not Found"); -- Using echoln to print in console, because print dont working here --
    end
end

Cheat.RegisterCallback("OnRenderer", OnRenderer)