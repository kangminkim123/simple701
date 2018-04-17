-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- created on kangmin
-- created by April 17
-----------------------------------------------------------------------------------------

local theball = display.newImageRect( "./assets/sprites/soccerball.png", 400, 157)
theball.x = ( display.contentCenterX - 0)
theball.y = (display.contentCenterY - 50)
theball.id = "the ball"

local function onballtouch( event )
    if ( event.phase == "began" ) then
    	print( "Touch event began on: " .. event.target.id)
    elseif ( event.phase == "ended") then
        print( "Touch event ended on:" .. event.target.id)
    end

    return true
end

theball:addEventListener( "touch", onballtouch)