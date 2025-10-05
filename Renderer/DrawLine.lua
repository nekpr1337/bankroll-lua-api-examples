local function OnRenderer()
    Renderer.DrawLine(Vector2D(100, 200), Vector2D(200, 200), Color(255, 255, 255, 255), 1)
end

Cheat.RegisterCallback("OnRenderer", OnRenderer)