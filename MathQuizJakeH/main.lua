
-- Name: Jake Holtzhauer
-- Course: ICS2O/3C
-- This program...


--getting rid of the status bar
display.setStatusBar(display.HiddenStatusBar)

--setting the background
display.setDefault("background", 158/255, 100/255, 219/255)

-------------------------------------------------------------------
--local variables
-------------------------------------------------------------------
--creating local variables
local questionObject
local correctObject

local numericField 

local randomNumber1
local randomNumber2

local userAnswer
local correctAnswer

local wrongObject

-- variables for the timer
local totalSeconds = 5
local secondsLeft = 5

local clockText
local countDownTimer

local lives = 3
local heart1 
local heart2
local heart3


-------------------------------------------------------------------
--local functions
-------------------------------------------------------------------


local function UpdateTime()
--decrement the number of seconds
	secondsLeft = secondsLeft - 1
--display the number of seconds in the clock object

	clockText.text = secondsLeft .. ""

	if (secondsLeft == 0) then
	--reset the number of seconds left
		secondsLeft = totalSeconds
		lives = lives - 1

--
		if (lives == 2) then
			heart2.isVisible = false
		elseif (lives == 1) then
			heart1.isVisible = false
		end

		AskQuestion()

	end
end


local function StartTimer()

	countDownTimer = timer.performWithDelay(1000, UpdateTime, 0) 
end



------------------------------------------------------------------
--local functions
------------------------------------------------------------------


local function AskQuestion()
	--generate a random number between 1 and 4
	-- make sure to declare you variable
	randomOperator = math.random(1,4)


	--generate 2 random numbers
	randomNumber1 = math.random(0, 10)
	randomNumber2 = math.random(0, 10)

	--if the random operator is 1, then do addition
	if (randomOperator == 1) then

		--calculate the correct answer
		correctAnswer = randomNumber1 + randomNumber2

		--creae the question in the text object
		questionObject.text = randomNumber1 .. " + " .. randomNumber2 .. " = "

	--otherwise, if the random operator is 2, do subtraction
	elseif (randomOperator == 2) then 

		correctAnswer = randomNumber1 - randomNumber2

		questionObject.text = randomNumber1 .. " - " .. randomNumber2 .. " = " 

	elseif (randomOperator == 3) then

	correctAnswer = randomNumber1 * randomNumber2

	questionObject.text = randomNumber1 .. " * " .. randomNumber2 .. " = "
 
	elseif (randomOperator == 4) then 

		correctAnswer = randomNumber1 / randomNumber2

		questionObject.text = randomNumber1 .. " / " .. randomNumber2 .. " = "
		print=math.round (CorrectAnswer)



	end
end


local function HideCorrect()
	correctObject.isVisible = false
	AskQuestion()
end


local function HideWrong()
	wrongObject.isVisible = false
	AskQuestion()
end 


local function NumericFieldListener( event )

	--useer begins editing "numericField"
	if ( event.phase == "began") then 
		
		--clear text field 
		event.target.text = ""
		--when the answer is submitted (enter key is pressed) set user input to users answer
	elseif (event.phase == "submitted") then

		userAnswer = tonumber(event.target.text)

		-- if the users answer and the correct answer are the same
		if (userAnswer == correctAnswer) then
			correctObject.isVisible = true 
			timer.performWithDelay(2000, HideCorrect)
		else
			wrongObject.isVisible = true
			timer.performWithDelay(2000, HideWrong)		
		end
	end
end






	

------------------------------------------------------------
--object creation
------------------------------------------------------------

--displays a question and sets the colour
questionObject = display.newText("", display.contentWidth/3, display.contentHeight/2, nil, 50)
questionObject:setTextColor(255/25, 169/255, 50/255)

--creating the correcttext object and make it invisible
correctObject = display.newText( "Correct!", display.contentWidth/2, display.contentHeight*2/3, nil, 50 )
correctObject:setTextColor(15/255, 170/255, 150/255)
correctObject.isVisible = false


wrongObject = display.newText( "Incorrect!", display.contentWidth/2, display.contentHeight*2/3, nil, 50 )
wrongObject:setTextColor(15/255, 170/255, 150/255)
wrongObject.isVisible = false



--create numeric field
numericField = native.newTextField( display.contentWidth/2, display.contentHeight/2, 150, 80)
numericField.inputType = "number"
	
--add the event listener for the numeric field 
numericField:addEventListener( "userInput", NumericFieldListener )


heart1 = display.newImageRect("Images/healthheart.png", 100, 100)
heart1.x = display.contentWidth * 7 / 8
heart1.y = display.contentHeight *  1 / 7 


heart2 = display.newImageRect("Images/healthheart.png", 100, 100)
heart2.x = display.contentWidth * 6 / 8
heart2.y = display.contentHeight * 1 / 7


heart3 = display.newImageRect("Images/healthheart.png", 100, 100)
heart3.x = display.contentWidth * 5 / 8 
heart3.y = display.contentHeight * 1 / 7


-----------------------------------------------------------
--function calls
-----------------------------------------------------------
--call the function to ask the question
AskQuestion()















































