
--Load in the script
local link = "https://raw.githubusercontent.com/IAteTheLocalLidl/LidlLib/main/MainScript.lua"
loadstring(game:HttpGet(link, true))()

--Get the functions library
local lib = _G.GetLidlLibrary()

--Create a blank UI to use
local ui = lib:CreateGui()

--Change the title of the UI
--For its arguments, put in the ui and then the name
lib:ChangeNameTitle(ui, "LidlLib Test")

--ONLY use after you have setted up everything in this ui (all folders, all buttons, etc)
--AddToGui is best used on synapse as that has a function to protect the ui
--For its arguments, put in the ui
lib:AddToGui(ui)