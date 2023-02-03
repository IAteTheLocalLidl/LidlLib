--do WHATEVER with this script, modify it, use it like a random person would, just have fun (but please try to keep in LidlLib somewhere visible if you do modify it)
function GetLibrary()
	local studio = game:GetService("RunService"):IsStudio()
	if studio == false and syn then

	else
		warn("You need Synapse X for this script!")
		return
	end
	local functions = {}
	function functions:CreateGui()
		local list = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
		local lettersinname = 8
		local screengui = Instance.new("ScreenGui")
		screengui.ResetOnSpawn = false
		screengui.Name = ""
		for i = 1, lettersinname do
			local chosen = math.random(1, string.len(list))
			screengui.Name = screengui.Name.. string.sub(list, chosen, chosen)
		end
		print(screengui)
		
		
		
		return screengui
	end

	function functions:AddToCoreGui(ui)
		syn.protect_gui(ui)
		ui.Parent = game:GetService("CoreGui")
		return ui
	end

	return functions
end

local lib = GetLibrary() 

local ui = lib:CreateGui()

lib:AddToCoreGui(ui)