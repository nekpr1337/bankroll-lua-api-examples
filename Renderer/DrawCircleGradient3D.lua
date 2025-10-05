local function OnRenderer()
    Renderer.DrawCircleGradient3D(Vector(100, 100, 100), Color(255, 255, 255, 255), Color(255, 255, 255, 0), 32)
end

Cheat.RegisterCallback("OnRenderer", OnRenderer)