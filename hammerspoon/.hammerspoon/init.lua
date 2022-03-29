-- Default applications
local browser = "qutebrowser"
local editor = "Visual Studio Code"
local communication = "Slack"
local email = "Microsoft Outlook"
local messages = "Messages"
local music = "Spotify"
local terminal = "Alacritty"
local devBrowser = "Google Chrome"

local hyper = {"cmd", "alt", "ctrl", "shift"}

-- Grid
hs.grid.setGrid("4x4")
hs.grid.setMargins({0, 0})
hs.window.animationDuration = 0.1
hs.hotkey.bind(hyper, 'g', function() hs.grid.show() end)

-- Application switching
hs.hotkey.bind(hyper, '1', function() hs.application.launchOrFocus(browser) end)
hs.hotkey.bind(hyper, '2', function() hs.application.launchOrFocus(communication) end)
hs.hotkey.bind(hyper, '3', function() hs.application.launchOrFocus(email) end)
hs.hotkey.bind(hyper, '4', function() hs.application.launchOrFocus(messages) end)
hs.hotkey.bind(hyper, '5', function() hs.application.launchOrFocus(music) end)

hs.hotkey.bind(hyper, 'q', function() hs.application.launchOrFocus(editor) end)
hs.hotkey.bind(hyper, 'w', function() hs.application.launchOrFocus(terminal) end)
hs.hotkey.bind(hyper, 'e', function() hs.application.launchOrFocus(devBrowser) end)

hs.hotkey.bind(hyper, 'x', function() hs.application.frontmostApplication():hide() end)

-- Window focus
hs.hotkey.bind(hyper, "k", function() hs.window.focusedWindow():focusWindowNorth() end)
hs.hotkey.bind(hyper, "l", function() hs.window.focusedWindow():focusWindowEast() end)
hs.hotkey.bind(hyper, "j", function() hs.window.focusedWindow():focusWindowSouth() end)
hs.hotkey.bind(hyper, "h", function() hs.window.focusedWindow():focusWindowWest() end)

-- Window management
local windowPositions = {}
windowPositions.left = {x = 0, y = 0, w = 2, h = 4}
windowPositions.right = {x = 2, y = 0, w = 2, h = 4}

function positionWindow(position)
	window = hs.window.focusedWindow()
	local screen = window:screen()
	hs.grid.set(window, position, screen)
end

hs.hotkey.bind(hyper, 'a', function() positionWindow(windowPositions.left) end)

hs.hotkey.bind(hyper, 's', function() positionWindow(windowPositions.right) end)

hs.hotkey.bind(hyper, 'd', function()
	window = hs.window.focusedWindow()
	window:moveToScreen(window:screen():next())
end)

hs.hotkey.bind(hyper, 'space', function()
	window = hs.window.focusedWindow()
	window:maximize()
end)

-- Other
hs.hotkey.bind(hyper, 'return', hs.reload)
