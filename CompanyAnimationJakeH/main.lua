--Jake Holtzhauer
--Animating Images
--this project animates our groups company logo

display.setStatusBar(display.HiddenStatusBar)

local CompanyLogo = display.newImageRect("Images/CompanyLogoJakeH@2x - copy.png", 500, 500 )
local AnimationSound =audio.loadSound( "Sounds/wowc.mp3" )
local AnimationSoundChannel

--global variables
scrollspeed = 3

--creating the company logo
CompanyLogo.x = 0 
CompanyLogo.y = display.contentHeight

--rotating the logo (and transitioning the logo)
transition.to( CompanyLogo, { rotation = CompanyLogo.rotation-360, time=4000, onComplete=spinImage})
transition.to(CompanyLogo, {x= 512, y=384, time=4000})

--Plays the animation sound
AnimationSoundChannel = audio.play(AnimationSound)





