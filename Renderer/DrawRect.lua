local function OnRenderer()
    Renderer.DrawRect(Vector2D(100, 100), Vector2D(200, 200), Color(255, 255, 255, 255))
end

Cheat.RegisterCallback("OnRenderer", OnRenderer)