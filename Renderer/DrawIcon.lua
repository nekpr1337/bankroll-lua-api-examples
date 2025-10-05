local function OnRenderer()
    Renderer.DrawIcon("icons/equipment/inferno", Vector2D(300, 300), 60, false, false, Color(255, 0, 0, 255))
end

Cheat.RegisterCallback("OnRenderer", OnRenderer)