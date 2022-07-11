require("stolencode")
require("Player")
require("Player2")
require("Goal")

function love.load()
    love.window.setMode(800, 600, {resizable = false})
    love.window.setTitle("a 2 player racing game or something")
    Player:load()
    Player2:load()
    Player.score = 0
    Player2.score = 0
    Goal:load()
end

function love.update(dt)
    if love.keyboard.isDown("escape") then 
        love.event.quit()
    end
    Player:update(dt)
    Player2:update(dt)
    Goal:update(dt)
end

function love.draw()
    Player:draw()
    Player2:draw()
    Goal:draw()
    love.graphics.print("player 1 score: "..tostring(Player.score))
    love.graphics.print("player 2 score: "..tostring(Player2.score), 200, 0)
end

function resetthing()
    Player:load()
    Player2:load()
    Goal:load()
end