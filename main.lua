--[[
    PARADOX HUB  ·  loader

    Usage in any executor:
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ParadoxRBX/ParadoxHub/main/main.lua"))()

    Games:
        Spectre_10PlayerFlee.lua   ->  10 Player Flee
]]

local BASE = "https://raw.githubusercontent.com/ParadoxRBX/ParadoxHub/main/"

local PLACE_SCRIPTS = {
	[17600423422] = "Spectre_10PlayerFlee.lua", -- 10 Player Flee
}

local function fail(msg)
	local ok = pcall(function()
		game:GetService("StarterGui"):SetCore("SendNotification", {
			Title = "PARADOX HUB",
			Text = msg,
			Duration = 6,
		})
	end)
	warn("[Paradox] " .. msg)
	if not ok then print("[Paradox] " .. msg) end
end

local target = PLACE_SCRIPTS[game.PlaceId]

if not target then
	fail("No script for this place (" .. tostring(game.PlaceId) .. ").")
	return
end

local ok, body = pcall(function()
	return game:HttpGet(BASE .. target)
end)

if not ok or type(body) ~= "string" or #body < 100 then
	fail("Download failed for " .. target .. ".")
	return
end

local chunk, err = loadstring(body, "ParadoxHub:" .. target)

if not chunk then
	fail("Load error: " .. tostring(err))
	return
end

local started, runErr = pcall(chunk)

if not started then
	fail("Runtime error: " .. tostring(runErr))
end
