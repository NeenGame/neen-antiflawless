RegisterNetEvent('neen-antiflawless:server:kick:vinka', function(fov)
    DropPlayer(source, 'Flawless Widescreen Detected fov: ' ..fov)
end)

local function CheckVersion()
	PerformHttpRequest('https://raw.githubusercontent.com/NeenGame/neen-antiflawless/master/version.txt', function(err, newestVersion, headers)
		local currentVersion = GetResourceMetadata(GetCurrentResourceName(), 'version')
		if not newestVersion then print("Currently unable to run a version check.") return end
		local advice = "^1You are currently running an outdated version^7, ^1please update^7"
		if newestVersion:gsub("%s+", "") == currentVersion:gsub("%s+", "") then 
            advice = '^6neen-antiflawless is up to date^7'
		else
            print("^3Version Check^7: \n^2Current^7: "..currentVersion.."\n^2Latest^7: "..newestVersion .. '\n^2Github^7: https://github.com/NeenGame/neen-antiflawless') 
        end
		print(advice)
	end)
end
CheckVersion() -- version check