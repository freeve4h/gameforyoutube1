require("stolencode")
require("Player")
require("Player2")

function love.load()
    love.window.setMode(800, 600, {resizable = false})
    love.window.setTitle("a 2 player racing game or something")
    Player:load()
    Player2:load()
end

function love.update(dt)
    if love.keyboard.isDown("escape") then 
        love.event.quit()
    end
    Player:update(dt)
    Player2:update(dt)
end

function love.draw()
    Player:draw()
    Player2:draw()
end