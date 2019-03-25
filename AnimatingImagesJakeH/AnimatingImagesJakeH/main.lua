--Jake Holtzhauer
--2019-02-28
--Animating Images


display.setStatusBar(display.HiddenStatusBar)


local backgroundImage = display.newImageRect("Images/Background.jpg", 2048,1536)
local TampabayImage = display.newImageRect("Images/TampaBay.png", 200, 200)
local JohnnyDukeyImage = display.newImageRect("Images/JohnnyTest.png", 200, 200)
local PeterGriffin = display.newImageRect("Images/PeterGriffin.png", 200, 200)
--global variables
scrollspeed = 3

 JohnnyDukeyImage.x = -1
 JohnnyDukeyImage.y = display.contentHeight/3
 JohnnyDukeyImage.alpha= -0.001
 --function: move image
 --input: this function accepts an event listener
 --output: nothing
 --description: this function adds the scrollspeed to the x value of the image
 local function MoveJohnnyTest(event)
 	--add the scroll speed of x
 	JohnnyDukeyImage.x =JohnnyDukeyImage.x + scrollspeed
 	--changing the transparancy of my image
 	JohnnyDukeyImage.alpha = JohnnyDukeyImage.alpha + 0.01	
 end

 --MoveJohnny will be moved repetedly
 Runtime:addEventListener("enterFrame", MoveJohnnyTest)

TampabayImage.x = 1048
TampabayImage.y = display.contentHeight/2
--local function

local function MoveImage2(event)
	TampabayImage.x = TampabayImage.x - scrollspeed
	TampabayImage.y = TampabayImage.y - scrollspeed
end
Runtime:addEventListener("enterFrame", MoveImage2)

PeterGriffin.x = 0 
PeterGriffin.y = display.contentHeight/-4

transition.to( PeterGriffin, { rotation = PeterGriffin.rotation-360, time=4000, onComplete=spinImage})
transition.to(PeterGriffin, {x= 1024, y=384, time=4000})





 




