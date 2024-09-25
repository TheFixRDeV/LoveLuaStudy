local backgroundImage
local power = false
local MagicPoop = {{x = 0 ,y = 0, alpha = 0}}


function love.load()
  love.window.setMode(500,350)

  backgroundImage = love.graphics.newImage("poop.png")
end


function love.update(dt) -- randon shit works
  if power then
    for i, v in ipairs(MagicPoop) do
      if v.x < 500 then
        v.x = v.x + 700 * dt
        elseif v.x < 1000 then
          v.x = -v.x + 700 * dt
      end
    end
  end
end



function createRect()
  for i, v in ipairs(MagicPoop) do
    if #MagicPoop < 10 then
      table.insert(MagicPoop, {x = #MagicPoop * 100,y = #MagicPoop * 22, alpha = 255})
    end
  end
end

function love.keypressed(key)
    if key == "space" then
       power = true
       createRect()
    end
end

function love.keyreleased(key)
  if key == "space" then
    MagicPoop = {{x = 0 ,y = 0,alpha = 0}}
  end
end

function love.draw()

    love.graphics.setColor(0, 0, 0, 0) 
      for i, v in ipairs(MagicPoop) do
        love.graphics.setColor(255, 255, 255,v.alpha) 
        love.graphics.draw(backgroundImage,v.x,v.y)
      end
    love.graphics.setColor(0, 0, 0, 0) 

end
