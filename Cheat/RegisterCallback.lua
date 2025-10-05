-- ~ functions that will be called ~ --

local function OnRenderer()
    CVar.ExecuteClientCmd("echoln OnRenderer callback called."); -- Using echoln to print in console, because print dont working here --
end

local function OnPreCreateMove()
    CVar.ExecuteClientCmd("echoln OnPreCreateMove callback called."); -- Using echoln to print in console, because print dont working here --
end

local function OnPostCreateMove()
    CVar.ExecuteClientCmd("echoln OnPostCreateMove callback called."); -- Using echoln to print in console, because print dont working here --
end

local function OnFrameStageNotify()
    CVar.ExecuteClientCmd("echoln OnFrameStageNotify callback called."); -- Using echoln to print in console, because print dont working here --
end

local function OnMapLoad()
    CVar.ExecuteClientCmd("echoln OnMapLoad callback called."); -- Using echoln to print in console, because print dont working here --
end

local function OnFireGameEvent()
    CVar.ExecuteClientCmd("echoln OnFireGameEvent callback called."); -- Using echoln to print in console, because print dont working here --
end

local function OnEdgeBug()
    CVar.ExecuteClientCmd("echoln OnEdgeBug callback called."); -- Using echoln to print in console, because print dont working here --
end

local function OnJumpBug()
    CVar.ExecuteClientCmd("echoln OnJumpBug callback called."); -- Using echoln to print in console, because print dont working here --
end

-- ~ registering the callbacks ~ --

Cheat.RegisterCallback("OnRenderer", OnRenderer)
Cheat.RegisterCallback("OnPreCreateMove", OnPreCreateMove)
Cheat.RegisterCallback("OnPostCreateMove", OnPostCreateMove)
Cheat.RegisterCallback("OnFrameStageNotify", OnFrameStageNotify)
Cheat.RegisterCallback("OnMapLoad", OnMapLoad)
Cheat.RegisterCallback("OnFireGameEvent", OnFireGameEvent)
Cheat.RegisterCallback("OnEdgeBug", OnEdgeBug)
Cheat.RegisterCallback("OnJumpBug", OnJumpBug)