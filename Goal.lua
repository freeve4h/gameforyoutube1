Goal = {}

function Goal:load()
    Goal.xpos = 400
    Goal.ypos = 0
    Goal.Size = 40
    Goal.Width = Goal.Size
    Goal.Height = Goal.Size
    Goal.Direction = "right"
    Goal.Speed = 300
end

function Goal:update(dt)
    Goal:checkBounds()
    if Goal.Direction == "right" then 
        Goal.xpos = Goal.xpos + Goal.Speed * dt
    elseif Goal.Direction == "left" then 
        Goal.xpos = Goal.xpos - Goal.Speed * dt
    end
    if checkCollision(Player.xpos, Player.ypos, Player.Width, Player.Height, Goal.xpos, Goal.ypos, Goal.Width, Goal.Height) then 
        resetthing()
        Player.score = Player.score + 1
    end
    if checkCollision(Player2.xpos, Player2.ypos, Player2.Width, Player2.Height, Goal.xpos, Goal.ypos, Goal.Width, Goal.Height) then 
        resetthing()
        Player2.score = Player2.score + 1
    end
    Goal:checkBounds()
end

function Goal:draw()
    love.graphics.setColor(0, 1, 0)
    love.graphics.rectangle("fill", Goal.xpos, Goal.ypos, Goal.Width, Goal.Height)
    love.graphics.setColor(1, 1, 1)
end

function Goal:checkBounds()
    if Goal.xpos < 0 then 
        Goal.xpos = 0
        Goal.Direction = "right"
    elseif Goal.xpos + Goal.Width > 800 then 
        Goal.xpos = 800 - Goal.Width
        Goal.Direction = "left"
    end
end