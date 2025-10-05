local function OnRenderer()
    Renderer.DrawArc(Vector2D(200, 200), 32, 0, 360, Color(255, 255, 255, 255), 2)
end

Cheat.RegisterCallback("OnRenderer", OnRenderer)