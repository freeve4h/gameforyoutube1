Player = {}

function Player:load()
    Player.xpos = 400
    Player.ypos = 600
    Player.Width = 32
    Player.Height = 32
    Player.Speed = 400
end

function Player:update(dt)
    Player:checkBounds()
    if love.keyboard.isDown("up") then 
        Player.ypos = Player.ypos - Player.Speed * dt
    end
    if love.keyboard.isDown("down") then 
        Player.ypos = Player.ypos + Player.Speed * dt
    end 
    if love.keyboard.isDown("right") then 
        Player.xpos = Player.xpos + Player.Speed * dt
    end
    if love.keyboard.isDown("left") then 
        Player.xpos = Player.xpos - Player.Speed * dt
    end
    Player:checkBounds()
end

function Player:draw()
    love.graphics.setColor(0, 0, 1)
    love.graphics.rectangle("fill", Player.xpos, Player.ypos, Player.Width, Player.Height)
    love.graphics.setColor(1, 1, 1)
end

function Player:checkBounds()
    if Player.xpos < 0 then 
        Player.xpos = 0
    end 
    if Player.xpos + Player.Width > love.graphics.getWidth() then 
        Player.xpos = love.graphics.getWidth() - Player.Width
    end
    if Player.ypos < 0 then 
        Player.ypos = 0
    end 
    if Player.ypos + Player.Height > love.graphics.getHeight() then 
        Player.ypos = love.graphics.getHeight() - Player.Height
    end
end