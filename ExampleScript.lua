
--Load in the script
local link = "https://raw.githubusercontent.com/IAteTheLocalLidl/LidlLib/main/MainScript.lua"
loadstring(game:HttpGet(link, true))()

--Get the functions library
local lib = _G.GetLidlLibrary()

--Create a blank UI to use
local ui = lib:CreateGui()

--Please wait a bit until you can proceed forward
repeat task.wait(0.1)
until ui

--Change the title of the UI
--For its arguments, put in the ui and then the name
lib:ChangeNameTitle("LidlLib Example")

--Add a folder (basically a group of buttons)
--For its arguments, put in the name of the category of the folder (really anything)
lib:NewButtonFolder("Local Cheats")

--Lets make another one for no reason at all
lib:NewButtonFolder("Extrasensory Perception")

--ONLY use after you have setted up everything in this ui (all folders, all buttons, etc)
--Ready is best used on synapse as that has a function to protect the ui
--For its arguments, put in the ui
lib:Ready(ui)
