local items = {"b3nkr0ll.s4", "aka", "bankroll.su", "best", "cheat"}

local list = Menu.List("Combo", 0, items)

local function OnRenderer()
    CVar.ExecuteClientCmd(string.format("echoln List Value: %s", items[list:GetInt() + 1] or "N/A")); -- Using echoln to print in console, because print dont working here --
end

Cheat.RegisterCallback("OnRenderer", OnRenderer)