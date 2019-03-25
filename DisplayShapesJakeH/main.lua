-- title: displaysShapes
-- Jake Holtzhauer 
-- Course ICS2O/3C
-- This program displays 3 shapes on the Ipad of different colours and borders.
--Underneath each shape is the name of it

--hiding the status bar
display.setStatusBar(display.HiddenStatusBar)

--setting backround colour
display.setDefault("background", 255/255, 51/255, 51/255)

--creating my triangle and local variables
local myTriangle
local halfH = display.contentHeight * 0.5 
local halfW = display.contentWidth * 0.5
local Vertices = { 0, 600, 0, 400, 300, 600}
local myTriangle = display.newPolygon(halfW, halfH, Vertices )
myTriangle.fill = 40/255, 50/255, 239/255
myTriangle.strokeWidth = 15

--anchoring my triangle
myTriangle.anchorY = 0
myTriangle.anchorX = 0
myTriangle.y = 20
myTriangle.x = 20


--colouring my triangle
myTriangle.strokeWidth = 10
myTriangle:setFillColor(75/255, 159,255, 255/255)
myTriangle:setStrokeColor(100/255, 100/255, 100/255)




--creating my second shape 
local myPentagon
local halfH = display.contentHeight * 0.5
local halfW = display.contentWidth * 0.5
local Vertices = {0,300, 100,200, 200,300, 150,400, 50,400}
local myPentagon = display.newPolygon(halfW, halfH, Vertices)


--anchoring my pentagon
myPentagon.anchorY = 0
myPentagon.anchorX = 500
myPentagon.x = 550
myPentagon.y = 50

myPentagon.strokeWidth = 10
myPentagon:setFillColor(0.7, 0.1, 0.3)
myPentagon:setStrokeColor(0, 1, 0)


--creating my quadrilateral
local myQuadrilateral
local halfW = display.contentWidth * 0.5
local halfH = display.contentHeight * 0.5
local myQuadrilateral = display.newRect (0,0, 150,150)
myQuadrilateral.anchorY =  0
myQuadrilateral.anchorX = 800
myQuadrilateral.x = 775
myQuadrilateral.y = 50
myQuadrilateral.strokeWidth = 15
myQuadrilateral:setStrokeColor(169/255, 100/255, 255/255)

--creating the text for my shapes
local triText
triText = display.newText("Triangle", 0,0, native.systemFont, 16)
triText:setFillColor(0, 0, 0)
triText.anchorX = 0
triText.x = 100
triText.y = 300

local penText
penText = display.newText("Pentagon", 0,0, native.systemFont, 16)
penText:setFillColor( 0, 0, 0)
penText.anchorX = 0
penText.x = 415
penText.y = 300

local squareText
squareText = display.newText("Square", 0,0, native.systemFont, 16)
squareText:setFillColor( 0, 0, 0)
squareText.anchorX = 0
squareText.x = 675
squareText.y = 300