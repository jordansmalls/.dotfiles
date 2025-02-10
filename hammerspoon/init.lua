hs.window.animationDuration = 0  -- Completely disables animations

-- Function to launch an app and force fullscreen
function openFullscreen(appName)
    hs.application.launchOrFocus(appName)
    hs.timer.doAfter(0.3, function()  -- Small delay to allow app to open
        local app = hs.application.get(appName)
        if app then
            local win = app:mainWindow()
            if win then win:setFullScreen(true) end
        end
    end)
end

-- Keybindings for instant fullscreen app switching
hs.hotkey.bind({"cmd", "shift"}, "1", function() openFullscreen("Ghostty") end)
hs.hotkey.bind({"cmd", "shift"}, "2", function() openFullscreen("Visual Studio Code") end)
hs.hotkey.bind({"cmd", "shift"}, "3", function() openFullscreen("Zen Browser") end)

hs.alert.show("Hammerspoon Loaded 🚀")  -- Confirm Hammerspoon reload

