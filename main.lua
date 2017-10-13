-- Title: Buttons in Lua
-- Name: YourName
-- Course: ICS2O/3C
-- This program.....

--***INSERT COMMENT & CODE TO SET THE BACKGROUND COLOUR

--hide status bar
--*** INSERT COMMENT & CODE TO HIDE THE STATUS BAR

-- create blue button, set its position and make it visible
local blueButton = display.newImageRect("Images/Fast Button Inactive@2x.png",198, 96)
	blueButton.x = display.contentWidth/2
	blueButton.y = display.contentHeight/2
	blueButton.isVisible = true

-- create red button, set its position and make it invisible
local redButton = display.newImageRect("Images/Fast Button Active@2x.png",198, 96)
--*** INSERT CODE TO SET X POSITION OF RED BUTTON TO HALF THE CONTENT WIDTH
--*** INSERT CODE TO SET Y POSITION OF RED BUTTON TO HALF THE CONTENT HEIGHT
--*** INSERT CODE TO MAKE RED BUTTON INVISIBLE

-- create text object, set its position and make it invisible
local textObject = display.newText ("Clicked!", 0, 0, nil, 50)
--*** INSERT CODE TO SET X POSITION OF TEXT OBJECT TO HALF THE CONTENT WIDTH
--*** INSERT CODE TO SET y POSITION OF TEXT OBJECT TO A THIRD OF THE CONTENT HEIGHT
--*** INSERT CODE TO SET COLOUR OF TEXT
--*** INSERT CODE TO MAKE TEXT OJBECT INVISIBLE

-- Function: BlueButtonListener
-- Input: touch listener
-- Output: none
-- Description: when blue button is clicked, it will make the text appear with the red button,
-- and make the blue button disappear
local function BlueButtonListener(touch)
	if (touch.phase == "began") then
		--*** INSERT CODE TO MAKE BLUE BUTTON INVISIBLE, RED BUTTON VISIBLE AND TEXT OBJECT VISIBLE
		
	end

	if (touch.phase == "ended") then
		--*** INSERT CODE TO MAKE BLUE BUTTON VISIBLE, RED BUTTON INVISIBLE AND TEXT OJBECT INVISIBLE
		
	end
end

-- Function: RedButtonListener
-- Input: touch listener
-- Output: none
-- Description: when red button is released, it will make the text disappear and red button
-- disappear, and the blue button reappear
local function RedButtonListener(touch)

	if touch.phase == "ended" then
		--*** INSERT CODE TO MAKE BLUE BUTTON VISIBLE, RED BUTTON INVISIBLE AND TEXT OJBECT INVISIBLE
		
	end
end

-- add the respective listeners to each object
blueButton:addEventListener("touch", BlueButtonListener)
redButton:addEventListener("touch", RedButtonListener)
