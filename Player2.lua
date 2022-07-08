Player2 = {}

function Player2:load()
    Player2.xpos = 400
    Player2.ypos = 300
    Player2.Width = 32
    Player2.Height = 32
    Player2.Speed = 400
end

function Player2:update(dt)
    if love.keyboard.isDown("w") then 
        Player2.ypos = Player2.ypos - Player2.Speed * dt 
    end
    if love.keyboard.isDown("s") then 
        Player2.ypos = Player2.ypos + Player2.Speed * dt
    end 
    if love.keyboard.isDown("d") then 
        Player2.xpos = Player2.xpos + Player2.Speed * dt 
    end
    if love.keyboard.isDown("a") then 
        Player2.xpos = Player2.xpos - Player2.Speed * dt
    end
end

function Player2:draw()
    love.graphics.setColor(1, 0, 0)
    love.graphics.rectangle("fill", Player2.xpos, Player2.ypos, Player2.Width, Player2.Height)
    love.graphics.setColor(1, 1, 1)
end