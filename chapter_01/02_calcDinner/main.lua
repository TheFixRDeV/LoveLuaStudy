local backgroundImage
local totalPeople = 1
local priceDinner = 150.58

function love.load()
    love.window.setMode(400, 650)
    backgroundImage = love.graphics.newImage("/background.png")
end

function love.update()
end

function buttonAction1()
    totalPeople = totalPeople + 1
end

local buttons = {
    {x = 200, y = 400, width = 200, height = 55, text = "ADD More People", r = 0, g = 0, b = 255, action = buttonAction1}
}

local buttonPeople = buttons[1]

function drawButton(x, y, width, height, text, r, g, b)
    love.graphics.setColor(r, g, b)
    love.graphics.rectangle("fill", x, y, width, height)
    love.graphics.setColor(255, 255, 255)
    love.graphics.print(text, x + 10, y + 18)
end

function love.mousepressed(x, y, button)
    if button == 1 then
        for _, btn in ipairs(buttons) do
            if x >= btn.x and x <= btn.x + btn.width and
               y >= btn.y and y <= btn.y + btn.height then
                if btn.action then
                    btn.action()
                else
                    print("No action: " .. btn.text)
                end
            end
        end
    end
end

function love.draw()
  
    love.graphics.setColor(255, 255, 255) 
    love.graphics.draw(backgroundImage, 0, 0)
    love.graphics.setFont(love.graphics.newFont(21)) 

    love.graphics.print("Dinner value per Person", 95, 100)
    drawButton(buttonPeople.x, buttonPeople.y, buttonPeople.width, buttonPeople.height, buttonPeople.text, buttonPeople.r, buttonPeople.g, buttonPeople.b)

    local totalToPay = priceDinner / totalPeople
    love.graphics.setColor(0, 255, 0) 
    love.graphics.print("Dinner Price $: " .. priceDinner, 100, 150)
    love.graphics.setColor(255, 255, 255) 
    love.graphics.print("Peoples:" .. totalPeople, 100, 180)
    
    love.graphics.print("Total To Pay $: ", 100, 210)
    love.graphics.setFont(love.graphics.newFont(31)) 
    love.graphics.setColor(0, 255, 0) 
    love.graphics.print(string.format("%.2f", totalToPay), 100, 250)


end
