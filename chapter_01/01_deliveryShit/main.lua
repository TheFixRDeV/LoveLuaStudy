local utils = require("utils")

local  move = true
local finish = false

function love.load()
  x = 1
  y = 100
end

function love.update(dt)
  if love.keyboard.isDown("d") and move then
    x = x + 250 * dt
  end
  if x >= 600 then 
      move = false
      finish = true
  end
end

function love.draw()
    drawRectangle("fill", x, y, 100, 50, 0, 255, 0, 255)
    drawCircle("fill", x + 15, y + 50, 15, 0, 255, 0, 255)  
    drawCircle("fill", x + 85, y + 50, 15, 0, 255, 0, 255)  
    drawCircle("fill", x + 50, y - 10, 20, 112, 44, 0, 128) 
    drawCircle("fill", x + 30, y - 20, 15, 112, 44, 0, 128) 
    drawCircle("fill", x + 70, y - 20, 15, 112, 44, 0, 128) 
    drawCircle("fill", x + 20, y - 10, 17, 112, 44, 0, 128) 
    drawCircle("fill", x + 80, y - 10, 17, 112, 44, 0, 128) 
    
    drawRectangle("fill", 700, 70, 10, 100, 255, 0, 0, 255)
    drawRectangle("fill", 700, 70, 50, 50, 255, 0, 0, 255)
    love.graphics.print("END" ,710, 80)
    love.graphics.print("'D' To make this shit move" ,300,0)
    
      if finish then
        love.graphics.setColor(255,0,0,255)
        love.graphics.print("SHIT DELIVERY", x+5, y+20)
      end
end


