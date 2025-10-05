local function OnRenderer()
    Renderer.DrawCircle3D(Vector(100, 100, 100), Color(255, 255, 255, 255), 32)
end

Cheat.RegisterCallback("OnRenderer", OnRenderer)