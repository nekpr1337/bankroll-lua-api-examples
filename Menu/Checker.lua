local enabled = Menu.Checker("Enabled", false)
local enabled_with_key = Menu.Checker("Enabled with Key Bind", false, false, true)
local enabled_with_color = Menu.Checker("Enabled with Color Picker", false, true, false)
local enabled_with_all = Menu.Checker("Enabled with Both", false, true, true)

local function OnRenderer()
    if enabled:GetBool() then
        CVar.ExecuteClientCmd("echoln Checker: Enabled"); -- Using echoln to print in console, because print dont working here --
    else
        CVar.ExecuteClientCmd("echoln Checker: Disabled"); -- Using echoln to print in console, because print dont working here --
    end

    if enabled_with_key:GetBool() and enabled_with_key:IsDown() then
        CVar.ExecuteClientCmd("echoln Checker with Key Bind: Enabled"); -- Using echoln to print in console, because print dont working here --
    else
        CVar.ExecuteClientCmd("echoln Checker with Key Bind: Disabled"); -- Using echoln to print in console, because print dont working here --
    end

    if enabled_with_color:GetBool() then
        CVar.ExecuteClientCmd(string.format(
            "echoln Checker with Color Picker: Enabled | %d,%d,%d,%d",
            enabled_with_color:GetColor().r or 0,
            enabled_with_color:GetColor().g or 0,
            enabled_with_color:GetColor().b or 0,
            enabled_with_color:GetColor().a or 0
        ))
    else
        CVar.ExecuteClientCmd("echoln Checker with Color Picker: Disabled")
    end

    if enabled_with_all:GetBool() and enabled_with_all:IsDown() then
        CVar.ExecuteClientCmd(string.format(
            "echoln Checker with Both: Enabled | %d,%d,%d,%d",
            enabled_with_all:GetColor().r or 0,
            enabled_with_all:GetColor().g or 0,
            enabled_with_all:GetColor().b or 0,
            enabled_with_all:GetColor().a or 0
        ))
    else
        CVar.ExecuteClientCmd("echoln Checker with Both: Disabled")
    end
end


Cheat.RegisterCallback("OnRenderer", OnRenderer)