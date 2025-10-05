local address = Cheat.FindPattern("client.dll", "48 8B 05 ? ? ? ? C3 CC CC CC CC CC CC CC CC 40 53")

local function OnRenderer()
    if address ~= 0 then
        CVar.ExecuteClientCmd(string.format("echoln FindPattern: 0x%d", address)); -- Using echoln to print in console, because print dont working here --
    else
        CVar.ExecuteClientCmd("echoln FindPattern: Not Found"); -- Using echoln to print in console, because print dont working here --
    end
end

Cheat.RegisterCallback("OnRenderer", OnRenderer)