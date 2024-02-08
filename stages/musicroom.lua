local xx =  600;
local yy =  430;
local xx2 = 800;
local yy2 = 430;
local ofs = 5;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()

	makeLuaSprite('BG1', 'DDLC/musicroom/Music_Room', 65, 85);
        setProperty("BG1.scale.x", 1.5);
        setProperty("BG1.scale.y", 1.5);

	makeLuaSprite('BG2', 'DDLC/musicroom/Music_RoomLight', 65, 85);
        setProperty("BG2.scale.x", 1.5);
        setProperty("BG2.scale.y", 1.5);

	makeLuaSprite('BG3', 'DDLC/musicroom/Music_Room_FG', 65, 85);
	setScrollFactor('BG3', 1.2, 1.2);
        setProperty("BG3.scale.x", 1.5);
        setProperty("BG3.scale.y", 1.5);

	makeAnimatedLuaSprite('BGCAT', 'DDLC/clubroom/BakaBGDoodles', 0, 0);
        addAnimationByPrefix('BGCAT', 'idle', 'Normal Overlay', 48, true);
	objectPlayAnimation('BGCAT', 'idle', true);
	setObjectCamera('BGCAT','camHud')
        doTweenAlpha('BGCAT','BGCAT',0, 0.1,'linear')


	makeLuaSprite('star', 'DDLC/clubroom/YuriSparkleBG', 0, 0);
	setObjectCamera('star','camHud')

	makeLuaSprite('star2', 'DDLC/clubroom/YuriSparkleBG', 1280, 0);
	setObjectCamera('star2','camHud')

	makeLuaSprite('stars', 'DDLC/clubroom/YuriSparkleFG', 0, 0);
	setObjectCamera('stars','camHud')

	makeLuaSprite('stars2', 'DDLC/clubroom/YuriSparkleFG', 1280, 0);
	setObjectCamera('stars2','camHud')

        doTweenAlpha('stars','stars',0, 0.1,'linear')
        doTweenAlpha('stars2','stars2',0, 0.1,'linear')
        doTweenAlpha('star','star',0, 0.1,'linear')
        doTweenAlpha('star2','star2',0, 0.1,'linear')

	makeLuaSprite('rosa', 'DDLC/clubroom/vignette', 0, 0);
	setObjectCamera('rosa','camHud')
        setBlendMode('rosa','add')
        doTweenAlpha('rosa','rosa',0, 0.1,'linear')

	makeLuaSprite('shine', 'DDLC/musicroom/SayoSunshine', 0, 0);
	setObjectCamera('shine','camHud')
	setProperty('shine.visible', false);

	makeLuaSprite('CG1', 'DDLC/musicroom/CG/cg1', 0, 0);
	setObjectCamera('CG1','other')
	setProperty('CG1.visible', false);

	makeLuaSprite('CG2', 'DDLC/musicroom/CG/cg2', 0, 0);
	setObjectCamera('CG2','other')
	setProperty('CG2.visible', false);

	makeLuaSprite('CG3', 'DDLC/musicroom/CG/cg2', -550, -160);
	setObjectCamera('CG3','other')
	setProperty('CG3.visible', false);
        setProperty("CG3.scale.x", 1.5);
        setProperty("CG3.scale.y", 1.5);


	makeLuaSprite('blanco', '', 0, 0);
        makeGraphic('blanco',1280,720,'ffffff')
	setObjectCamera('blanco','other')
        doTweenAlpha('blanco','blanco',0, 0.1,'linear')



	addLuaSprite('BG1', false);
	addLuaSprite('BG2', true);
	addLuaSprite('BG3', true);
	addLuaSprite('BGCAT', true);
	addLuaSprite('star', true);
	addLuaSprite('star2', true);
	addLuaSprite('stars', true);
	addLuaSprite('stars2', true);
	addLuaSprite('rosa', true);
	addLuaSprite('shine', true);
	addLuaSprite('CG1', true);
	addLuaSprite('CG2', true);
	addLuaSprite('CG3', true);
	addLuaSprite('blanco', true);


runTimer('stars',1.5)
runTimer('star',1.5)
end
function onCreatePost()
doTweenColor('Time', 'timeBar', 'ffbde0', 0.1, 'linear');
setProperty('timeBar.y', 687)


   --makeLuaTexts
  makeLuaText('Watermark', 'Port by Thepotra Chart 6K By Felogo', -0, 0);

  
   --addLuaText
   addLuaText('Watermark')


   --Text fonts
   setTextFont('scoreTxt', 'Aller_Rg.ttf')
   setTextFont('healthCounter', 'Aller_Rg.ttf')
   setTextFont('timeTxt', 'Calibri Regular.ttf')
   setTextFont('botplayTxt', 'Aller_Rg.ttf')
   setTextFont('judgementCounter', 'Aller_Rg.ttf')
   setTextFont('Watermark', 'Aller_Rg.ttf');

   
   --Text sizes
   setTextSize('Watermark', 15);


   precacheSound('intro3')
   precacheSound('intro2')
   precacheSound('intro1')
   precacheSound('introGo')
   setProperty('introSoundsSuffix', '-Thepotra')
        if not downscroll then -- if upscroll

        setProperty('timeBar.y', 30)

end
end
function onCountdownTick(counter)
	if counter == 0 then
		playSound('intro3')

	elseif counter == 1 then
		playSound('intro2')
                setProperty('countdownReady.visible', false)
                setProperty('2.visible', true)
                setProperty('1.visible', false)
                setProperty('go.visible', false)
        	makeLuaSprite('2', 'hud/ready', 120, 80);
          	setObjectCamera('2','hud')
	        addLuaSprite('2', true);
		doTweenAlpha('2','2',0, 0.5,'linear')
		setProperty("2.scale.x", 0.5);
	        setProperty("2.scale.y", 0.5);


	elseif counter == 2 then
		playSound('intro1')
                setProperty('countdownSet.visible', false)
                setProperty('2.visible', false)
                setProperty('1.visible', true)
                setProperty('go.visible', false)
        	makeLuaSprite('1', 'hud/set', 120, 80);
          	setObjectCamera('1','hud')
	        addLuaSprite('1', true);
		doTweenAlpha('1','1',0, 0.5,'linear')
		setProperty("1.scale.x", 0.5);
		setProperty("1.scale.y", 0.5);


	elseif counter == 3 then
		playSound('introGo')
                setProperty('countdownGo.visible', false)
                setProperty('2.visible', false)
                setProperty('1.visible', false)
                setProperty('go.visible', true)
        	makeLuaSprite('go', 'hud/go', 120, 80);
          	setObjectCamera('go','hud')
	        addLuaSprite('go', true);
		doTweenAlpha('go','go',0, 1,'linear')
		setProperty("go.scale.x", 0.5);
		setProperty("go.scale.y", 0.5);


    end
end
function onBeatHit()
       if curBeat % 8== 0 then

	doTweenAlpha('shine-1','shine',1, 0.001,'linear')
	doTweenColor('shine-red', 'shine', 'ffa8ef', 0.001, 'linear');
	doTweenAlpha('shine-2','shine',0, 1.25,'linear')
end
       if curBeat % 8== 2 then

	doTweenAlpha('shine-1','shine',1, 0.001,'linear')
	doTweenColor('shine-red', 'shine', 'b997f9', 0.001, 'linear');
	doTweenAlpha('shine-2','shine',0, 1.25,'linear')

end
       if curBeat % 8== 4 then

	doTweenAlpha('shine-1','shine',1, 0.001,'linear')
	doTweenColor('shine-red', 'shine', '8eefff', 0.001, 'linear');
	doTweenAlpha('shine-2','shine',0, 1.25,'linear')

end
       if curBeat % 8== 6 then

	doTweenAlpha('shine-1','shine',1, 0.001,'linear')
	doTweenColor('shine-red', 'shine', '89f572', 0.001, 'linear');
	doTweenAlpha('shine-2','shine',0, 1.25,'linear')

end
end
function onUpdate()


	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else

            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    
end
function onEvent(name,value1,value2)
	if name == 'Thepotra' then 
		
		if value1 == 'stars' then
	        setProperty('defaultCamZoom',1.2)
	        doTweenAlpha('stars-','stars',1, 0.5,'linear')
	        doTweenAlpha('stars2-','stars2',1, 0.5,'linear')
        	doTweenAlpha('star-','star',1, 0.5,'linear')
        	doTweenAlpha('star2-','star2',1, 0.5,'linear')
        	doTweenAlpha('rosa','rosa',1, 0.5,'linear')
		xx = 500
		xx2 = 1000
		yy = 300
		yy2 = 300
                end

		if value1 == 'stars-2' then
	        setProperty('defaultCamZoom',0.8)
	        doTweenAlpha('stars-','stars',0, 1.5,'linear')
	        doTweenAlpha('stars2-','stars2',0, 1.5,'linear')
        	doTweenAlpha('star-','star',0, 1.5,'linear')
        	doTweenAlpha('star2-','star2',0, 1.5,'linear')
        	doTweenAlpha('rosa','rosa',0, 1.5,'linear')
		xx = 600
		xx2 = 800
		yy = 430
		yy2 = 430
                end

		if value1 == 'cat' then
   	 	doTweenAlpha('BGCAT','BGCAT',1, 2.5,'linear')
	        setProperty('defaultCamZoom',1.2)
		xx = 500
		xx2 = 1000
		yy = 450
		yy2 = 350

                end

		if value1 == 'cat-2' then
   	 	doTweenAlpha('BGCAT','BGCAT',0, 2.5,'linear')
	        setProperty('defaultCamZoom',0.8)
		xx = 600
		xx2 = 800
		yy = 430
		yy2 = 430

                end

		if value1 == 'shine' then
		setProperty('shine.visible', true);
	        setProperty('defaultCamZoom',1.1)
		xx = 500
		xx2 = 1000
		yy = 350
		yy2 = 300

                end

		if value1 == 'shine-2' then
		setProperty('shine.visible', false);


		end

		if value1 == 'shine-3' then
		setProperty('shine.visible', false);
	        setProperty('defaultCamZoom',0.8)
		xx = 600
		xx2 = 800
		yy = 430
		yy2 = 430

		end

		if value1 == 'hud' then
                doTweenAlpha('fadeInn', 'camHUD', 0, 1, 'linear')

		end

		if value1 == 'blanco' then
	        doTweenAlpha('blanco','blanco', 1, 1.5,'linear')


		end

		if value1 == 'blanco-no' then
	        doTweenAlpha('blanco','blanco', 0, 1.5,'linear')



		end

		if value1 == 'CG1' then
		setProperty('CG1.visible', true);


		end

		if value1 == 'CG3' then
		setProperty('CG3.visible', true);
		doTweenX('CG3','CG3', -650, 20,'linear')

		end

		if value1 == 'CG2' then
		setProperty('CG2.visible', true);
		setProperty('CG3.visible', false);
		doTweenX('CG2','CG2', -300, 20,'linear')

		end


	end
end
function onTimerCompleted(t,l,ll)
       if t == 'stars' then
		setProperty('stars.x', 0)
		doTweenX('stars','stars', -1280, 80.0,'linear')
		setProperty('stars2.x', 1280)
		doTweenX('stars2','stars2', 0, 80.0,'linear')
                runTimer('stars',80.0)

        end
       if t == 'star' then
		setProperty('star.x', 0)
		doTweenX('star','star', -1280, 150.0,'linear')
		setProperty('star2.x', 1280)
		doTweenX('star2','star2', 0, 150.0,'linear')
                runTimer('star',150.0)

        end

end
