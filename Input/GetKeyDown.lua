-- creadits: Virtual Keys - https://learn.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes

local function OnRenderer()
    if Input.GetKeyDown(0x41) then -- A key
        CVar.ExecuteClientCmd("echoln Key A is Pressed"); -- Using echoln to print in console, because print dont working here --
    else
        CVar.ExecuteClientCmd("echoln Key A is Not Pressed"); -- Using echoln to print in console, because print dont working here --
    end
end

Cheat.RegisterCallback("OnRenderer", OnRenderer)