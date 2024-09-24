function drawCircle(mode,x,y,radius,r,g,b,a)
  love.graphics.setColor(r,g,b,a)
  love.graphics.circle(mode,x,y,radius)
  love.graphics.setColor(255,255,255,255)
end

function drawRectangle(mode,x,y,width,height,r,g,b,a)
  love.graphics.setColor(r,g,b,a)
  love.graphics.rectangle(mode,x,y,width,height)
  love.graphics.setColor(255,255,255,255)
end
