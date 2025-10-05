local function OnRenderer()
    local pos = Input.GetCursorPos()
    local x, y = pos.x or 0, pos.y or 0
    CVar.ExecuteClientCmd(string.format("echoln Cursor Position: X=%d Y=%d", x, y))
end

Cheat.RegisterCallback("OnRenderer", OnRenderer)
