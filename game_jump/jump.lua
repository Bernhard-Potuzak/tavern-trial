local window = nil
local selectedEntry = nil
local consoleEvent = nil
local jumpButton
local marginRight = 5

--initialize the module
function init()
    connect(g_game, {
        onGameStart = onGameStart,
        onGameEnd = destroy
    })
    --display the window
    window = g_ui.displayUI('jump')
    window:setVisible(false)
    --key bindings for convenience
    g_keyboard.bindKeyDown('Ctrl+A', toggleWindow)
    g_keyboard.bindKeyDown('Escape', hideWindowzz)
    --add the button to the topmenu (found this solution the the forum from otland.net)
	jumpButton = modules.client_topmenu.addLeftGameButton('taskButton', tr('Tasks'), '/modules/game_jump/images/taskIcon', toggleWindow)
end

function terminate()
    disconnect(g_game, {
        onGameEnd = destroy
    })
    jumpButton:destroy()
    destroy()
end

function onGameStart()
    if (window) then
        window:destroy()
        window = nil
    end

    window = g_ui.displayUI('jump')
    window:setVisible(false)
end

function destroy()
    if (window) then
        window:destroy()
        window = nil
    end
end

--the jumping function. I changed here every time the button is clicked it's margin to a random number between 1 and 100.
function jump()
    jumpbutton = window:getChildById("startButton")
    --jumpbutton:setText('Test')
    local x = math.random(100)
    local y = math.random(100)
    jumpbutton:setMarginRight(x)
    jumpbutton:setMarginBottom(y)
    --window.info:setText('Test')
end

function toggleWindow()
    if (not g_game.isOnline()) then
        return
    end

    if (window:isVisible()) then
        window:setVisible(false)
    else
        window:setVisible(true)
    end
end

function hideWindowzz()
    if (not g_game.isOnline()) then
        return
    end

    if (window:isVisible()) then
        window:setVisible(false)
    end
end