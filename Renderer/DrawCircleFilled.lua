local function OnRenderer()
    Renderer.DrawCircleFilled(Vector2D(100, 100), Color(255, 255, 255, 255), 300)
end

Cheat.RegisterCallback("OnRenderer", OnRenderer)