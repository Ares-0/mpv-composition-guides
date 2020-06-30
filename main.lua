--
-- To cycle, press 'g'
-- To reset back to nothing, press 'G'
-- To switch between 4:3 and 16:9, press CTRL+g
--
-- Everything breaks when you're not full screen btw
--
-- Images go in the same directory as main.lua.
-- Images supposedly have to be bgra format
-- Image name has to then go in the 'guides' variable. 
--
-- TODO
-- Full screen warning? Maybe when switching but not in full screen give feedback?
-- 

local mp = require 'mp'
local M = {}

local guide = 0
local fourthree = 0

-- edit these if you want to change something
-- forgive the hardcoding
local verbose = true 	-- if true, gives feedback at top left corner
local key = 'g'

local directory = os.getenv("USERPROFILE") .. "/AppData/Roaming/mpv/scripts/composition_guides/guides/"
local guides = {"center", "center_diag", "thirds", "golden_section", "harm_tri_A", "harm_tri_B"}
local full_names = {"Center", "Center Diagonal", "Thirds", "Golden Section", "Harmonic Triangle A", "Harmonic Triangle B"}
-- lua arrays start at 1 btw


function M.cycle_guide()
	guide = (guide + 1) % (table.getn(guides) + 1)
	mp.commandv("overlay-remove", 10)
	-- f = mp.get_property("fullscreen") -- in case I want to add full screen warning later
	if(guide > 0) then
		if(fourthree == 0) then
			path = directory .. guides[guide]
			local status = mp.commandv("overlay-add", 10, 0, 0, path, 0, 'bgra', 1920, 1080, 7680)
			M.feedback(status)
		else
			path = directory .. "43_" .. guides[guide]
			local status = mp.commandv("overlay-add", 10, 240, 0, path, 0, 'bgra', 1440, 1080, 5760)
			M.feedback(status)
		end
	else
		if(verbose) then
			mp.commandv("show-text", "Off", 500)
		end
	end
	
end

function M.feedback(status)
	if(verbose) then
		if(status) then
			mp.commandv("show-text", full_names[guide], 750)
		else
			mp.commandv("show-text", "Could not read " .. path, 2000)
			-- technically some other error could happen as well actually
		end
	end
end

function M.clear_guide()
	guide = 0
	mp.commandv("overlay-remove", 10)
	if(verbose) then
		mp.commandv("show-text", "Off", 500)
	end
end

function M.set_43()
	fourthree = (fourthree + 1) % 2
	guide = guide - 1
	M.cycle_guide()
	text = "Mode: "
	if (fourthree == 1) then
		text = text .. "4:3"
	else
		text = text .. "16:9"
	end
	mp.commandv("show-text", text, 750)
end


-- main function of the file
function M.main() 
	mp.add_key_binding(key, M.cycle_guide)
	mp.add_key_binding('SHIFT+' .. key, M.clear_guide)
	mp.add_key_binding('CTRL+' .. key, M.set_43)
end

mp.register_event("file-loaded", M.main)

