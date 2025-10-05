Renderer.LoadFontFromFile("verdana", "Tahoma", 10, 1)

local function OnRenderer()
    Renderer.DrawText('verdana', 'b3nkr0ll.s4 gang', Vector2D(500, 600), false, true, Color(255, 255, 255, 255))
end

Cheat.RegisterCallback("OnRenderer", OnRenderer)