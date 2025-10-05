local function OnRenderer()
    local screen = Renderer.GetScreenSize()
    local x = screen.x or screen[1] or 0
    local y = screen.y or screen[2] or 0
    CVar.ExecuteClientCmd(string.format("echoln ScreenSize: X=%d Y=%d", x, y))
end

Cheat.RegisterCallback("OnRenderer", OnRenderer)
