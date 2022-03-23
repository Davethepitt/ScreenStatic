-- Title:   Screen Static V1.0
-- Author:  Dave Pitt
-- Desc:    Displays Screen Static
-- Script:  lua
-- Date:    22nd March 2022

-- Set Global Variables
PIXEL = 0
RND = math.random

-- Function is called 60 times per second
function TIC()

  -- Loop through each pixel on the screen
	while PIXEL < 32640 do
		poke4 (PIXEL,RND(15)) -- Sets pixel to random colour. 
		PIXEL = PIXEL + 1
	end

-- Now the loop is complete we can reset PIXEL
-- to 0. This causes it to loop again.
PIXEL = 0
end

-- Function is called one per scan line
function SCN()
-- 16376 is decimal value for memory address
-- where the border colour is stored.
-- Once per scan line this memory address
-- is updated with a random number.
-- Use 0x03FF8 for hex value.
		poke (16376,RND(16))
end
