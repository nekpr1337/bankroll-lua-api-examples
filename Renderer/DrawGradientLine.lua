local function OnRenderer()
    Renderer.DrawGradientLine(Vector2D(100, 200), Vector2D(200, 200), Color(255, 255, 255, 255), Color(255, 0, 0, 255)) -- Just to 2 colors --
end

Cheat.RegisterCallback("OnRenderer", OnRenderer)