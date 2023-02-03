function _G.GetLidlLibrary()
	print("LidlLib: Started")
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
		spawn(function()
			local a=Instance.new"Frame"
			a.Size=UDim2.new(0.4720653,0,0.5461347,0)
			a.Position=UDim2.new(0.2636535,0,0.2269327,0)
			a.BackgroundColor3=Color3.fromRGB(255,255,255)
			local b=Instance.new"UICorner"
			b.CornerRadius=UDim.new(0,14)
			b.Parent=a
			local c=Instance.new"UIAspectRatioConstraint"
			c.Parent=b
			local d=Instance.new"UIGradient"
			d.Rotation=140
			d.Color=ColorSequence.new(Color3.fromRGB(47,47,47),Color3.fromRGB(38,38,38))
			d.Parent=a
			local e=Instance.new"Frame"
			e.Name="TitleHolder"
			e.Size=UDim2.new(1,0,0.0913242,0)
			e.BackgroundColor3=Color3.fromRGB(216,216,216)
			e.Parent=a
			local f=Instance.new"TextLabel"
			f.Size=UDim2.new(0.4587766,0,0.925,0)
			f.BackgroundTransparency=1
			f.Position=UDim2.new(0.0093085,0,0,0)
			f.BackgroundColor3=Color3.fromRGB(255,255,255)
			f.FontSize=5
			f.TextStrokeTransparency=0
			f.TextSize=14
			f.TextColor3=Color3.fromRGB(255,255,255)
			f.Text="LidlLib"
			f.TextWrapped=true
			f.Font=30
			f.TextWrap=true
			f.TextXAlignment=0
			f.TextScaled=true
			f.Parent=e
			local g=Instance.new"UIGradient"
			g.Rotation=140
			g.Color=ColorSequence.new(Color3.fromRGB(47,47,47),Color3.fromRGB(38,38,38))
			g.Parent=e
			local h=Instance.new"UICorner"
			h.CornerRadius=UDim.new(0,14)
			h.Parent=e
			local i=Instance.new"UIAspectRatioConstraint"
			i.Parent=h
			local j=Instance.new"Frame"
			j.Name="UglyCornerFix"
			j.Size=UDim2.new(1,0,0.15,0)
			j.Position=UDim2.new(0,0,0.85,0)
			j.BorderSizePixel=0
			j.BackgroundColor3=Color3.fromRGB(216,216,216)
			j.Parent=e
			local k=Instance.new"UIGradient"
			k.Rotation=140
			k.Color=ColorSequence.new(Color3.fromRGB(30,30,30))
			k.Parent=j
			local l=Instance.new"Frame"
			l.Name="Buttons"
			l.Size=UDim2.new(0,134,0,398)
			l.BackgroundTransparency=1
			l.Position=UDim2.new(0,0,0.0913242,0)
			l.BackgroundColor3=Color3.fromRGB(255,255,255)
			l.Parent=a
			local m=Instance.new"UIListLayout"
			m.SortOrder=2
			m.Parent=l
			a.Parent = screengui
		end)
		
		return screengui
	end

	function functions:AddToGui(ui)
		local s,e = pcall(function()
			syn.protect_gui(ui)
		end)
		if e then warn("LidlLib: SYN PROTECT FAILURE, ".. e) end
		ui.Parent = game:GetService("CoreGui")
		return ui
	end
	
	function functions:ChangeNameTitle(name: string)
		
	end

	return functions
end
