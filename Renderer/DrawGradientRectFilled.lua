local function OnRenderer()
    Renderer.DrawGradientRectFilled(Vector2D(100, 100), Vector2D(200, 200), Color(255, 255, 255, 255), Color(255, 255, 255, 100), true)
end

Cheat.RegisterCallback("OnRenderer", OnRenderer)